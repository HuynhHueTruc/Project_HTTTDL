use QL_TauXe
go

create table Type_of_Space
(
type_id int identity primary key,
type_name nvarchar(100)
)
go

insert into type_of_space values(N'Bến xe'), (N'Bến tàu'), (N'Chành xe'), (N'Địa điểm bán vé'), (N'Trạm xe buýt'), (N'Dịch vụ vận chuyển')
go

create table Space ( 
id int IDENTITY primary key,
the_geom geometry,
hours_of_operation nvarchar(15),
picture varchar(300) ,
number_phone float,
email varchar(50), 
price text, 
street nvarchar(100),
type_id int, 
province_id int ,
FOREIGN KEY (type_id) REFERENCES Type_of_Space (type_id), 
FOREIGN KEY (province_id) REFERENCES Province (province_id));
go
--Các dữ liệu khác được nhập tay
update Space set the_geom = geometry::STGeomFromText('POINT(105.7879375 10.0326875)', 0) where id =2
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7718125 10.0041875)', 0) where id =3
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7710625 10.0044375)', 0) where id =4
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7711875 10.0054375)', 0) where id =5
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7710625 10.0055625)', 0) where id =6
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7754375 10.0533125)', 0) where id =7
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7724375 10.0055625)', 0) where id =8
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.76231251 10.02381249)', 0) where id =9
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.74531254 10.0383125)', 0) where id =10
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.76129416 10.0179403)', 0) where id =11
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7343125 10.0628125)', 0) where id =12
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7268125 10.0630625)', 0) where id =13
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7254377 10.05793824)', 0) where id =14
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7244375 10.0518125)', 0) where id =15
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7608125 10.0126875)', 0) where id =16
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7906875 10.0488125)', 0) where id =17
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.74207054 9.99982061)', 0) where id =18

go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7776875 10.0149375)', 0) where id =20
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.75959293 10.01930516)', 0) where id =21
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7600625 10.0248125)', 0) where id =22
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.75969308 10.02493564)', 0) where id =23
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7675624 10.02606249)', 0) where id =24
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.78706141 10.03106222)', 0) where id =25
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.76468797 10.04481191)', 0) where id =26
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7793125 10.0448125)', 0) where id =27
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7815625 10.0465625)', 0) where id =28
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7486875 10.0075625)', 0) where id =29
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7882762 10.03066632)', 0) where id =30
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.78843476 10.03154331)', 0) where id =31
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.78855894 10.03204827)', 0) where id =32
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.78810337 10.0320625)', 0) where id =33
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7880625 10.0320625)', 0) where id =34
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.78842659 10.03230523)', 0) where id =35
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7883125 10.0326875)', 0) where id =36
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.78856246 10.03343739)', 0) where id =37
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7886875 10.0336875)', 0) where id =38
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.79255941 10.04655223)', 0) where id =39
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.76452473 10.06829182)', 0) where id =40
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7619375 10.0240625)', 0) where id =41
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7776875 10.0559375)', 0) where id =42
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7776875 10.01494007)', 0) where id =43
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.62193756 10.11193746)', 0) where id =44
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.8043125 9.9991875)', 0) where id =45
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7609375 10.0241875)', 0) where id =46
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.77943911 10.01381081)', 0) where id =47
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.76718825 10.04168735)', 0) where id =48
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7644375 10.0444375)', 0) where id =49
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7791875 10.0441875)', 0) where id =50
go
update Space set the_geom = geometry::STGeomFromText('POINT(105.7625625 10.0698125)', 0) where id =51
go

create table Account
(
usename nvarchar(50) primary key,
password varchar(32) not null,
email varchar(50) not null,
number_phone int
)
go

insert into Account values(N'Huỳnh Huệ Trúc', '12345678', 'trucb1706774@student.ctu.edu.vn', 0964453406)
go

create table Province
(
 province_id int identity primary key,
 province_name nvarchar(50) not null
)
go

insert into Province values(N'Quận Bình Thủy'), (N'Quận Cái Răng'), (N'Quận Ninh Kiều'), (N'Quận Ô Môn'), (N'Quận Thốt Nốt'), (N'Huyện Cờ Đỏ'), (N'Huyện Phong Điền'), (N'Huyện Thới Lai'), (N'Huyện Vĩnh Thạnh')
go

