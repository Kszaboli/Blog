using Blog.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using static Blog.Models.Dto;

namespace Blog.Controllers
{
    [Route("blog")]
    [ApiController]
    public class BlogController : ControllerBase
    {
        [HttpGet]
        public ActionResult<Blogger> Get()
        {
            using (var context = new BlogDbContext()) 
            {                
                return Ok(context.Bloggers.ToList());
            }
        }

        [HttpGet("{id}")]
        public ActionResult<Blogger> GetBId(Guid id)
        {
            using (var context = new BlogDbContext())
            {
                var blogger = context.Bloggers.FirstOrDefault(x => x.Id == id);

                if (blogger != null)
                {
                    return StatusCode(200, blogger);
                }
                return NotFound();
            }
        }

        [HttpPost]
        public ActionResult<Blogger> Post(CreateBloggerDto createBloggerDto)
        {
            using (var context = new BlogDbContext())
            {
                var blogger = new Blogger()
                {
                    Id = Guid.NewGuid(),
                    Name = createBloggerDto.Name,
                    Sex = createBloggerDto.Sex,
                    Status = "Waiting",
                    RegistrationTime = DateTime.Now
                };
                if (blogger != null)
                {
                    context.Bloggers.Add(blogger);
                    context.SaveChanges();
                    return StatusCode(201, blogger);
                }
                return StatusCode(201,blogger);
            }
        }

        [HttpPut]
        public ActionResult<Blogger> Put(Guid id, updateBloggerDto updateBloggerDto)
        {
            using (var context = new BlogDbContext())
            {
                var existingBlogger = context.Bloggers.FirstOrDefault(x => x.Id == id);
                if (existingBlogger != null)
                {
                    existingBlogger.Name = updateBloggerDto.Name;
                    existingBlogger.Sex = updateBloggerDto.Sex;
                    context.Bloggers.Update(existingBlogger);
                    context.SaveChanges();
                    return StatusCode(200, existingBlogger);
                }
                return NotFound();
            }
        }

        [HttpDelete]
        public ActionResult Delete(Guid id)
        {
            using (var context = new BlogDbContext())
            {
                var delBlogger = context.Bloggers.FirstOrDefault(y => y.Id == id);
                if (delBlogger != null)
                {
                    context.Bloggers.Remove(delBlogger);
                    context.SaveChanges();
                    return StatusCode(200, delBlogger);
                }
                return NotFound();
            }
        }
    }
}
