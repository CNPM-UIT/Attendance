using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Security.Principal;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using WebApplication2.Data;
using WebApplication2.DTOs;
using WebApplication2.Models;

namespace WebApplication2.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        private UserManager<User> _userManager;
        private RoleManager<Role> _roleManager;

        public AuthController(ApplicationDbContext context, UserManager<User> userManager, RoleManager<Role> roleManager)
        {
            _userManager = userManager;
            _roleManager = roleManager;
        }

        // POST:
        [HttpPost("Register")]
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

        // POST:
        [HttpPost("CreateRole")]
        public async Task<IActionResult> CreateRole(RoleDTO roleDTO)
        {
            bool exist = await _roleManager.RoleExistsAsync(roleDTO.Name);
            if (exist)
                return Conflict();

            await _roleManager.CreateAsync(RoleDTO.ToModel(roleDTO, _context));
            return Ok();
        }

        // POST:
        [HttpPost("AssignUserRole/{userName}/{roleName}")]
        public async Task<IActionResult> AssignUserRole(string userName, string roleName)
        {
            var user = await _userManager.FindByNameAsync(userName);
            if (user == null)
                return NotFound();

            var role = await _roleManager.FindByNameAsync(roleName);
            if (role == null)
                return NotFound();

            var exist = await _userManager.IsInRoleAsync(user, role.Name);
            if (exist)
                return Conflict();

            await _userManager.AddToRoleAsync(user, role.Name);
            return Ok();    
        }
    }
}