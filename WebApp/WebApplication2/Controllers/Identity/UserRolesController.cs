using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebApplication2.Data;
using WebApplication2.DTOs;
using WebApplication2.Models;

namespace WebApplication2.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserRolesController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public UserRolesController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/UserRoles
        [HttpGet]
        public async Task<ActionResult<IEnumerable<UserRoleDTO>>> GetUserRoles()
        {
            var userRoleList = await _context.UserRoles.ToListAsync();
            return userRoleList.Select(userRole => UserRoleDTO.ToDTO(userRole)).ToList();
        }

        // GET: api/UserRoles/5
        [HttpGet("{id}")]
        public async Task<ActionResult<UserRoleDTO>> GetUserRole(int id)
        {
            var userRole = await _context.UserRoles.FindAsync(id);

            if (userRole == null)
            {
                return NotFound();
            }

            var userRoleDTO = UserRoleDTO.ToDTO(userRole);
            return userRoleDTO;
        }

        // PUT: api/UserRoles/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutUserRole(int id, UserRoleDTO userRoleDTO)
        {
            var userRole = UserRoleDTO.ToModel(userRoleDTO, _context);

            if (id != userRole.Id)
            {
                return BadRequest();
            }

            _context.Entry(userRole).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!UserRoleExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/UserRoles
        [HttpPost]
        public async Task<ActionResult<UserRoleDTO>> PostUserRole(UserRoleDTO userRoleDTO)
        {
            var userRole = UserRoleDTO.ToModel(userRoleDTO, _context);

            _context.UserRoles.Add(userRole);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetUserRole", new { id = userRole.Id }, userRoleDTO);
        }

        // DELETE: api/UserRoles/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<UserRoleDTO>> DeleteUserRole(int id)
        {
            var userRole = await _context.UserRoles.FindAsync(id);
            if (userRole == null)
            {
                return NotFound();
            }

            _context.UserRoles.Remove(userRole);
            await _context.SaveChangesAsync();

            var userRoleDTO = UserRoleDTO.ToDTO(userRole);
            return userRoleDTO;
        }

        private bool UserRoleExists(int id)
        {
            return _context.UserRoles.Any(e => e.Id == id);
        }
    }
}
