using static Blog.Models.Dto;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Blog.Models;

namespace Blog.Controllers
{
    [Route("blogregistry")]
    [ApiController]
    public class BlogRegistryController : ControllerBase
    {
        [HttpPost]
        public ActionResult<BlogRegistry> Post(CreateBlogRegistryDto createBlogRegistryDto)
        {
            using (var context = new BlogDbContext())
            {
                var blogRegistry = new BlogRegistry()
                {
                    Id = Guid.NewGuid(),
                    Title = createBlogRegistryDto.Title,
                    Description = createBlogRegistryDto.Description,
                    CreatedTime = DateTime.Now,
                    LastUpdate = DateTime.Now,
                    BloggerId = createBlogRegistryDto.BloggerId
                };
                if (blogRegistry != null)
                {
                    context.BlogRegistry.Add(blogRegistry);
                    context.SaveChanges();
                    return StatusCode(201, blogRegistry);
                }
            }
            return NotFound();
        }

        [HttpGet("{id}")]
        public ActionResult<BlogRegistry> GetById(Guid id)
        {
            using (var context = new BlogDbContext())
            {
                var result = context.BlogRegistry.Select(x => new { x.Blogger.Name, x.Title, x.Description, x.CreatedTime });
            }
            return Ok();
        }
    }
}
