using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace Project_HTTTDL.Models
{
    public partial class QL_TauXeContext : DbContext
    {
        public QL_TauXeContext()
        {
        }

        public QL_TauXeContext(DbContextOptions<QL_TauXeContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Account> Accounts { get; set; }
        public virtual DbSet<District> Districts { get; set; }
        public virtual DbSet<Province> Provinces { get; set; }
        public virtual DbSet<Space> Spaces { get; set; }
        public virtual DbSet<TypeOfSpace> TypeOfSpaces { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Server=.\\MSSQLSERVER_TRUC;Database=QL_TauXe;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "SQL_Latin1_General_CP1_CI_AS");

            modelBuilder.Entity<Account>(entity =>
            {
                entity.HasKey(e => e.Username)
                    .HasName("PK__Account__D1DDB568FDC337CF");

                entity.ToTable("Account");

                entity.Property(e => e.Username)
                    .HasMaxLength(50)
                    .HasColumnName("username");

                entity.Property(e => e.Email)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("email");

                entity.Property(e => e.NumberPhone).HasColumnName("number_phone");

                entity.Property(e => e.Password)
                    .IsRequired()
                    .HasMaxLength(32)
                    .IsUnicode(false)
                    .HasColumnName("password");
            });

            modelBuilder.Entity<District>(entity =>
            {
                entity.ToTable("District");

                entity.Property(e => e.DistrictId).HasColumnName("district_id");

                entity.Property(e => e.DistrictName)
                    .IsRequired()
                    .HasMaxLength(50)
                    .HasColumnName("district_name");

                entity.Property(e => e.ProvinceId).HasColumnName("province_id");

                entity.HasOne(d => d.Province)
                    .WithMany(p => p.Districts)
                    .HasForeignKey(d => d.ProvinceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__district__provin__4D94879B");
            });

            modelBuilder.Entity<Province>(entity =>
            {
                entity.ToTable("Province");

                entity.Property(e => e.ProvinceId).HasColumnName("province_id");

                entity.Property(e => e.ProvinceName)
                    .IsRequired()
                    .HasMaxLength(50)
                    .HasColumnName("province_name");
            });

            modelBuilder.Entity<Space>(entity =>
            {
                entity.ToTable("Space");

                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("id");

                entity.Property(e => e.Contact)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .HasColumnName("contact");

                entity.Property(e => e.HoursOfOperation)
                    .HasMaxLength(50)
                    .HasColumnName("hours_of_operation");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(255)
                    .HasColumnName("name")
                    .UseCollation("Latin1_General_CI_AS");

                entity.Property(e => e.NumberPhone).HasColumnName("number_phone");

                entity.Property(e => e.Picture)
                    .HasMaxLength(300)
                    .IsUnicode(false)
                    .HasColumnName("picture");

                entity.Property(e => e.ProvinceId).HasColumnName("province_id");

                entity.Property(e => e.Street)
                    .HasMaxLength(100)
                    .HasColumnName("street");

                entity.Property(e => e.TheGeom)
                    .HasColumnName("the_geom")
                    .HasColumnType("geometry")
                    .IsRequired();

                entity.Property(e => e.TypeId).HasColumnName("type_id");

                entity.HasOne(d => d.Province)
                    .WithMany(p => p.Spaces)
                    .HasForeignKey(d => d.ProvinceId)
                    .HasConstraintName("FK__Space__province___7E37BEF6");

                entity.HasOne(d => d.Type)
                    .WithMany(p => p.Spaces)
                    .HasForeignKey(d => d.TypeId)
                    .HasConstraintName("FK__Space__type_id__00200768");
            });

            modelBuilder.Entity<TypeOfSpace>(entity =>
            {
                entity.HasKey(e => e.TypeId)
                    .HasName("PK__type_of___2C00059826CC8274");

                entity.ToTable("Type_of_Space");

                entity.Property(e => e.TypeId).HasColumnName("type_id");

                entity.Property(e => e.TypeName)
                    .HasMaxLength(100)
                    .HasColumnName("type_name");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
