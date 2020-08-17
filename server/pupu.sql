#设置客户端连接服务器端编码
SET NAMES UTF8;
#丢弃数据库，如果存在
DROP DATABASE IF EXISTS pupu;
#创建数据库，设置存储的编码
CREATE DATABASE pupu CHARSET=UTF8 ;
#进入数据库
USE pupu;
#创建保存数据的表
CREATE TABLE users(
  id INT PRIMARY KEY AUTO_INCREMENT,
  phone VARCHAR(11),
  password VARCHAR(16),
  userName VARCHAR(20),
  sex BOOL,
  birthday DATE
);
INSERT INTO users VALUES(1,18888888888,123456,"张三",0,"1945-12-10");
INSERT INTO users VALUES(2,13333333333,123456,"李四",0,"1945-12-10");
INSERT INTO users VALUES(3,14444444444,123456,"韩梅梅",0,"1945-12-10");
INSERT INTO users VALUES(4,15555555555,123456,"李雷",0,"1945-12-10");

#创建保存数据的表
CREATE TABLE product(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50),
  price DECIMAL(7,2),
  img VARCHAR(128),
  category INT
);

INSERT INTO product VALUES
(null,'蜡梅香水（色） WINTERSWEET FLOWER PERFUME【发明专利产品】',660.00,'img1',90),
(null,'蜡梅香水（色） WINTERSWEET FLOWER PERFUME【发明专利产品】',420.00,'img2',90),
(null,'蜡梅BB霜 WINTERSWEET FLOWER BB CREAM',188.00,'img3',90),
(null,'蜡梅香氛 WINTERSWEET FRAGRANCE',49.00,'img4',90),
-- 10
(null,'莲识玉肌粉底露 LIQUID FOUNDATION【发明专利产品】',380.00,'two_1.jpg',10),
(null,'莲识玉肌水露 ADVANCED MOISTURIZING SOFTENING LOTION【发明专利产品】',460.00,'two_2.jpg',10),
(null,'莲识玉肌面部乳露 ADVANCED MOISTURIZING FACIAL SERUM【发明专利产品】',560.00,'two_3.jpg',10),
(null,'莲识玉肌脸部精华露 ADVANCED MOISTURIZING FACIAL CONCENTRATE【发明专利产品】',660.00,'two_4.jpg',10),
(null,'莲识冷制沐浴皂 LOTUS COLD PROCESS HANDMADE SHOWER SOAP【发明专利产品】',180.00,'two_5.jpg',10),
(null,'莲识水彩唇膏 LOTUS WATEROLOR LIPSTICK',128.00,'two_6.jpg',10),
(null,'莲识水彩唇膏 LOTUS WATEROLOR LIPSTICK',138.00,'two_7.jpg',10),
(null,'莲识冷制洁面皂 LOTUS HANDMADE FACIAL CLEANSING SOAP【发明专利产品】',180.00,'two_8.jpg',10),
-- 20
(null,'礼品卡',218.00,'san_1.jpg',20),
(null,'菩璞菩璞中华味道腊梅香水沐浴露洗发内衣皂香囊腊梅套装',650.00,'san_2.jpg',20),
(null,'菩璞菩璞中华味道蜡梅花瓣水腊梅生肌面霜凝霜面部护理小套装',486.00,'san_3.jpg',20),
(null,'菩璞菩璞中华味道腊梅花香水沐浴露腊梅洗发皂身体沐浴护理套装',186.00,'san_4.jpg',20),
(null,'艺术香氛静影沉璧100ml FRAGRANCE',168.00,'san_5.jpg',20),
(null,'艺术香氛醉梦卿颜100ml FRAGRANCE',198.00,'san_6.jpg',20),
(null,'艺术香氛青木如夏100ml FRAGRANCE',168.00,'san_7.jpg',20),
(null,'艺术香氛青木如夏100ml FRAGRANCE',168.00,'san_8.jpg',20),
-- 30
(null,'文创-胡桃盒红酸枝签字笔',280.00,'fushi_1.jpg',30),
(null,'文创-枫木盒黄铜签字笔',95.00,'fushi_2.jpg',30),
(null,'文创-花梨木盒科檀木签字笔',220.00,'fushi_3.jpg',30),
(null,'文创-花梨木套装签字笔',160.00,'fushi_4.jpg',30),
(null,'文创-竹木盒哑光黄铜签字笔',88.00,'fushi_5.jpg',30),
(null,'文创-花梨木套装（椭）签字笔',180.00,'fushi_6.jpg',30),
(null,'文创-橡胶木盒花梨签字笔',220.00,'fushi_7.jpg',30),
(null,'文创-竹木盒镜面黄铜签字笔',88.00,'fushi_8.jpg',30),
-- 40
(null,'文创-胡桃盒红酸枝签字笔',280.00,'biji_1.jpg',40),
(null,'文创-人文古画文化创意笔记本',10.00,'biji_2.jpg',40),
(null,'文创-中华味道文化创意笔记本',10.00,'biji_3.jpg',40),
(null,'文创-中华味道文化创意便签本',6.00,'biji_4.jpg',40),
(null,'文创-枫木盒黄铜签字笔',95.00,'biji_5.jpg',40),
(null,'文创-花梨木盒科檀木签字笔',220.00,'biji_6.jpg',40),
(null,'文创-花梨木套装签字笔',160.00,'biji_7.jpg',40),
(null,'文创-竹木盒哑光黄铜签字笔',88.00,'biji_8.jpg',40);



