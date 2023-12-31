﻿using Microsoft.EntityFrameworkCore;
using MVC_TDPC.DB.Entities;

namespace MVC_TDPC.DB
{
    public class DBContext : DbContext
    {
        public DBContext(DbContextOptions<DBContext> options)
            : base(options)
        {
        }
        public DbSet<Person> Persons { get; set; }

        public DbSet<EsperienzeModel> Esperienze { get; set; }

        public DbSet<UserModel> User { get; set; }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
            // Customize the ASP.NET Identity model and override the defaults if needed.
            // For example, you can rename the ASP.NET Identity table names and more.
            // Add your customizations after calling base.OnModelCreating(builder);
        }
    }
}