create table District
(
 district_id int identity primary key,
 district_name nvarchar(50) not null,
 province_id int not null,
 foreign key (province_id) references Province(province_id)
)
go

insert into District values(N'Phường Trà Nóc', 1), (N'Phường Trà An', 1), (N'Phường An Thới', 1), (N'Phường Bùi Hữu Nghĩa', 1), (N'Thới An Đông', 1), (N'Phường Bình Thủy', 1), (N'Phường Long Tuyền', 1), (N'Phường Long Hà', 1)
go

insert into District values(N'Phường Lê Bình', 2), (N'Phường Thường Thạnh', 2), (N'Phường Phú Thứ', 2), (N'Phường Tân Phú', 2), (N'Thới Ba Láng', 2), (N'Phường Hưng Phú', 2), (N'Phường Hưng Thạnh', 2)
go

insert into District values(N'Phường Cái Khế', 3), (N'Phường An Hòa', 3), (N'Phường Thới Bình', 3), (N'Phường An Nghiệp', 3), (N'Phường An Cư', 3), (N'Phường Tân An', 3), (N'Phường An Phú', 3), (N'Phường Xuân Khánh', 3), (N'Phường Hưng Lợi', 3), (N'Phường An Khánh', 3), (N'Xã An Bình', 3)
go

insert into District values(N'Phường Thới Long', 4), (N'Phường Long Hưng', 4), (N'Phường Thới Hòa', 4), (N'Phường Thới An', 4), (N'Phường Châu Văn Liêm', 4), (N'Phường Phước Thới', 4), (N'Phường Trường Lạc', 4)
go

insert into District values(N'Phường Thốt Nốt', 5), (N'Phường Thới Thuận', 5), (N'Phường Thuận An', 5), (N'Phường Trung Nhất', 5), (N'Phường Thạnh Hòa', 5), (N'Phường Trung Kiên', 5), (N'Phường Thuận Hưng', 5), (N'Phường Tân Hưng', 5), (N'Phường Tân Lộc', 5)
go

insert into District values(N'Xã Thới Hưng', 6), (N'Xã Đông Tiệp', 6), (N'Xã Đông Thắng', 6), (N'Xã Thới Đông', 6), (N'Xã Thới Xuân', 6), (N'Xã Trung Hưng', 6), (N'Xã Thạnh Phú', 6), (N'Xã Trung An', 6), (N'Xã Trung Thạnh', 6), (N'Thị trấn Cờ Đỏ ', 6)
go

insert into District values(N'Thị Trấn Phong Điền', 7), (N'Xã Điền Hải', 7), (N'Xã Điền Hòa', 7), (N'Xã Điền Hương', 7), (N'Xã Điền Lộc', 7), (N'Xã Điền Môn', 7), (N'Xã Phong An', 7), (N'Xã Phong Bình', 7), (N'Xã Phong Chương', 7), (N'Xã Phong Hải', 7), (N'Xã Phong Hiền', 7), (N'Xã Phong Hòa', 7), (N'Xã Phong Mỹ', 7), (N'Xã Phong Sơn', 7), (N'Xã Phong Thu', 7), (N'Xã Phong Xuân', 7)
go

insert into District values(N'Thị trấn Thới Lai ', 8), (N'Xã Định Môn', 8), (N'Xã Đông Bình', 8), (N'Xã Đông Thuận', 8), (N'Xã Tân Thạnh', 8), (N'Xã Thới Tân', 8), (N'Xã Thới Thạnh', 8), (N'Xã Trường Thắng', 8), (N'Xã Trường Thành', 8), (N'Xã Trường Xuân', 8), (N'Xã Trường Xuân A', 8), (N'Xã Trường Xuân B', 8), (N'Xã Xuân Thắng', 8)
go

insert into District values(N'Thị trấn Vĩnh Thạnh', 9), (N'Thị trấn Thạnh An', 9), (N'Xã Thạnh An', 9), (N'Xã Thạnh Lộc', 9), (N'Xã Thạnh Lợi', 9), (N'Xã Thạnh Mỹ', 9), (N'Xã Thạnh Quới', 9), (N'Xã Thạnh Thắng', 9), (N'Xã Thạnh Tiến', 9), (N'Xã Vĩnh Bình ', 9), (N'Xã Vĩnh Trinh ', 9)
go

