using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebApplication2.Data;
using WebApplication2.DTOs;
using WebApplication2.Models;

namespace WebApplication2.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RolesController : ControllerBase
    {
        private readonly ApplicationDbContext _context;
        private RoleManager<Role> _roleManager;

        public RolesController(ApplicationDbContext context, RoleManager<Role> roleManager)
        {
            _context = context;
            _roleManager = roleManager;
        }

        // GET: api/Roles
        [HttpGet]
        public async Task<ActionResult<IEnumerable<RoleDTO>>> GetRoles()
        {
            var roleList = await _roleManager.Roles.ToListAsync();
            var roleDTOList = roleList.Select(role => RoleDTO.ToDTO(role)).ToList();
            return roleDTOList;
        }

        // GET: api/Roles/5
        [HttpGet("{id}")]
        public async Task<ActionResult<RoleDTO>> GetRole(string id)
        {
            var role = await _roleManager.Roles.FirstOrDefaultAsync(x => x.Id == id);
            
            if (role == null)
            {
                return NotFound();
            }

            var roleDTO = RoleDTO.ToDTO(role);
            return roleDTO;
        }

        // PUT: api/Roles/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutRole(string id, RoleDTO roleDTO)
        {
            var role = RoleDTO.ToModel(roleDTO, _context);

            if (id != role.Id)
            {
                return BadRequest();
            }

            _context.Entry(role).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!RoleExists(id))
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

        // POST: api/Roles
        [HttpPost]
        public async Task<ActionResult<RoleDTO>> PostRole(RoleDTO roleDTO)
        {
            var role = RoleDTO.ToModel(roleDTO, _context);

            await _roleManager.CreateAsync(role);
            //_context.Roles.Add(role);
            //await _context.SaveChangesAsync();

            return CreatedAtAction("GetRole", new { id = role.Id }, roleDTO);
        }

        // DELETE: api/Roles/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<RoleDTO>> DeleteRole(string id)
        {
            var role = await _context.Roles.FindAsync(id);
            if (role == null)
            {
                return NotFound();
            }

            _context.Roles.Remove(role);
            await _context.SaveChangesAsync();

            var roleDTO = RoleDTO.ToDTO(role);
            return roleDTO;
        }

        private bool RoleExists(string id)
        {
            return _context.Roles.Any(e => e.Id == id);
        }

        // GET:
        [HttpGet("{roleName}")]
        public async Task<ActionResult<RoleDTO>> GetRoleByRoleName(string roleName)
        {
            var role = await _context.Roles.FirstOrDefaultAsync(x => x.Name.Equals(roleName));
            return RoleDTO.ToDTO(role);
        }
    }
}