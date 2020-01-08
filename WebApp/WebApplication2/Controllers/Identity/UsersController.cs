using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebApplication2.DTOs;
using WebApplication2.Data;
using AutoMapper;
using Microsoft.AspNetCore.Identity;
using WebApplication2.Models;
using System.Security.Claims;
using System.IdentityModel.Tokens.Jwt;
using Microsoft.IdentityModel.Tokens;
using System.Text;
using Microsoft.Extensions.Configuration;
using IdentityServer3.Core.Services;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.AspNetCore.Authorization;

namespace WebApplication2.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        private UserManager<User> _userManager;

        public UsersController(ApplicationDbContext context, UserManager<User> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        // GET: api/Users
        [HttpGet]
        [Authorize(Roles = "Administrators")]
        public async Task<ActionResult<IEnumerable<UserDTO>>> GetUsers()
        {
            var userList = await _context.Users.ToListAsync();
            return userList.Select(user => UserDTO.ToDTO(user)).ToList();
        }

        // GET: api/Users/5
        [HttpGet("{id}")]
        [Authorize(Roles = "Administrators")]
        public async Task<ActionResult<UserDTO>> GetUser(string id)
        {
            var user = await _context.Users.FindAsync(id);

            if (user == null)
            {
                return NotFound();
            }

            var userDTO = UserDTO.ToDTO(user);
            return userDTO;
        }

        //// PUT: api/Users/5
        //[HttpPut("{id}")]
        //public async Task<IActionResult> PutUser(string id, UserDTO userDTO)
        //{
        //    var user = UserDTO.ToModel(userDTO, _context);

        //    if (id != user.Id)
        //    {
        //        return BadRequest();
        //    }

        //    _context.Entry(user).State = EntityState.Modified;

        //    try
        //    {
        //        await _context.SaveChangesAsync();
        //    }
        //    catch (DbUpdateConcurrencyException)
        //    {
        //        if (!UserDTOExists(id))
        //        {
        //            return NotFound();
        //        }
        //        else
        //        {
        //            throw;
        //        }
        //    }

        //    return NoContent();
        //}

        //// POST: api/Users
        //[HttpPost]
        //public async Task<ActionResult<UserDTO>> PostUser(UserDTO userDTO)
        //{
        //    var passwordHasher = new PasswordHasher<User>();
        //    var user = new User()
        //    {
        //        Id = userDTO.Id,
        //        Email = userDTO.Email,
        //        UserName = userDTO.UserName,
        //        SecurityStamp = Guid.NewGuid().ToString()
        //    };
        //    user.PasswordHash = passwordHasher.HashPassword(user, userDTO.PasswordHash);

        //    _context.Users.Add(user);
        //    await _context.SaveChangesAsync();

        //    return CreatedAtAction("GetUser", new { id = user.Id }, userDTO);
        //}

        // DELETE: api/Users/5
        [HttpDelete("{id}")]
        [Authorize(Roles = "Administrators")]
        public async Task<ActionResult<UserDTO>> DeleteUser(string id)
        {
            var user = await _context.Users.FindAsync(id);
            if (user == null)
            {
                return NotFound();
            }

            _context.Users.Remove(user);
            await _context.SaveChangesAsync();

            var userDTO = UserDTO.ToDTO(user);
            return userDTO;
        }

        private bool UserDTOExists(string id)
        {
            return _context.Users.Any(e => e.Id == id);
        }

        // POST:
        [HttpPost("Register")]
        [AllowAnonymous]
        public async Task<IActionResult> Register(UserDTO userDTO)
        {
            var user = await _userManager.FindByNameAsync(userDTO.UserName);
            if (user != null)
                return Conflict();

            await _userManager.CreateAsync(UserDTO.ToModel(userDTO, _context), userDTO.PasswordHash);
            return Ok();
        }

        // POST:
        [HttpPost("Login")]
        [AllowAnonymous]
        public async Task<IActionResult> Login(UserDTO userDTO)
        {
            var user = await _userManager.FindByNameAsync(userDTO.UserName);
            if (user == null)
                return NotFound();

            var result = await _userManager.CheckPasswordAsync(user, userDTO.PasswordHash);
            if (!result)
                return Unauthorized();

            var claims = new[]
            {
                new Claim(JwtRegisteredClaimNames.Sub, userDTO.UserName),
                new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString())
            };
            var signingKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(Startup.Configuration["AppSecurityKey"]));

            var token = new JwtSecurityToken(
                issuer: "http://abc.com",
                audience: "http://abc.com",
                expires: DateTime.UtcNow.AddDays(1),
                claims: claims,
                signingCredentials: new SigningCredentials(signingKey, SecurityAlgorithms.HmacSha256)
                );

            return Ok(new
            {
                token = new JwtSecurityTokenHandler().WriteToken(token),
                expiration = token.ValidTo
            });
        }

        // GET:
        [HttpGet("GetUserByUserName{userName}")]
        [Authorize(Roles = "Administrators")]
        public async Task<ActionResult<UserDTO>> GetUserByUserName(string userName)
        {
            var user = await _userManager.FindByNameAsync(userName);
            if (user == null)
                return NotFound();

            return UserDTO.ToDTO(user);
        }
    }
}