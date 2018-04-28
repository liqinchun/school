/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.28 : Database - compareprice
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`compareprice` /*!40100 DEFAULT CHARACTER SET gbk */;

USE `compareprice`;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` varchar(50) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `category` */

insert  into `category`(`id`,`name`,`url`) values ('CATAGORY_81E714FF2DE44A64832DDD4AD49AC218','图书',NULL),('CATEGORY_042476624C7A4F2190A4ECC053DB1B9C','医学','http://category.dangdang.com/cp01.56.00.00.00.00.html'),('CATEGORY_051341E48D8E45299856219EA6FEC96B','手工/DIY','http://category.dangdang.com/cp01.20.00.00.00.00.html'),('CATEGORY_0B3BD58A5B144F409EE26BD0A091F485','体育/运动','http://category.dangdang.com/cp01.19.00.00.00.00.html'),('CATEGORY_0C17CCDFADD7407A8FE8606B21738495','小说','http://category.dangdang.com/cp01.03.00.00.00.00.html'),('CATEGORY_118528289BBD485F8ABF6A6A003B073B','旅游/地图','http://category.dangdang.com/cp01.12.00.00.00.00.html'),('CATEGORY_1549366745024E91B7EF91D2E76FA110','科普读物','http://category.dangdang.com/cp01.52.00.00.00.00.html'),('CATEGORY_170CFA116C5B4D9F93F554B463E894F3','心理学','http://category.dangdang.com/cp01.31.00.00.00.00.html'),('CATEGORY_29B3BE14C9814BB596015AA9C5112B90','童书','http://category.dangdang.com/cp01.41.00.00.00.00.html'),('CATEGORY_2B6113E7821F488E955B95B051EADF02','两性关系','http://category.dangdang.com/cp01.16.00.00.00.00.html'),('CATEGORY_303F01CB0CF84C3686AE165253935D8A','英文原版书','http://category.dangdang.com/cp01.58.00.00.00.00.html'),('CATEGORY_397F4B54D36E421D8077F042B5900FEB','建筑','http://category.dangdang.com/cp01.55.00.00.00.00.html'),('CATEGORY_3A2E4C3B41594E00A7A2CF14B7262BC5','经济','http://category.dangdang.com/cp01.25.00.00.00.00.html'),('CATEGORY_3C848458F7904029A9F361ABE4B1B433','文学','http://category.dangdang.com/cp01.05.00.00.00.00.html'),('CATEGORY_41271B92E0AA40659FD4C7D23C1FA657','成功/励志','http://category.dangdang.com/cp01.21.00.00.00.00.html'),('CATEGORY_41FF7C2E23DB44388E76B5DF24F02B10','艺术','http://category.dangdang.com/cp01.07.00.00.00.00.html'),('CATEGORY_4A748E8812CA419C8E2A228D74F1E99B','古籍','http://category.dangdang.com/cp01.32.00.00.00.00.html'),('CATEGORY_4BB1BADA88DC497DB514C08AB269FA64','孕产/胎教','http://category.dangdang.com/cp01.06.00.00.00.00.html'),('CATEGORY_557B441C22EA4D26BB24CD5BC16D9A19','社会科学','http://category.dangdang.com/cp01.30.00.00.00.00.html'),('CATEGORY_5F2FA6E1B2074132826E36E0B795E601','管理','http://category.dangdang.com/cp01.22.00.00.00.00.html'),('CATEGORY_64D8971A76114820A7D90CC6D65BE1F3','历史','http://category.dangdang.com/cp01.36.00.00.00.00.html'),('CATEGORY_667928777BCB425080F2D9482F836336','外语','http://category.dangdang.com/cp01.45.00.00.00.00.html'),('CATEGORY_6CEBC06FC2024000B54AECE0C5A8E393','休闲/爱好','http://category.dangdang.com/cp01.04.00.00.00.00.html'),('CATEGORY_6D9A3724393E4BC88E6AE8414F43CFA0','计算机/网络','http://category.dangdang.com/cp01.54.00.00.00.00.html'),('CATEGORY_7017700924DE403D88BE475DAC634F53','中小学教辅','http://category.dangdang.com/cp01.43.00.00.00.00.html'),('CATEGORY_74DDBD9C98574CF5B76776953B65D9F7','亲子/家教','http://category.dangdang.com/cp01.15.00.00.00.00.html'),('CATEGORY_77965AE40AF94FA9B3079DA8F67A20C5','家庭/家居','http://category.dangdang.com/cp01.14.00.00.00.00.html'),('CATEGORY_836587FEFF694D5CB8BC166569E2865F','教材','http://category.dangdang.com/cp01.49.00.00.00.00.html'),('CATEGORY_851A7AE0F80544229968CB8FE5E89BD0','烹饪/美食','http://category.dangdang.com/cp01.10.00.00.00.00.html'),('CATEGORY_8F17544212B141278326B9DA4D3133DF','法律','http://category.dangdang.com/cp01.26.00.00.00.00.html'),('CATEGORY_91D544FAABE449A7830586817018C4F0','保健/养生','http://category.dangdang.com/cp01.18.00.00.00.00.html'),('CATEGORY_AD35E44FE13E4B94B1ADE4C2BA28CB3D','投资理财','http://category.dangdang.com/cp01.24.00.00.00.00.html'),('CATEGORY_B76371DF3AE141F3980EFFCD8DE1C62B','文化','http://category.dangdang.com/cp01.34.00.00.00.00.html'),('CATEGORY_BAF4F5810F9744829E8DBB67493D76DD','时尚/美妆','http://category.dangdang.com/cp01.11.00.00.00.00.html'),('CATEGORY_BF6D2F4E37C147E59853BDE5C6087281','政治/军事','http://category.dangdang.com/cp01.27.00.00.00.00.html'),('CATEGORY_C476AD71F1A2488E9AE90C7F54BA39F0','工具书','http://category.dangdang.com/cp01.50.00.00.00.00.html'),('CATEGORY_CE3F699B7BFE4A71999773CB42F2F6E4','哲学/宗教','http://category.dangdang.com/cp01.28.00.00.00.00.html'),('CATEGORY_CEBEAC6D9ADE4DD5B7C6026615688A92','动漫/幽默','http://category.dangdang.com/cp01.09.00.00.00.00.html'),('CATEGORY_DF3E116269EC44D293609C38728359FD','传记','http://category.dangdang.com/cp01.38.00.00.00.00.html'),('CATEGORY_E29C3EF76627430788AE8D3302C2BFC1','青春文学','http://category.dangdang.com/cp01.01.00.00.00.00.html'),('CATEGORY_E647983C070548B099933D8715740CE5','育儿/早教','http://category.dangdang.com/cp01.17.00.00.00.00.html'),('CATEGORY_EA79CD25143A41B29BF0F3D54FE56E3F','考试','http://category.dangdang.com/cp01.47.00.00.00.00.html'),('CATEGORY_EB6C079CA4C243D4A42A91D7D79DCFC4','风水/占卜','http://category.dangdang.com/cp01.23.00.00.00.00.html');

/*Table structure for table `category_description` */

DROP TABLE IF EXISTS `category_description`;

CREATE TABLE `category_description` (
  `catelogDescriptionId` varchar(50) NOT NULL,
  `catelogId` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`catelogDescriptionId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `category_description` */

