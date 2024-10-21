﻿namespace Blog.Models
{
    public class Dto
    {
        public record CreateBloggerDto(string Name, string Sex);
        public record updateBloggerDto(string Name, string Sex);
        public record CreateBlogRegistryDto(string Title, string Description, Guid BloggerId);
    }
}
