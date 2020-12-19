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

alter table Space add hours_of_operation nvarchar(15), picture varchar(300) ,number_phone float, email varchar(50), price text,  type_id int, FOREIGN KEY (type_id) REFERENCES Type_of_Space (type_id);
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