insert  into `category_description`(`catelogDescriptionId`,`catelogId`,`description`) values ('DES_010F288418984FB78487FE17182FD7FF','CATAGORY_81E714FF2DE44A64832DDD4AD49AC218','烹饪/美食'),('DES_329AB27099064B51B1D941FBF7A80BB7','CATAGORY_81E714FF2DE44A64832DDD4AD49AC218','文学'),('DES_580FE1E03926436295035E55358D49EF','CATAGORY_81E714FF2DE44A64832DDD4AD49AC218','小说'),('DES_69FAD0A0D3264F1BB3CA5676DEB2710D','CATAGORY_81E714FF2DE44A64832DDD4AD49AC218','青春文学'),('DES_6D813E4CDB3A43498418450D0564A686','CATAGORY_81E714FF2DE44A64832DDD4AD49AC218','艺术'),('DES_A203F25794EE4ECABE8BA81EFCF9E799','CATAGORY_81E714FF2DE44A64832DDD4AD49AC218','动漫/幽默'),('DES_B37FF932C6724BE68EE1AC62664087C4','CATAGORY_81E714FF2DE44A64832DDD4AD49AC218','休闲/爱好'),('DES_B5D50CC925834DCB8AE0D04825E37DFB','CATAGORY_81E714FF2DE44A64832DDD4AD49AC218','孕产/胎教'),('DES_EA77BA6B242F42BEBBA30CA8788AE37A','CATAGORY_9EB20464E57341ADA4ACBFFE776C4EF9','青春文学'),('DES_F7F0FF384E6B4ABA9458EED47AC15A58','CATAGORY_81E714FF2DE44A64832DDD4AD49AC218','时尚/美妆');

