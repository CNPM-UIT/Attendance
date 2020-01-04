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
using WebApplication2.DTOs;
using WebApplication2.Models;

namespace WebApplication2.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthController : ControllerBase
    {
        //private SignInManager<User> _signManager;
        private UserManager<User> _userManager;

        public AuthController(UserManager<User> userManager/*, SignInManager<User> signManager*/)
        {
            _userManager = userManager;
            //_signManager = signManager;
        }

        // POST:
        [HttpPost("Login")]
        public async Task<IActionResult> Login([FromBody] UserDTO userDTO)
        {
            var user = _userManager.FindByNameAsync(userDTO.UserName).Result;
            if (user == null)
                return Unauthorized();

            var result = _userManager.CheckPasswordAsync(user, userDTO.PasswordHash).Result;
            if (!result)
                return Unauthorized();

            var claims = new[]
            {
                new Claim(JwtRegisteredClaimNames.Sub, userDTO.UserName),
                new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString())
            };
            var signingKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(Startup.Configuration["SecurityKey"]));

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
    }
}