/*Table structure for table `commodity` */

DROP TABLE IF EXISTS `commodity`;

CREATE TABLE `commodity` (
  `commodityId` varchar(11) NOT NULL COMMENT '商品Id',
  `price` double DEFAULT NULL,
  `typeId` varchar(11) DEFAULT NULL,
  `url` text,
  PRIMARY KEY (`commodityId`),
  KEY `typeId` (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `commodity` */

/*Table structure for table `e_commerce_platform` */

DROP TABLE IF EXISTS `e_commerce_platform`;

CREATE TABLE `e_commerce_platform` (
  `platformId` varchar(11) NOT NULL COMMENT '电商平台Id',
  PRIMARY KEY (`platformId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `e_commerce_platform` */

/*Table structure for table `history_price` */

DROP TABLE IF EXISTS `history_price`;

CREATE TABLE `history_price` (
  `priceId` varchar(20) NOT NULL,
  `productId` varchar(40) NOT NULL,
  `price` double NOT NULL,
  `crateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`priceId`),
  KEY `productId` (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `history_price` */

insert  into `history_price`(`priceId`,`productId`,`price`,`crateTime`) values ('001','8CCDF7883E5C4DC699BDDBA32C9341DA',123,'2018-04-09 11:47:10'),('002','8CCDF7883E5C4DC699BDDBA32C9341DA',12,'2018-04-25 11:47:18'),('003','8CCDF7883E5C4DC699BDDBA32C9341DA',43,'2018-04-17 11:47:25');

/*Table structure for table `larg_catagory` */

DROP TABLE IF EXISTS `larg_catagory`;

CREATE TABLE `larg_catagory` (
  `laryCatagoryId` varchar(50) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`laryCatagoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `larg_catagory` */

/*Table structure for table `m_catagory` */

DROP TABLE IF EXISTS `m_catagory`;

CREATE TABLE `m_catagory` (
  `mCatagoryId` varchar(50) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `m_catagory` */

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `memberId` varchar(50) NOT NULL,
  `memberName` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL,
  `createTime` date DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `member_id` varchar(255) NOT NULL,
  `create_time` date DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`memberId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `member` */

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `productId` varchar(50) NOT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `product` */

/*Table structure for table `product_detail` */

DROP TABLE IF EXISTS `product_detail`;

CREATE TABLE `product_detail` (
  `productId` varchar(50) NOT NULL,
  `catagoryId` varchar(50) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `url` text NOT NULL,
  `imageurl` text,
  `productType` varchar(50) DEFAULT NULL,
  `orignPlace` varchar(20) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `descripton` text,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `product_detail` */

insert  into `product_detail`(`productId`,`catagoryId`,`productName`,`url`,`imageurl`,`productType`,`orignPlace`,`createTime`,`descripton`) values ('399C2004F77641E49D1856D4E03DB516','CATEGORY_E29C3EF76627430788AE8D3302C2BFC1','  余生很长，何必慌张（林熙新书） ','http://product.dangdang.com/25230126.html','http://img3m6.ddimg.cn/75/11/25230126-1_w_3.jpg','国际标准书号ISBN：9787559413017',' 29.40 ','2018-04-19 21:36:36',' 不辜负自己，莫错过流光，去做你想做的事，趁阳光正好，趁微风不燥！14万有爱文字，1095个日夜守候，每份共鸣，都带着我们对你的柔情期许，愿你从此爱情温软，余生温暖！ '),('5945626428174D20A85873945D9F4F9F','CATEGORY_E29C3EF76627430788AE8D3302C2BFC1','  余生很长，何必慌张（林熙新书） ','http://product.dangdang.com/25230126.html','http://img3m6.ddimg.cn/75/11/25230126-1_w_3.jpg','国际标准书号ISBN：9787559413017',' 27.50 ','2018-04-25 20:36:01',' 不辜负自己，莫错过流光，去做你想做的事，趁阳光正好，趁微风不燥！14万有爱文字，1095个日夜守候，每份共鸣，都带着我们对你的柔情期许，愿你从此爱情温软，余生温暖！ '),('736F5998714042428B061ACCA184BD34','CATEGORY_E29C3EF76627430788AE8D3302C2BFC1','  余生很长，何必慌张（林熙新书） ','http://product.dangdang.com/25230126.html','http://img3m6.ddimg.cn/75/11/25230126-1_w_3.jpg','国际标准书号ISBN：9787559413017',' 27.50 ','2018-04-25 19:21:07',' 不辜负自己，莫错过流光，去做你想做的事，趁阳光正好，趁微风不燥！14万有爱文字，1095个日夜守候，每份共鸣，都带着我们对你的柔情期许，愿你从此爱情温软，余生温暖！ '),('75CB5F2378C64AAD8802F417272086DA','CATEGORY_E29C3EF76627430788AE8D3302C2BFC1','  余生很长，何必慌张（林熙新书） ','http://product.dangdang.com/25230126.html','http://img3m6.ddimg.cn/75/11/25230126-1_w_3.jpg','国际标准书号ISBN：9787559413017',' 29.40 ','2018-04-19 20:04:32',' 不辜负自己，莫错过流光，去做你想做的事，趁阳光正好，趁微风不燥！14万有爱文字，1095个日夜守候，每份共鸣，都带着我们对你的柔情期许，愿你从此爱情温软，余生温暖！ '),('809A5AA370AB4C43B82841599FCE9218','CATEGORY_E29C3EF76627430788AE8D3302C2BFC1','  余生很长，何必慌张（林熙新书） ','http://product.dangdang.com/25230126.html','http://img3m6.ddimg.cn/75/11/25230126-1_w_3.jpg','国际标准书号ISBN：9787559413017',' 29.40 ','2018-04-19 21:35:49',' 不辜负自己，莫错过流光，去做你想做的事，趁阳光正好，趁微风不燥！14万有爱文字，1095个日夜守候，每份共鸣，都带着我们对你的柔情期许，愿你从此爱情温软，余生温暖！ '),('82BC85C6F05548FB8ABBC768B6A5C40D','CATEGORY_E29C3EF76627430788AE8D3302C2BFC1','  余生很长，何必慌张（林熙新书） ','http://product.dangdang.com/25230126.html','http://img3m6.ddimg.cn/75/11/25230126-1_w_3.jpg','国际标准书号ISBN：9787559413017',' 27.50 ','2018-04-25 19:30:09',' 不辜负自己，莫错过流光，去做你想做的事，趁阳光正好，趁微风不燥！14万有爱文字，1095个日夜守候，每份共鸣，都带着我们对你的柔情期许，愿你从此爱情温软，余生温暖！ '),('8CCDF7883E5C4DC699BDDBA32C9341DA','CATEGORY_E29C3EF76627430788AE8D3302C2BFC1','  余生很长，何必慌张（林熙新书） ','http://product.dangdang.com/25230126.html','http://img3m6.ddimg.cn/75/11/25230126-1_w_3.jpg','国际标准书号ISBN：9787559413017',' 27.50 ','2018-04-25 20:36:56',' 不辜负自己，莫错过流光，去做你想做的事，趁阳光正好，趁微风不燥！14万有爱文字，1095个日夜守候，每份共鸣，都带着我们对你的柔情期许，愿你从此爱情温软，余生温暖！ ');

/*Table structure for table `product_price` */

DROP TABLE IF EXISTS `product_price`;

CREATE TABLE `product_price` (
  `priceId` varchar(50) NOT NULL,
  `productId` varchar(50) NOT NULL,
  `price` double DEFAULT NULL,
  `crateTime` date DEFAULT NULL,
  `price_status` int(1) DEFAULT NULL,
  PRIMARY KEY (`priceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `product_price` */

/*Table structure for table `type` */

DROP TABLE IF EXISTS `type`;

CREATE TABLE `type` (
  `typeId` varchar(11) NOT NULL COMMENT '分类id',
  `type_id` varchar(255) NOT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `type` */

insert  into `type`(`typeId`,`type_id`) values ('1',''),('2',''),('3',''),('4',''),('5','');

/*Table structure for table `urlvo` */

DROP TABLE IF EXISTS `urlvo`;

CREATE TABLE `urlvo` (
  `urlId` varchar(11) NOT NULL,
  `url` text,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`urlId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `urlvo` */

insert  into `urlvo`(`urlId`,`url`,`name`) values ('1',NULL,'冰箱'),('2',NULL,'冰箱'),('3',NULL,'123'),('4',NULL,'123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
