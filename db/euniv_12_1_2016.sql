/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : euniv_12_9_1015

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2016-01-12 00:11:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tblacademicyear`
-- ----------------------------
DROP TABLE IF EXISTS `tblacademicyear`;
CREATE TABLE `tblacademicyear` (
  `ACAYEAR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACAYEAR_Code` varchar(255) NOT NULL,
  `ACAYEAR_FromDate` date NOT NULL,
  `ACAYEAR_ToDate` date NOT NULL,
  PRIMARY KEY (`ACAYEAR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblacademicyear
-- ----------------------------
INSERT INTO `tblacademicyear` VALUES ('1', '2014-2015', '2014-09-01', '2015-08-31');
INSERT INTO `tblacademicyear` VALUES ('2', '2013-2014', '2013-09-01', '2014-08-31');
INSERT INTO `tblacademicyear` VALUES ('3', '2012-2013', '2012-09-01', '2013-08-31');

-- ----------------------------
-- Table structure for `tbldepartment`
-- ----------------------------
DROP TABLE IF EXISTS `tbldepartment`;
CREATE TABLE `tbldepartment` (
  `Department_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Department_Code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Department_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Department_AsciiName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Department_Faculty_Code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Department_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=369 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbldepartment
-- ----------------------------
INSERT INTO `tbldepartment` VALUES ('185', 'GDQP-BMCTQP', 'Bm Công tác Quốc phòng', 'bm-cong-tac-quoc-phong', 'GDQP');
INSERT INTO `tbldepartment` VALUES ('186', 'GDQP-BMQSC', 'Bm Quân sự chung', 'bm-quan-su-chung', 'GDQP');
INSERT INTO `tbldepartment` VALUES ('187', 'GDQP-BMDLQS', 'Bm Đường lối quân sự', 'bm-duờng-loi-quan-su', 'GDQP');
INSERT INTO `tbldepartment` VALUES ('188', 'GDTC-BMLLGDTC', 'Bm Lý luận và Giáo dục thể chất cơ bản', 'bm-ly-luan-va-giao-duc-the-chat-co-ban', 'GDTC');
INSERT INTO `tbldepartment` VALUES ('189', 'GDTC-BMTTTC', 'Bm Thể thao tự chọn', 'bm-the-thao-tu-chon', 'GDTC');
INSERT INTO `tbldepartment` VALUES ('190', 'GDTC-VPKGDTC', 'Văn phòng Khoa Giáo dục thể chất', 'van-phong-khoa-giao-duc-the-chat', 'GDTC');
INSERT INTO `tbldepartment` VALUES ('191', 'LLCT-BMNLCNM', 'Bm Những Nguyên lý cơ bản của CN Mác-Lênin', 'bm-nhung-nguyen-ly-co-ban-của-cn-mac-lenin', 'LLCT');
INSERT INTO `tbldepartment` VALUES ('192', 'LLCT-BMTTHCM', 'Bm Tư tưởng Hồ Chí Minh', 'bm-tu-tuong-ho-chi-minh', 'LLCT');
INSERT INTO `tbldepartment` VALUES ('193', 'LLCT-BMDLCMDCS', 'Bm Đường lối cách mạng của Đảng Cộng sản Việt Nam', 'bm-duờng-loi-cach-mang-của-dang-cong-san-viet-nam', 'LLCT');
INSERT INTO `tbldepartment` VALUES ('194', 'LLCT-VPKLLCT', 'Văn phòng khoa Lý luận chính trị', 'van-phong-khoa-ly-luan-chinh-tri', 'LLCT');
INSERT INTO `tbldepartment` VALUES ('195', 'CK-BMCNCTM', 'Bm CN Chế tạo máy', 'bm-cn-che-tao-may', 'CK');
INSERT INTO `tbldepartment` VALUES ('196', 'CK-BMCKCXQH', 'Bm Cơ khí chính xác & Quang học', 'bm-co-khi-chinh-xac-&-quang-hoc', 'CK');
INSERT INTO `tbldepartment` VALUES ('197', 'CK-BMCSTKMRB', 'Bm Cơ sở thiết kế máy và Rôbốt', 'bm-co-so-thiet-ke-may-va-robot', 'CK');
INSERT INTO `tbldepartment` VALUES ('198', 'CK-BMCUD', 'Bm Cơ ứng dụng', 'bm-co-ung-dung', 'CK');
INSERT INTO `tbldepartment` VALUES ('199', 'CK-BMGCVLDCCN', 'Bm GCVL & Dụng cụ CN', 'bm-gcvl-&-dung-cu-cn', 'CK');
INSERT INTO `tbldepartment` VALUES ('200', 'CK-BMGCAL', 'Bm Gia công áp lực', 'bm-gia-cong-ap-luc', 'CK');
INSERT INTO `tbldepartment` VALUES ('201', 'CK-BMHCNKL', 'Bm Hàn và công nghệ kim loại', 'bm-han-va-cong-nghe-kim-loai', 'CK');
INSERT INTO `tbldepartment` VALUES ('202', 'CK-BMHHVKT', 'Bm Hình hoạ - VKT', 'bm-hình-hoa-vkt', 'CK');
INSERT INTO `tbldepartment` VALUES ('203', 'CK-BMMMSH', 'Bm Máy & Ma sát học', 'bm-may-&-ma-sat-hoc', 'CK');
INSERT INTO `tbldepartment` VALUES ('204', 'CK-TTTHCNCK', 'Trung tâm Thực hành Công nghệ Cơ khí', 'trung-tam-thuc-hanh-cong-nghe-co-khi', 'CK');
INSERT INTO `tbldepartment` VALUES ('205', 'CK-TTDTNCPTCNC', 'Trung tâm Đào tạo và Nghiên cứu phát triển công nghệ CNC', 'trung-tam-dao-tao-va-nghien-cuu-phat-trien-cong-nghe-cnc', 'CK');
INSERT INTO `tbldepartment` VALUES ('206', 'CK-VPVCK', 'Văn phòng Viện Cơ khí', 'van-phong-vien-co-khi', 'CK');
INSERT INTO `tbldepartment` VALUES ('207', 'CK-BMCHVLKC', 'Bm Cơ học vật liệu và Kết cấu', 'bm-co-hoc-vat-lieu-va-ket-cau', 'CK');
INSERT INTO `tbldepartment` VALUES ('208', 'CKDL-BMKTHKVT', 'Bm Kỹ thuật hàng không và vũ trụ', 'bm-ky-thuat-hang-khong-va-vu-tru', 'CKDL');
INSERT INTO `tbldepartment` VALUES ('209', 'CKDL-BMMTDTK', 'Bm Máy và Tự động thuỷ khí', 'bm-may-va-tu-dong-thuy-khi', 'CKDL');
INSERT INTO `tbldepartment` VALUES ('210', 'CKDL-BMOXCD', 'Bm Ôtô và xe chuyên dụng', 'bm-oto-va-xe-chuyen-dung', 'CKDL');
INSERT INTO `tbldepartment` VALUES ('211', 'CKDL-BMDCDT', 'Bm Động cơ đốt trong', 'bm-dong-co-dot-trong', 'CKDL');
INSERT INTO `tbldepartment` VALUES ('212', 'CKDL-PTNDCDT', 'Phòng Thí nghiệm Động cơ đốt trong', 'phong-thi-nghiem-dong-co-dot-trong', 'CKDL');
INSERT INTO `tbldepartment` VALUES ('213', 'CKDL-TTTVCGCNCKDL', 'Trung tâm Tư vấn và chuyển giao công nghệ cơ khí động lực', 'trung-tam-tu-van-va-chuyen-giao-cong-nghe-co-khi-dong-luc', 'CKDL');
INSERT INTO `tbldepartment` VALUES ('214', 'CKDL-VPVCKDL', 'Văn phòng viện Cơ khí Động lực', 'van-phong-vien-co-khi-dong-luc', 'CKDL');
INSERT INTO `tbldepartment` VALUES ('215', 'CNSHTP-BMCNSH', 'Bm Công nghệ sinh học', 'bm-cong-nghe-sinh-hoc', 'CNSHTP');
INSERT INTO `tbldepartment` VALUES ('216', 'CNSHTP-BMCNTP', 'Bm Công nghệ Thực phẩm', 'bm-cong-nghe-thuc-pham', 'CNSHTP');
INSERT INTO `tbldepartment` VALUES ('217', 'CNSHTP-BMQTTBCNSHTP', 'Bm Quá trình-Thiết bị CN Sinh học-CN Thực phẩm', 'bm-qua-trình-thiet-bi-cn-sinh-hoc-cn-thuc-pham', 'CNSHTP');
INSERT INTO `tbldepartment` VALUES ('218', 'CNSHTP-BMQLCL', 'Bm Quản lý chất lượng', 'bm-quan-ly-chat-luong', 'CNSHTP');
INSERT INTO `tbldepartment` VALUES ('219', 'CNSHTP-BMVSHSSHPT', 'Bm Vi sinh-Hoá sinh-Sinh học phân tử', 'bm-vi-sinh-hoa-sinh-sinh-hoc-phan-tu', 'CNSHTP');
INSERT INTO `tbldepartment` VALUES ('220', 'CNSHTP-TTNCPTCNSH', 'Trung tâm Nghiên cứu và Phát triển công nghệ sinh học', 'trung-tam-nghien-cuu-va-phat-trien-cong-nghe-sinh-hoc', 'CNSHTP');
INSERT INTO `tbldepartment` VALUES ('221', 'CNSHTP-TTDTPTSPTP', 'Trung tâm Đào tạo và Phát triển sản phẩm thực phẩm', 'trung-tam-dao-tao-va-phat-trien-san-pham-thuc-pham', 'CNSHTP');
INSERT INTO `tbldepartment` VALUES ('222', 'CNSHTP-VPVCNSPCNTP', 'Văn phòng Viện CNSP-CNTP', 'van-phong-vien-cnsp-cntp', 'CNSHTP');
INSERT INTO `tbldepartment` VALUES ('223', 'SOICT-BDHDAHTPTDTCNTT', 'Ban điều hành Dự án Hỗ trợ và PT đào tạo ĐH và sau ĐH về CNTT và Truyền thông', 'ban-dieu-hanh-du-an-ho-tro-va-pt-dao-tao-dh-va-sau-dh-ve-cntt-va-truyen-thong', 'SOICT');
INSERT INTO `tbldepartment` VALUES ('224', 'SOICT-BMCNPM', 'Bm Công nghệ phần mềm', 'bm-cong-nghe-phan-mem', 'SOICT');
INSERT INTO `tbldepartment` VALUES ('225', 'SOICT-BMHTTT', 'Bm Hệ thống thông tin', 'bm-he-thong-thong-tin', 'SOICT');
INSERT INTO `tbldepartment` VALUES ('226', 'SOICT-BMKHMT', 'Bm Khoa học máy tính', 'bm-khoa-hoc-may-tinh', 'SOICT');
INSERT INTO `tbldepartment` VALUES ('227', 'SOICT-BMKTMT', 'Bm Kỹ thuật máy tính', 'bm-ky-thuat-may-tinh', 'SOICT');
INSERT INTO `tbldepartment` VALUES ('228', 'SOICT-BMTTMMT', 'Bm Truyền thông & mạng MT', 'bm-truyen-thong-&-mang-mt', 'SOICT');
INSERT INTO `tbldepartment` VALUES ('229', 'SOICT-PTNHTTT', 'Phòng thí nghiệm Hệ thống máy tính', 'phong-thi-nghiem-he-thong-may-tinh', 'SOICT');
INSERT INTO `tbldepartment` VALUES ('230', 'SOICT-TTMT', 'Trung tâm máy tính', 'trung-tam-may-tinh', 'SOICT');
INSERT INTO `tbldepartment` VALUES ('231', 'SOICT-VPVSOICT', 'Văn phòng Viện CN Thông tin và TT', 'van-phong-vien-cn-thong-tin-va-tt', 'SOICT');
INSERT INTO `tbldepartment` VALUES ('232', 'DMDGTT-BMCNMTT', 'Bm CN May & thời trang', 'bm-cn-may-&-thời-trang', 'DMDGTT');
INSERT INTO `tbldepartment` VALUES ('233', 'DMDGTT-BMCND', 'Bm Công nghệ Dệt', 'bm-cong-nghe-det', 'DMDGTT');
INSERT INTO `tbldepartment` VALUES ('234', 'DMDGTT-BMVLCNHD', 'Bm VL&CN hoá dệt', 'bm-vl&cn-hoa-det', 'DMDGTT');
INSERT INTO `tbldepartment` VALUES ('235', 'DMDGTT-VPVDMDGTT', 'Văn phòng Viện Dệt may- Da giầy và Thời trang', 'van-phong-vien-det-may-da-giay-va-thời-trang', 'DMDGTT');
INSERT INTO `tbldepartment` VALUES ('236', 'CNMT-BMCNMTT', 'Bm Công nghệ môi trường', 'bm-cong-nghe-moi-truờng', 'CNMT');
INSERT INTO `tbldepartment` VALUES ('237', 'CNMT-BMQLMT', 'Bm Quản lý môi trường', 'bm-quan-ly-moi-truờng', 'CNMT');
INSERT INTO `tbldepartment` VALUES ('238', 'CNMT-PTNRNDCNMT', 'Phòng Thí nghiệm R&D Công nghệ Môi trường', 'phong-thi-nghiem-r&d-cong-nghe-moi-truờng', 'CNMT');
INSERT INTO `tbldepartment` VALUES ('239', 'CNMT-PTNNCPTCNMT', 'Phòng TNNC&PTCN môi trường', 'phong-tnnc&ptcn-moi-truờng', 'CNMT');
INSERT INTO `tbldepartment` VALUES ('240', 'CNMT-TTQTMTKSONCN', 'TT Quan trắc MT & kiểm soát ô nhiễm CN', 'tt-quan-trắc-mt-&-kiem-soat-o-nhiem-cn', 'CNMT');
INSERT INTO `tbldepartment` VALUES ('241', 'CNMT-TTSXS', 'TT Sản xuất sạch', 'tt-san-xuat-sach', 'CNMT');
INSERT INTO `tbldepartment` VALUES ('242', 'CNMT-VPVKHCNMT', 'Văn phòng Viện KH&CN Môi trường', 'van-phong-vien-kh&cn-moi-truờng', 'CNMT');
INSERT INTO `tbldepartment` VALUES ('243', 'CNNL-BMHTNLN', 'Bm Hệ thống năng lượng nhiệt', 'bm-he-thong-nang-luong-nhiet', 'CNNL');
INSERT INTO `tbldepartment` VALUES ('244', 'CNNL-BMHTTDHQTN', 'Bm Hệ thống và Tự động hoá quá trình nhiệt', 'bm-he-thong-va-tu-dong-hoa-qua-trình-nhiet', 'CNNL');
INSERT INTO `tbldepartment` VALUES ('245', 'CNNL-BMKTLDHKK', 'Bm KT lạnh & điều hoà không khí', 'bm-kt-lanh-&-dieu-hoa-khong-khi', 'CNNL');
INSERT INTO `tbldepartment` VALUES ('246', 'CNNL-BMKTN', 'Bm Kỹ thuật nhiệt', 'bm-ky-thuat-nhiet', 'CNNL');
INSERT INTO `tbldepartment` VALUES ('247', 'CNNL-PTNQTTBNL', 'PTN Quá trình và Thiết bị Nhiệt - Lạnh', 'ptn-qua-trình-va-thiet-bi-nhiet-lanh', 'CNNL');
INSERT INTO `tbldepartment` VALUES ('248', 'CNNL-TTNCUD', 'TT Nghiên cứu ứng dụng', 'tt-nghien-cuu-ung-dung', 'CNNL');
INSERT INTO `tbldepartment` VALUES ('249', 'CNNL-TTTKNLCGCN', 'TT Tiết kiệm năng lượng và CGCN', 'tt-tiet-kiem-nang-luong-va-cgcn', 'CNNL');
INSERT INTO `tbldepartment` VALUES ('250', 'CNNL-VPVKHCNNL', 'Văn phòng Viện KH&CN Nhiệt - Lạnh', 'van-phong-vien-kh&cn-nhiet-lanh', 'CNNL');
INSERT INTO `tbldepartment` VALUES ('251', 'KHKTVL-BMCHVLCKL', 'Bm Cơ học vật liệu & cán kim loại', 'bm-co-hoc-vat-lieu-&-can-kim-loai', 'KHKTVL');
INSERT INTO `tbldepartment` VALUES ('252', 'KHKTVL-BMKTGT', 'Bm Kỹ thuật gang thép', 'bm-ky-thuat-gang-thép', 'KHKTVL');
INSERT INTO `tbldepartment` VALUES ('253', 'KHKTVL-BMVLCND', 'Bm Vật liệu & Công nghệ đúc', 'bm-vat-lieu-&-cong-nghe-duc', 'KHKTVL');
INSERT INTO `tbldepartment` VALUES ('254', 'KHKTVL-BMVLHXLNBM', 'Bm Vật liệu học, xử lý nhiệt và bề mặt', 'bm-vat-lieu-hoc-xu-ly-nhiet-va-be-mặt', 'KHKTVL');
INSERT INTO `tbldepartment` VALUES ('255', 'KHKTVL-BMVLKLMC', 'Bm Vật liệu kim loại màu và compozit', 'bm-vat-lieu-kim-loai-mau-va-compozit', 'KHKTVL');
INSERT INTO `tbldepartment` VALUES ('256', 'KHKTVL-PTKCNVLKL', 'Phòng Thí nghiệm Công nghệ Vật liệu kim loại', 'phong-thi-nghiem-cong-nghe-vat-lieu-kim-loai', 'KHKTVL');
INSERT INTO `tbldepartment` VALUES ('257', 'KHKTVL-VPVKHKTVL', 'Văn phòng Viện Khoa học & Kỹ thuật vật liệu', 'van-phong-vien-khoa-hoc-&-ky-thuat-vat-lieu', 'KHKTVL');
INSERT INTO `tbldepartment` VALUES ('258', 'KTQL-BMKTH', 'Bm Kinh tế học', 'bm-kinh-te-hoc', 'KTQL');
INSERT INTO `tbldepartment` VALUES ('259', 'KTQL-BMQLCN', 'Bm Quản lý Công nghiệp', 'bm-quan-ly-cong-nghiep', 'KTQL');
INSERT INTO `tbldepartment` VALUES ('260', 'KTQL-BMQLTC', 'Bm Quản lý tài chính', 'bm-quan-ly-tai-chinh', 'KTQL');
INSERT INTO `tbldepartment` VALUES ('261', 'KTQL-BMQTKD', 'Bm Quản trị kinh doanh', 'bm-quan-tri-kinh-doanh', 'KTQL');
INSERT INTO `tbldepartment` VALUES ('262', 'KTQL-BMKHTLL', 'Bm Khoa học Quản lý và Luật', 'bm-khoa-hoc-quan-ly-va-luat', 'KTQL');
INSERT INTO `tbldepartment` VALUES ('263', 'KTQL-VPVKTQL', 'Văn phòng Viện Kinh tế & Quản lý', 'van-phong-vien-kinh-te-&-quan-ly', 'KTQL');
INSERT INTO `tbldepartment` VALUES ('264', 'KTQL-BMKTCN', 'Bm Kinh tế công nghiệp', 'bm-kinh-te-cong-nghiep', 'KTQL');
INSERT INTO `tbldepartment` VALUES ('265', 'KTHNVLMT-VKTHNVLMT', 'Viện Kỹ thuật Hạt nhân và Vật lý Môi trường', 'vien-ky-thuat-hat-nhan-va-vat-ly-moi-truờng', 'KTHNVLMT');
INSERT INTO `tbldepartment` VALUES ('266', 'KTHH-BMCNHCHD', 'Bm CN Hữu cơ - Hoá dầu', 'bm-cn-huu-co-hoa-dau', 'KTHH');
INSERT INTO `tbldepartment` VALUES ('267', 'KTHH-BMCNVLS', 'Bm CN Vật liệu Silicat', 'bm-cn-vat-lieu-silicat', 'KTHH');
INSERT INTO `tbldepartment` VALUES ('268', 'KTHH-BMCNDH', 'Bm CN Điện hoá - BVKL', 'bm-cn-dien-hoa-bvkl', 'KTHH');
INSERT INTO `tbldepartment` VALUES ('269', 'KTHH-BMCNCCVC', 'Bm Công nghệ các chất vô cơ', 'bm-cong-nghe-cac-chat-vo-co', 'KTHH');
INSERT INTO `tbldepartment` VALUES ('270', 'KTHH-BMCNHDHCBVTV', 'Bm Công nghệ Hoá dược và Hoá chất bảo vệ thực vật', 'bm-cong-nghe-hoa-duoc-va-hoa-chat-bao-ve-thuc-vat', 'KTHH');
INSERT INTO `tbldepartment` VALUES ('271', 'KTHH-BMCNI', 'Bm Công nghệ In', 'bm-cong-nghe-in', 'KTHH');
INSERT INTO `tbldepartment` VALUES ('272', 'KTHH-BMCNXG', 'Bm Công nghệ Xenluloza và Giấy', 'bm-cong-nghe-xenluloza-va-giay', 'KTHH');
INSERT INTO `tbldepartment` VALUES ('273', 'KTHH-BMHHC', 'Bm Hoá Hữu cơ', 'bm-hoa-huu-co', 'KTHH');
INSERT INTO `tbldepartment` VALUES ('274', 'KTHH-BMHL', 'Bm Hoá lý', 'bm-hoa-ly', 'KTHH');
INSERT INTO `tbldepartment` VALUES ('275', 'KTHH-BMHPT', 'Bm Hoá Phân tích', 'bm-hoa-phan-tich', 'KTHH');
INSERT INTO `tbldepartment` VALUES ('276', 'KTHH-BMHVCDC', 'Bm Hoá vô cơ & đại cương', 'bm-hoa-vo-co-&-dai-cuong', 'KTHH');
INSERT INTO `tbldepartment` VALUES ('277', 'KTHH-BMMH', 'Bm Máy hoá', 'bm-may-hoa', 'KTHH');
INSERT INTO `tbldepartment` VALUES ('278', 'KTHH-BMQTTBHH', 'Bm QT&TB hoá học', 'bm-qt&tb-hoa-hoc', 'KTHH');
INSERT INTO `tbldepartment` VALUES ('279', 'KTHH-BMXDCN', 'Bm Xây dựng công nghiệp', 'bm-xay-dung-cong-nghiep', 'KTHH');
INSERT INTO `tbldepartment` VALUES ('280', 'KTHH-PTNCNLHDVLXT', 'PTN CN Lọc hoá Dầu và VL Xúc tác, hấp phụ', 'ptn-cn-loc-hoa-dau-va-vl-xuc-tac-hap-phu', 'KTHH');
INSERT INTO `tbldepartment` VALUES ('281', 'KTHH-VPVKTHH', 'Văn phòng Viện Kỹ thuật Hoá học', 'van-phong-vien-ky-thuat-hoa-hoc', 'KTHH');
INSERT INTO `tbldepartment` VALUES ('282', 'KTDKTDH-VKTDKTDH', 'Viện Kỹ thuật điều khiển và Tự động hóa', 'vien-ky-thuat-dieu-khien-va-tu-dong-hóa', 'KTDKTDH');
INSERT INTO `tbldepartment` VALUES ('283', 'MICA-VNCQTTTDPT', 'Viện Nghiên cứu quốc tế về Thông tin đa phương tiện, truyền thông và ứng dụng (MICA)', 'vien-nghien-cuu-quoc-te-ve-thong-tin-da-phuong-tien-truyen-thong-va-ung-dung-mica', 'MICA');
INSERT INTO `tbldepartment` VALUES ('284', 'NN-VNN', 'Viện Ngoại ngữ', 'vien-ngoai-ngu', 'NN');
INSERT INTO `tbldepartment` VALUES ('285', 'NN-BMCSNNHVH', 'Bm CS ngôn ngữ học & Việt học', 'bm-cs-ngon-ngu-hoc-&-viet-hoc', 'NN');
INSERT INTO `tbldepartment` VALUES ('286', 'NN-BMLTTVM', 'Bm LT tiếng & văn minh A.M', 'bm-lt-tieng-&-van-minh-am', 'NN');
INSERT INTO `tbldepartment` VALUES ('287', 'NN-BMPV', 'Bm Pháp văn', 'bm-phap-van', 'NN');
INSERT INTO `tbldepartment` VALUES ('288', 'NN-VPVNN', 'Văn phòng Viện Ngoại ngữ', 'van-phong-vien-ngoai-ngu', 'NN');
INSERT INTO `tbldepartment` VALUES ('289', 'NN-BMTAKKT', 'Bm Tiếng Anh khối kỹ thuật', 'bm-tieng-anh-khoi-ky-thuat', 'NN');
INSERT INTO `tbldepartment` VALUES ('290', 'NN-BMTACS', 'Bm Tiếng Anh cơ sở', 'bm-tieng-anh-co-so', 'NN');
INSERT INTO `tbldepartment` VALUES ('291', 'NN-BMTACN', 'Bm Tiếng Anh chuyên nghiệp', 'bm-tieng-anh-chuyen-nghiep', 'NN');
INSERT INTO `tbldepartment` VALUES ('292', 'SPKT-BMKHCNGD', 'Bm Khoa học và Công nghệ Giáo dục', 'bm-khoa-hoc-va-cong-nghe-giao-duc', 'SPKT');
INSERT INTO `tbldepartment` VALUES ('293', 'SPKT-BMSPCNKT', 'Bm Sư phạm các ngành kỹ thuật', 'bm-su-pham-cac-nganh-ky-thuat', 'SPKT');
INSERT INTO `tbldepartment` VALUES ('294', 'SPKT-VPVSPKT', 'Văn phòng Viện Sư phạm kỹ thuật', 'van-phong-vien-su-pham-ky-thuat', 'SPKT');
INSERT INTO `tbldepartment` VALUES ('295', 'AIST-VTTKHCN', 'Viện Tiên tiến Khoa học và Công nghệ (AIST)', 'vien-tien-tien-khoa-hoc-va-cong-nghe-aist', 'AIST');
INSERT INTO `tbldepartment` VALUES ('296', 'AIST-PNCHTNLBV', 'Phòng Nghiên cứu Hệ thống Năng lượng bền vững', 'phong-nghien-cuu-he-thong-nang-luong-ben-vung', 'AIST');
INSERT INTO `tbldepartment` VALUES ('297', 'AIST-PNCKHCNNN', 'Phòng Nghiên cứu Khoa học và Công nghệ Nanô', 'phong-nghien-cuu-khoa-hoc-va-cong-nghe-nano', 'AIST');
INSERT INTO `tbldepartment` VALUES ('298', 'AIST-PTNNQDT', 'Phòng Thí nghiệm Nano Quang-Điện tử', 'phong-thi-nghiem-nano-quang-dien-tu', 'AIST');
INSERT INTO `tbldepartment` VALUES ('299', 'AIST-PTNHVDTPT', 'Phòng Thí nghiệm Hiển vi điện tử và vi phân tích', 'phong-thi-nghiem-hien-vi-dien-tu-va-vi-phan-tich', 'AIST');
INSERT INTO `tbldepartment` VALUES ('300', 'AIST-VPVTTKHCN', 'Văn phòng Viện Tiên tiến KH&CN (AIST)', 'van-phong-vien-tien-tien-kh&cn-aist', 'AIST');
INSERT INTO `tbldepartment` VALUES ('301', 'TTUD-BMTT', 'Bm Toán - Tin', 'bm-toan-tin', 'TTUD');
INSERT INTO `tbldepartment` VALUES ('302', 'TTUD-BMTCB', 'Bm Toán cơ bản', 'bm-toan-co-ban', 'TTUD');
INSERT INTO `tbldepartment` VALUES ('303', 'TTUD-BMTUD', 'Bm Toán ứng dụng', 'bm-toan-ung-dung', 'TTUD');
INSERT INTO `tbldepartment` VALUES ('304', 'TTUD-VPVTUDTH', 'Văn phòng Viện Toán ứng dụng và Tin học', 'van-phong-vien-toan-ung-dung-va-tin-hoc', 'TTUD');
INSERT INTO `tbldepartment` VALUES ('305', 'VLKT-VVLKT', 'Viện Vật lý kỹ thuật', 'vien-vat-ly-ky-thuat', 'VLKT');
INSERT INTO `tbldepartment` VALUES ('306', 'VLKT-BMQHQDT', 'Bm Quang học và Quang điện tử', 'bm-quang-hoc-va-quang-dien-tu', 'VLKT');
INSERT INTO `tbldepartment` VALUES ('307', 'VLKT-BMVLDT', 'Bm Vật liệu điện tử', 'bm-vat-lieu-dien-tu', 'VLKT');
INSERT INTO `tbldepartment` VALUES ('308', 'VLKT-BMVLLT', 'Bm Vật lý lý thuyết', 'bm-vat-ly-ly-thuyet', 'VLKT');
INSERT INTO `tbldepartment` VALUES ('309', 'VLKT-BMVLTH', 'Bm Vật lý Tin học', 'bm-vat-ly-tin-hoc', 'VLKT');
INSERT INTO `tbldepartment` VALUES ('310', 'VLKT-BMVLDC', 'Bm Vật lý đại cương', 'bm-vat-ly-dai-cuong', 'VLKT');
INSERT INTO `tbldepartment` VALUES ('311', 'VLKT-VPVVLKT', 'Văn phòng Viện Vật lý Kỹ thuật', 'van-phong-vien-vat-ly-ky-thuat', 'VLKT');
INSERT INTO `tbldepartment` VALUES ('312', 'DTLT-VDTLT', 'Viện Đào tạo liên tục', 'vien-dao-tao-lien-tuc', 'DTLT');
INSERT INTO `tbldepartment` VALUES ('313', 'ITIMS-VDTQTKHVL', 'Viện Đào tạo Quốc tế về Khoa học Vật liệu (ITIMS)', 'vien-dao-tao-quoc-te-ve-khoa-hoc-vat-lieu-itims', 'ITIMS');
INSERT INTO `tbldepartment` VALUES ('314', 'ITIMS-PTNCNVSHTCB', 'PTN. Công nghệ Vi hệ thống và cảm biến', 'ptn-cong-nghe-vi-he-thong-va-cam-bien', 'ITIMS');
INSERT INTO `tbldepartment` VALUES ('315', 'ITIMS-PTNNNTSDNDC', 'PTN. Nano từ và Siêu dẫn Nhiệt độ cao', 'ptn-nano-từ-va-sieu-dan-nhiet-do-cao', 'ITIMS');
INSERT INTO `tbldepartment` VALUES ('316', 'DTSDH-VDTSDH', 'Viện Đào tạo Sau đại học', 'vien-dao-tao-sau-dai-hoc', 'DTSDH');
INSERT INTO `tbldepartment` VALUES ('317', 'D-BMHTD', 'Bm Hệ thống điện', 'bm-he-thong-dien', 'D');
INSERT INTO `tbldepartment` VALUES ('318', 'D-BMKTDTHCN', 'Bm Kỹ thuật Đo và Tin học CN', 'bm-ky-thuat-do-va-tin-hoc-cn', 'D');
INSERT INTO `tbldepartment` VALUES ('319', 'D-BMTBDDT', 'Bm Thiết bị điện - Điện tử', 'bm-thiet-bi-dien-dien-tu', 'D');
INSERT INTO `tbldepartment` VALUES ('320', 'D-BMDKTD', 'Bm Điều khiển tự động', 'bm-dieu-khien-tu-dong', 'D');
INSERT INTO `tbldepartment` VALUES ('321', 'D-VPVD', 'Văn phòng Viện Điện', 'van-phong-vien-dien', 'D');
INSERT INTO `tbldepartment` VALUES ('322', 'D-BMTDHCN', 'Bm Tự động hóa công nghiệp', 'bm-tu-dong-hóa-cong-nghiep', 'D');
INSERT INTO `tbldepartment` VALUES ('323', 'DTVT-BMCNDTKTYS', 'Bm Công nghệ điện tử và Kỹ thuật Y sinh', 'bm-cong-nghe-dien-tu-va-ky-thuat-y-sinh', 'DTVT');
INSERT INTO `tbldepartment` VALUES ('324', 'DTVT-BMHTVT', 'Bm Hệ thống viễn thông', 'bm-he-thong-vien-thong', 'DTVT');
INSERT INTO `tbldepartment` VALUES ('325', 'DTVT-BMKTTT', 'Bm Kỹ thuật thông tin', 'bm-ky-thuat-thong-tin', 'DTVT');
INSERT INTO `tbldepartment` VALUES ('326', 'DTVT-BMMXLTH', 'Bm Mạch và xử lý tín hiệu', 'bm-mach-va-xu-ly-tin-hieu', 'DTVT');
INSERT INTO `tbldepartment` VALUES ('327', 'DTVT-BMDTKTMT', 'Bm Điện tử và Kỹ thuật máy tính', 'bm-dien-tu-va-ky-thuat-may-tinh', 'DTVT');
INSERT INTO `tbldepartment` VALUES ('328', 'DTVT-BMDTHKVT', 'Bm Điện tử Hàng không-Vũ trụ', 'bm-dien-tu-hang-khong-vu-tru', 'DTVT');
INSERT INTO `tbldepartment` VALUES ('329', 'DTVT-TTDTTHDTVT', 'TT Đào tạo thực hành ĐT-VT', 'tt-dao-tao-thuc-hanh-dt-vt', 'DTVT');
INSERT INTO `tbldepartment` VALUES ('330', 'DTVT-VPVDTVT', 'Văn phòng Viện Điện tử Viễn thông', 'van-phong-vien-dien-tu-vien-thong', 'DTVT');
INSERT INTO `tbldepartment` VALUES ('331', 'DTQT-VDTQT', 'Viện Đào tạo quốc tế', 'vien-dao-tao-quoc-te', 'DTQT');
INSERT INTO `tbldepartment` VALUES ('332', 'NCQTKHKTTT-VNCQTKHKTTT', 'Viện Nghiên cứu Quốc tế về Khoa học và Kỹ thuật tính toán', 'vien-nghien-cuu-quoc-te-ve-khoa-hoc-va-ky-thuat-tinh-toan', 'NCQTKHKTTT');
INSERT INTO `tbldepartment` VALUES ('333', 'NCCNKGDN-VNCCNKGDN', 'Viện Nghiên cứu công nghệ không gian và dưới nước', 'vien-nghien-cuu-cong-nghe-khong-gian-va-duoi-nuoc', 'NCCNKGDN');
INSERT INTO `tbldepartment` VALUES ('334', 'KHCNQTVNNB-VKHCNQTVNNB', 'Viện Khoa học Công nghệ quốc tế Việt Nam Nhật Bản', 'vien-khoa-hoc-cong-nghe-quoc-te-viet-nam-nhat-ban', 'KHCNQTVNNB');
INSERT INTO `tbldepartment` VALUES ('335', 'QTNCT-BQTTNCT', 'Ban Quản trị các tòa nhà cao tầng', 'ban-quan-tri-cac-toa-nha-cao-tang', 'QTNCT');
INSERT INTO `tbldepartment` VALUES ('336', 'PBV-PBV', 'Phòng Bảo vệ', 'phong-bao-ve', 'PBV');
INSERT INTO `tbldepartment` VALUES ('337', 'CTCTSV-PCTCTSV', 'Phòng Công tác Chính trị và Công tác sinh viên', 'phong-cong-tac-chinh-tri-va-cong-tac-sinh-vien', 'CTCTSV');
INSERT INTO `tbldepartment` VALUES ('338', 'HCTH-PHCTH', 'Phòng Hành chính tổng hợp', 'phong-hanh-chinh-tong-hop', 'HCTH');
INSERT INTO `tbldepartment` VALUES ('339', 'HTQT-PHTQT', 'Phòng Hợp tác Quốc tế', 'phong-hop-tac-quoc-te', 'HTQT');
INSERT INTO `tbldepartment` VALUES ('340', 'KHTV-PKHTV', 'Phòng Kế hoạch -Tài vụ', 'phong-ke-hoach-tai-vu', 'KHTV');
INSERT INTO `tbldepartment` VALUES ('341', 'KHCN-PKHCN', 'Phòng Khoa học - Công nghệ', 'phong-khoa-hoc-cong-nghe', 'KHCN');
INSERT INTO `tbldepartment` VALUES ('342', 'PQT-PQT', 'Phòng Quản trị', 'phong-quan-tri', 'PQT');
INSERT INTO `tbldepartment` VALUES ('343', 'PTB-PTB', 'Phòng Thiết bị', 'phong-thiet-bi', 'PTB');
INSERT INTO `tbldepartment` VALUES ('344', 'TCCB-PTCCB', 'Phòng Tổ chức Cán bộ', 'phong-to-chuc-can-bo', 'TCCB');
INSERT INTO `tbldepartment` VALUES ('345', 'DTDH-PDTDH', 'Phòng Đào tạo Đại học', 'phong-dao-tao-dai-hoc', 'DTDH');
INSERT INTO `tbldepartment` VALUES ('346', 'TVTQB-PTTTM', 'Phòng Thông tin thư mục', 'phong-thong-tin-thu-muc', 'TVTQB');
INSERT INTO `tbldepartment` VALUES ('347', 'TVTQB-PDVTT', 'Phòng Dịch vụ Thông tin', 'phong-dich-vu-thong-tin', 'TVTQB');
INSERT INTO `tbldepartment` VALUES ('348', 'TVTQB-PXLTT', 'Phòng Xử lý thông tin', 'phong-xu-ly-thong-tin', 'TVTQB');
INSERT INTO `tbldepartment` VALUES ('349', 'TTMTT-TTMTT', 'Trung tâm Mạng thông tin', 'trung-tam-mang-thong-tin', 'TTMTT');
INSERT INTO `tbldepartment` VALUES ('350', 'TTYTBK-TTYTBK', 'Trung tâm Y tế Bách khoa', 'trung-tam-y-te-bach-khoa', 'TTYTBK');
INSERT INTO `tbldepartment` VALUES ('351', 'TTDBCL-TTDBCL', 'Trung tâm Đảm bảo chất lượng', 'trung-tam-dam-bao-chat-luong', 'TTDBCL');
INSERT INTO `tbldepartment` VALUES ('352', 'VPCD-VPCD', 'Văn phòng Công đoàn', 'van-phong-cong-doan', 'VPCD');
INSERT INTO `tbldepartment` VALUES ('353', 'VPDU-VPDU', 'Văn phòng Đảng uỷ', 'van-phong-dang-uy', 'VPDU');
INSERT INTO `tbldepartment` VALUES ('354', 'VPDTN-VPDTNCSHCM', 'Văn phòng Đoàn TN CSHCM', 'van-phong-doan-tn-cshcm', 'VPDTN');
INSERT INTO `tbldepartment` VALUES ('355', 'TTQHCC-TTTTQHCC', 'Trung tâm Truyền thông và quan hệ công chúng', 'trung-tam-truyen-thong-va-quan-he-cong-chung', 'TTQHCC');
INSERT INTO `tbldepartment` VALUES ('356', 'TTQLKTX-TTQLKTX', 'Trung tâm Quản lý Ký túc xá', 'trung-tam-quan-ly-ky-tuc-xa', 'TTQLKTX');
INSERT INTO `tbldepartment` VALUES ('357', 'QLDADT-BQLDADT', 'Ban Quản lý các Dự án đầu tư', 'ban-quan-ly-cac-du-an-dau-tu', 'QLDADT');
INSERT INTO `tbldepartment` VALUES ('358', 'NCUDSTCN-TTNCUDSTCN', 'Trung tâm Nghiên cứu ứng dụng và Sáng tạo công nghệ', 'trung-tam-nghien-cuu-ung-dung-va-sang-tao-cong-nghe', 'NCUDSTCN');
INSERT INTO `tbldepartment` VALUES ('359', 'TTNCPOL-TTNCVLP', 'Trung tâm Nghiên cứu vật liệu Polyme', 'trung-tam-nghien-cuu-vat-lieu-polyme', 'TTNCPOL');
INSERT INTO `tbldepartment` VALUES ('360', 'NAVIS-TTQTNCPTCNDVVT', 'Trung tâm Quốc tế Nghiên cứu và Phát triển công nghệ định vị sử dụng vệ tinh (NAVIS)', 'trung-tam-quoc-te-nghien-cuu-va-phat-trien-cong-nghe-dinh-vi-su-dung-ve-tinh-navis', 'NAVIS');
INSERT INTO `tbldepartment` VALUES ('361', 'TTTTVH-TTTTVH', 'Trung tâm Thể thao-Văn hoá', 'trung-tam-the-thao-van-hoa', 'TTTTVH');
INSERT INTO `tbldepartment` VALUES ('362', 'TTTP-TTTP', 'Trung tâm tiếng Pháp', 'trung-tam-tieng-phap', 'TTTP');
INSERT INTO `tbldepartment` VALUES ('363', 'TTKHKTVD-TTTDKHKTVD', 'Trung tâm trao đổi KHKT Việt Đức', 'trung-tam-trao-doi-khkt-viet-duc', 'TTKHKTVD');
INSERT INTO `tbldepartment` VALUES ('364', 'TTDTBDCN-TTDTBDCN', 'Trung tâm Đào tạo Bảo dưỡng công nghiệp', 'trung-tam-dao-tao-bao-duong-cong-nghiep', 'TTDTBDCN');
INSERT INTO `tbldepartment` VALUES ('365', 'DTYS-TTDTYS', 'Trung tâm Điện tử Y sinh', 'trung-tam-dien-tu-y-sinh', 'DTYS');
INSERT INTO `tbldepartment` VALUES ('366', 'TTNN-TTNN', 'Trung tâm Ngoại ngữ', 'trung-tam-ngoai-ngu', 'TTNN');
INSERT INTO `tbldepartment` VALUES ('367', 'NXBBK-NXBBK', 'Nhà xuất bản Bách Khoa Hà Nội', 'nha-xuat-ban-bach-khoa-ha-noi', 'NXBBK');
INSERT INTO `tbldepartment` VALUES ('368', 'TTPVBK-TTPVBK', 'Trung tâm Phục vụ Bách khoa', 'trung-tam-phuc-vu-bach-khoa', 'TTPVBK');

-- ----------------------------
-- Table structure for `tblfaculty`
-- ----------------------------
DROP TABLE IF EXISTS `tblfaculty`;
CREATE TABLE `tblfaculty` (
  `Faculty_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Faculty_Code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Faculty_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Faculty_AsciiName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Faculty_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tblfaculty
-- ----------------------------
INSERT INTO `tblfaculty` VALUES ('100', 'GDQP', 'Khoa Giáo dục Quốc phòng', 'khoa-giao-duc-quoc-phong');
INSERT INTO `tblfaculty` VALUES ('101', 'GDTC', 'Khoa Giáo dục Thể chất', 'khoa-giao-duc-the-chat');
INSERT INTO `tblfaculty` VALUES ('102', 'LLCT', 'Khoa Lý luận chính trị', 'khoa-ly-luan-chinh-tri');
INSERT INTO `tblfaculty` VALUES ('103', 'CK', 'Viện Cơ khí', 'vien-co-khi');
INSERT INTO `tblfaculty` VALUES ('104', 'CKDL', 'Viện Cơ khí Động lực', 'vien-co-khi-dong-luc');
INSERT INTO `tblfaculty` VALUES ('105', 'CNSHTP', 'Viện Công nghệ Sinh học và Công nghệ Thực phẩm', 'vien-cong-nghe-sinh-học-va-cong-nghe-thuc-pham');
INSERT INTO `tblfaculty` VALUES ('106', 'SOICT', 'Viện Công nghệ Thông tin và Truyền thông', 'vien-cong-nghe-thong-tin-va-truyen-thong');
INSERT INTO `tblfaculty` VALUES ('107', 'DMDGTT', 'Viện Dệt may-Da giầy và Thời trang', 'vien-det-may-da-giay-va-thoi-trang');
INSERT INTO `tblfaculty` VALUES ('108', 'CNMT', 'Viện Khoa học và Công nghệ Môi trường', 'vien-khoa-học-va-cong-nghe-moi-truong');
INSERT INTO `tblfaculty` VALUES ('109', 'CNNL', 'Viện Khoa học và Công nghệ Nhiệt Lạnh', 'vien-khoa-học-va-cong-nghe-nhiet-lanh');
INSERT INTO `tblfaculty` VALUES ('110', 'KHKTVL', 'Viện Khoa học và Kỹ thuật vật liệu', 'vien-khoa-học-va-ky-thuat-vat-lieu');
INSERT INTO `tblfaculty` VALUES ('111', 'KTQL', 'Viện Kinh tế và Quản lý', 'vien-kinh-te-va-quan-ly');
INSERT INTO `tblfaculty` VALUES ('112', 'KTHNVLMT', 'Viện Kỹ thuật Hạt nhân và Vật lý Môi trường', 'vien-ky-thuat-hat-nhan-va-vat-ly-moi-truong');
INSERT INTO `tblfaculty` VALUES ('113', 'KTHH', 'Viện Kỹ thuật Hoá học', 'vien-ky-thuat-hoa-học');
INSERT INTO `tblfaculty` VALUES ('114', 'KTDKTDH', 'Viện Kỹ thuật điều khiển và Tự động hóa', 'vien-ky-thuat-dieu-khien-va-tu-dong-hóa');
INSERT INTO `tblfaculty` VALUES ('115', 'MICA', 'Viện Nghiên cứu quốc tế về Thông tin đa phương tiện, truyền thông và ứng dụng (MICA)', 'vien-nghien-cuu-quoc-te-ve-thong-tin-da-phuong-tien-truyen-thong-va-ung-dung-mica');
INSERT INTO `tblfaculty` VALUES ('116', 'NCPTUDHCTN', 'Viện Nghiên cứu và Phát triển ứng dụng các hợp chất thiên nhiên', 'vien-nghien-cuu-va-phat-trien-ung-dung-cac-hop-chat-thien-nhien');
INSERT INTO `tblfaculty` VALUES ('117', 'NN', 'Viện Ngoại ngữ', 'vien-ngoai-ngu');
INSERT INTO `tblfaculty` VALUES ('118', 'SPKT', 'Viện Sư phạm Kỹ thuật', 'vien-su-pham-ky-thuat');
INSERT INTO `tblfaculty` VALUES ('119', 'AIST', 'Viện Tiên tiến Khoa học và Công nghệ (AIST)', 'vien-tien-tien-khoa-học-va-cong-nghe-aist');
INSERT INTO `tblfaculty` VALUES ('120', 'TTUD', 'Viện Toán ứng dụng và Tin học', 'vien-toan-ung-dung-va-tin-học');
INSERT INTO `tblfaculty` VALUES ('121', 'VLKT', 'Viện Vật lý kỹ thuật', 'vien-vat-ly-ky-thuat');
INSERT INTO `tblfaculty` VALUES ('122', 'DTLT', 'Viện Đào tạo liên tục', 'vien-dao-tao-lien-tuc');
INSERT INTO `tblfaculty` VALUES ('123', 'DTQTKHVL', 'Viện Đào tạo Quốc tế về Khoa học Vật liệu (ITIMS)', 'vien-dao-tao-quoc-te-ve-khoa-học-vat-lieu-(itims)');
INSERT INTO `tblfaculty` VALUES ('124', 'DTSDH', 'Viện Đào tạo Sau đại học', 'vien-dao-tao-sau-dai-học');
INSERT INTO `tblfaculty` VALUES ('125', 'D', 'Viện Điện', 'vien-dien');
INSERT INTO `tblfaculty` VALUES ('126', 'DTVT', 'Viện Điện tử - Viễn thông', 'vien-dien-tu-vien-thong');
INSERT INTO `tblfaculty` VALUES ('127', 'DTQT', 'Viện Đào tạo quốc tế', 'vien-dao-tao-quoc-te');
INSERT INTO `tblfaculty` VALUES ('128', 'NCQTKHKTTT', 'Viện Nghiên cứu Quốc tế về Khoa học và Kỹ thuật tính toán', 'vien-nghien-cuu-quoc-te-ve-khoa-học-va-ky-thuat-tinh-toan');
INSERT INTO `tblfaculty` VALUES ('129', 'NCCNKGDN', 'Viện Nghiên cứu công nghệ không gian và dưới nước', 'vien-nghien-cuu-cong-nghe-khong-gian-va-duới-nuớc');
INSERT INTO `tblfaculty` VALUES ('130', 'KHCNQTVNNB', 'Viện Khoa học Công nghệ quốc tế Việt Nam Nhật Bản', 'vien-khoa-học-cong-nghe-quoc-te-viet-nam-nhat-ban');
INSERT INTO `tblfaculty` VALUES ('131', 'QTNCT', 'Ban Quản trị các tòa nhà cao tầng', 'ban-quan-tri-cac-toa-nha-cao-tang');
INSERT INTO `tblfaculty` VALUES ('132', 'PBV', 'Phòng Bảo vệ', 'phong-bao-ve');
INSERT INTO `tblfaculty` VALUES ('133', 'CTCTSV', 'Phòng Công tác Chính trị và Công tác sinh viên', 'phong-cong-tac-chinh-tri-va-cong-tac-sinh-vien');
INSERT INTO `tblfaculty` VALUES ('134', 'HCTH', 'Phòng Hành chính tổng hợp', 'phong-hanh-chinh-tong-hop');
INSERT INTO `tblfaculty` VALUES ('135', 'HTQT', 'Phòng Hợp tác Quốc tế', 'phong-hop-tac-quoc-te');
INSERT INTO `tblfaculty` VALUES ('136', 'KHTV', 'Phòng Kế hoạch -Tài vụ', 'phong-ke-hoach-tai-vu');
INSERT INTO `tblfaculty` VALUES ('137', 'KHCN', 'Phòng Khoa học - Công nghệ', 'phong-khoa-học-cong-nghe');
INSERT INTO `tblfaculty` VALUES ('138', 'PQT', 'Phòng Quản trị', 'phong-quan-tri');
INSERT INTO `tblfaculty` VALUES ('139', 'PTB', 'Phòng Thiết bị', 'phong-thiet-bi');
INSERT INTO `tblfaculty` VALUES ('140', 'TCCB', 'Phòng Tổ chức Cán bộ', 'phong-to-chuc-can-bo');
INSERT INTO `tblfaculty` VALUES ('141', 'DTDH', 'Phòng Đào tạo Đại học', 'phong-dao-tao-dai-học');
INSERT INTO `tblfaculty` VALUES ('142', 'TVTQB', 'Thư viện Tạ Quang Bửu', 'thu-vien-ta-quang-buu');
INSERT INTO `tblfaculty` VALUES ('143', 'TTMTT', 'Trung tâm Mạng thông tin', 'trung-tam-mang-thong-tin');
INSERT INTO `tblfaculty` VALUES ('144', 'TTYTBK', 'Trung tâm Y tế Bách khoa', 'trung-tam-y-te-bach-khoa');
INSERT INTO `tblfaculty` VALUES ('145', 'TTDBCL', 'Trung tâm Đảm bảo chất lượng', 'trung-tam-dam-bao-chat-luong');
INSERT INTO `tblfaculty` VALUES ('146', 'VPCD', 'Văn phòng Công đoàn', 'van-phong-cong-doan');
INSERT INTO `tblfaculty` VALUES ('147', 'VPDU', 'Văn phòng Đảng uỷ', 'van-phong-dang-uy');
INSERT INTO `tblfaculty` VALUES ('148', 'VPDTN', 'Văn phòng Đoàn TN CSHCM', 'van-phong-doan-tn-cshcm');
INSERT INTO `tblfaculty` VALUES ('149', 'TTQHCC', 'Trung tâm Truyền thông và quan hệ công chúng', 'trung-tam-truyen-thong-va-quan-he-cong-chung');
INSERT INTO `tblfaculty` VALUES ('150', 'TTQLKTX', 'Trung tâm Quản lý Ký túc xá', 'trung-tam-quan-ly-ky-tuc-xa');
INSERT INTO `tblfaculty` VALUES ('151', 'QLDADT', 'Ban Quản lý các Dự án đầu tư', 'ban-quan-ly-cac-du-an-dau-tu');
INSERT INTO `tblfaculty` VALUES ('152', 'NCUDSTCN', 'Trung tâm Nghiên cứu ứng dụng và Sáng tạo công nghệ', 'trung-tam-nghien-cuu-ung-dung-va-sang-tao-cong-nghe');
INSERT INTO `tblfaculty` VALUES ('153', 'TTNCPOL', 'Trung tâm Nghiên cứu vật liệu Polyme', 'trung-tam-nghien-cuu-vat-lieu-polyme');
INSERT INTO `tblfaculty` VALUES ('154', 'NAVIS', 'Trung tâm Quốc tế Nghiên cứu và Phát triển công nghệ định vị sử dụng vệ tinh (NAVIS)', 'trung-tam-quoc-te-nghien-cuu-va-phat-trien-cong-nghe-dinh-vi-su-dung-ve-tinh-navis');
INSERT INTO `tblfaculty` VALUES ('155', 'TTTTVH', 'Trung tâm Thể thao-Văn hoá', 'trung-tam-the-thao-van-hoa');
INSERT INTO `tblfaculty` VALUES ('156', 'TTTP', 'Trung tâm tiếng Pháp', 'trung-tam-tieng-phap');
INSERT INTO `tblfaculty` VALUES ('157', 'TTKHKTVD', 'Trung tâm trao đổi KHKT Việt Đức', 'trung-tam-trao-doi-khkt-viet-duc');
INSERT INTO `tblfaculty` VALUES ('158', 'TTDTBDCN', 'Trung tâm Đào tạo Bảo dưỡng công nghiệp', 'trung-tam-dao-tao-bao-duong-cong-nghiep');
INSERT INTO `tblfaculty` VALUES ('159', 'DTYS', 'Trung tâm Điện tử Y sinh', 'trung-tam-dien-tu-y-sinh');
INSERT INTO `tblfaculty` VALUES ('160', 'TTNN', 'Trung tâm Ngoại ngữ', 'trung-tam-ngoai-ngu');
INSERT INTO `tblfaculty` VALUES ('161', 'NXBBK', 'Nhà xuất bản Bách Khoa Hà Nội', 'nha-xuat-ban-bach-khoa-ha-noi');
INSERT INTO `tblfaculty` VALUES ('162', 'TTPVBK', 'Trung tâm Phục vụ Bách khoa', 'trung-tam-phuc-vu-bach-khoa');

-- ----------------------------
-- Table structure for `tblfunctions`
-- ----------------------------
DROP TABLE IF EXISTS `tblfunctions`;
CREATE TABLE `tblfunctions` (
  `FUNC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FUNC_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã chức năng',
  `FUNC_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên chức năng',
  `FUNC_URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Url link to the page',
  PRIMARY KEY (`FUNC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tblfunctions
-- ----------------------------
INSERT INTO `tblfunctions` VALUES ('1', 'MANAGE-USERS', 'Quản lý thông tin Users', '/users.html');
INSERT INTO `tblfunctions` VALUES ('2', 'MANAGE-PAPERS', 'Quản lý Bài báo', '/papers.html');
INSERT INTO `tblfunctions` VALUES ('3', 'MANAGE-TOPICS', 'Quản lý Đề tài', '/topics.html');
INSERT INTO `tblfunctions` VALUES ('4', 'MANAGE-PATENTS', 'Quản lý Bằng sáng chế', '/patents.html');
INSERT INTO `tblfunctions` VALUES ('5', 'MANAGE-SUMMARY', 'Tổng hợp kê khai', '/summary.html');
INSERT INTO `tblfunctions` VALUES ('6', 'MANAGE-PRODUCTS', 'Quản lý thực hiện đề tài', '/products.html');

-- ----------------------------
-- Table structure for `tbljournalindex`
-- ----------------------------
DROP TABLE IF EXISTS `tbljournalindex`;
CREATE TABLE `tbljournalindex` (
  `JNAL_ID` int(11) NOT NULL,
  `JNAL_IndexCode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `JNAL_Description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`JNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbljournalindex
-- ----------------------------
INSERT INTO `tbljournalindex` VALUES ('0', 'Other', 'Others');
INSERT INTO `tbljournalindex` VALUES ('1', 'SCI', 'SCI Description');
INSERT INTO `tbljournalindex` VALUES ('2', 'SCIE', 'SCIE Description');

-- ----------------------------
-- Table structure for `tbljurysubmittedprojectroles`
-- ----------------------------
DROP TABLE IF EXISTS `tbljurysubmittedprojectroles`;
CREATE TABLE `tbljurysubmittedprojectroles` (
  `JUPRJROL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `JUPRJROL_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã vai trò',
  `JUPRJROL_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên vai trò',
  PRIMARY KEY (`JUPRJROL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbljurysubmittedprojectroles
-- ----------------------------

-- ----------------------------
-- Table structure for `tbljurysubmittedprojects`
-- ----------------------------
DROP TABLE IF EXISTS `tbljurysubmittedprojects`;
CREATE TABLE `tbljurysubmittedprojects` (
  `JUSUPRJ_ID` int(11) NOT NULL AUTO_INCREMENT,
  `JUSUPRJ_STAFFCODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã thành viên (tham chiếu tblstaffs)',
  `JUSUPRJ_PRJCALLCODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã đợt gọi đề tài (tham chiếu tblprojectcalls)',
  `JUPSURJ_ROLECODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã vai trò của thành viên hội đồng xét (tham chiếu tbljurysubmittedprojectroles)',
  PRIMARY KEY (`JUSUPRJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbljurysubmittedprojects
-- ----------------------------

-- ----------------------------
-- Table structure for `tblpapercategory`
-- ----------------------------
DROP TABLE IF EXISTS `tblpapercategory`;
CREATE TABLE `tblpapercategory` (
  `PCAT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PCAT_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PCAT_Description` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `PCAT_Code` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PCAT_Journal` varchar(30) NOT NULL COMMENT 'The loai bai bao',
  `PCAT_Budget` int(11) NOT NULL COMMENT 'Tien ',
  `PCAT_ConvertedHours` int(11) NOT NULL COMMENT 'So gio quy doi',
  PRIMARY KEY (`PCAT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblpapercategory
-- ----------------------------
INSERT INTO `tblpapercategory` VALUES ('1', 'Tạp chí khoa học quốc tế SCI', 'Tạp chí khoa học quốc tế SCI', 'JINT_SCI', 'SCI', '0', '900');
INSERT INTO `tblpapercategory` VALUES ('2', 'Tạp chí khoa học trong nước', 'Tạp chí khoa học trong nước', 'JDOM_Other', 'Other', '0', '600');
INSERT INTO `tblpapercategory` VALUES ('3', 'Hội nghị quốc tế', 'Hội nghị quốc tế', 'CINT_Other', 'Other', '0', '600');
INSERT INTO `tblpapercategory` VALUES ('4', 'Hội nghị trong nước', 'Hội nghị trong nước', 'CDOM_Other', 'Other', '0', '400');
INSERT INTO `tblpapercategory` VALUES ('5', 'Tạp chí khoa học quốc tế SCIE', 'Tạp chí khoa học quốc tế SCIE', 'JINT_SCIE', 'SCIE', '0', '900');
INSERT INTO `tblpapercategory` VALUES ('6', 'Tạp chí khoa học quốc tế', 'Tạp chí khoa học quốc tế', 'JINT_Other', 'Other', '0', '900');

-- ----------------------------
-- Table structure for `tblpapersdeclaration`
-- ----------------------------
DROP TABLE IF EXISTS `tblpapersdeclaration`;
CREATE TABLE `tblpapersdeclaration` (
  `PDECL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PDECL_PaperCategory_Code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `PDECL_User_Code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `PDECL_PublicationName` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'free text',
  `PDECL_JournalConferenceName` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'free text',
  `PDECL_Volumn` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ten tap chi dang de tai duoc cong bo ',
  `PDECL_Year` int(11) NOT NULL COMMENT 'free text',
  `PDECL_ISSN` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'free text',
  `PDECL_IndexCode` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'mapped by journal index',
  `PDECL_PublicationConvertedHours` int(11) NOT NULL COMMENT 'free text',
  `PDECL_AuthorConvertedHours` int(11) NOT NULL COMMENT 'free text',
  `PDECL_AuthorList` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Contain list of all authors',
  `PDECL_ReportingAcademicDate` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `PDECL_SourceFile` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`PDECL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tblpapersdeclaration
-- ----------------------------
INSERT INTO `tblpapersdeclaration` VALUES ('40', 'JINT_Other', 'binhht', 'Multi-objective genetic algorithm for solving Multi-layer optical survivable network design problem', 'Journal of Convergence', '5', '2015', '2093-7741', 'Other', '900', '900', 'Huynh Thi Thanh Binh', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\binhht_01150717082015_JoC-A4.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('42', 'CINT_Other', 'dungpq', ' Solving the Quorumcast Routing Problem as a Mixed Integer Program', '11th International Conference on Integration of AI and OR Techniques in Constraint Programming for Combinatorial Optimization Problems (CPAIOR 2014), Cork, Ireland', '0', '2014', '', 'Other', '600', '200', 'BUI Quoc Trung, PHAM Quang Dung, Yves Deville', '2013-2014', null);
INSERT INTO `tblpapersdeclaration` VALUES ('43', 'CINT_Other', 'dungpq', 'Solving the Agricultural Land Allocation Problem by Constraint-Based Local Search', '19th International Conference on Principles and Practice of Constraint Programming (CP 2013), Uppsala, Sweden', '0', '2013', '', 'Other', '600', '200', 'BUI Quoc Trung, PHAM Quang Dung, Yves Deville', '2013-2014', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\dungpq_17001008062015_cp2013_LandAlloc.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('44', 'JINT_SCIE', 'dungpq', 'LS(Graph): a Constraint-Based Local Search for Constraint Optimization on Trees and Paths', 'Journal of Constraints', '4', '2012', '1383-7133', 'SCIE', '900', '300', 'PHAM Quang Dung, Yves Deville, Pascal Van Hentenryck', '2012-2013', null);
INSERT INTO `tblpapersdeclaration` VALUES ('45', 'JINT_SCIE', 'dungpq', 'Solving the Quorumcast Routing Problem by Constraint Programming', 'Journal of Constraints', '0', '2012', '1383-7133', 'SCIE', '900', '450', 'PHAM Quang Dung, Yves Deville', '2012-2013', null);
INSERT INTO `tblpapersdeclaration` VALUES ('46', 'CINT_Other', 'dungpq', 'Solving the Longest Simple Path Problem by Constraint-Based Techniques', '9th International Conference on Integration of AI and OR Techniques in Constraint Programming for Combinatorial Optimization Problems (CPAIOR 2012), Lecture Notes in Computer Science, Springer', '0', '2012', '', 'Other', '600', '300', 'PHAM Quang Dung, Yves Deville', '2012-2013', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\dungpq_03475024082015_paper.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('47', 'JINT_SCI', 'thieuvv', 'Graphics processing unit optimizations for the dynamics of the HIRLAM weather forecast model', 'Concurrency and Computation: Practice and Experience', '25', '2013', '1376-1393', 'SCI', '900', '300', 'Van Thieu Vu, Gerard Cats, Lex Wolters', '2012-2013', null);
INSERT INTO `tblpapersdeclaration` VALUES ('52', 'CINT_Other', 'linhnv', 'An Effective NMF-Based Method for Supervised Dimension Reduction', 'Knowledge and Systems Engineering - Proceedings of the Sixth International Conference KSE 2014', 'Volume 326, pp 93-104 ', '2014', '978-3-319-11679-2', 'Other', '600', '200', 'Ngo Van Linh, Nguyen Kim Anh, Khoat Than', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\linhnv_08075627072015_Paper_kse.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('53', 'CINT_Other', 'linhnv', 'An interpretable method for text summarization based on simplicial non-negative matrix factorization', 'Symposium on Information and Communication Technology, SoICT \'14', 'Pages 57-64 ', '2014', '978-1-4503-2930-9', 'Other', '600', '200', 'Nguyen Kim Anh, Nguyen Khac Toi, Ngo Van Linh', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\linhnv_08070127072015_anh2014.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('54', 'CINT_Other', 'linhnv', 'Effective and Interpretable Document Classification Using Distinctly Labeled Dirichlet Process Mixture Models of von Mises-Fisher Distributions', 'Database Systems for Advanced Applications', 'Volume 9050, 2015, pp 139-153 ', '2015', '978-3-319-18122-6', 'Other', '600', '150', 'Ngo Van Linh, Nguyen Kim Anh, Khoat Than, Nguyen Nguyen Tat', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\linhnv_08033627072015_Paper_Dasfaa.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('55', 'CINT_Other', 'sangdv', 'Improving semantic texton forests with a Markov random field for image segmentation', 'The Fifth Symposium on Information and Communication Technology', '0', '2014', '978-1-4503-2930-9', 'Other', '600', '120', 'Dinh Viet Sang, Mai Dinh Loi, Nguyen Tien Quang, Huynh Thi Thanh Binh, Nguyen Thi Thuy', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\sangdv_04533805082015_Improving STFs with a MRF for Image Segmentation_SoICT2014_Final.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('56', 'JINT_Other', 'sangdv', 'Evaluation of parametric acyclic Markov models for dependent objects', 'Journal of Machine Learning and Data Analysis', '1', '2014', '2223-3792', 'Other', '900', '450', 'Dvoenko S.D., Sang D.V.', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\sangdv_06194917082015_JMLDA2014no8.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('57', 'CINT_Other', 'minhnb', 'Towards a Semantic Model of Resource in Cloud Environment', '5th International Symposium on Information and Communication Technology (SOICT2014)', 'vol. 1, pp 271-279', '2014', '978-1-4503-2930-9', 'Other', '600', '300', 'Nguyen Binh Minh, Dao Quang Minh', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\minhnb_15142927072015_Towards a Semantic Model of Resource in Cloud Environment.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('61', 'JINT_Other', 'binhht', 'All Capacities Modular Cost Survivable Network Design Problem using Genetic Algorithm with Completely Connection Encoding', 'Human-centric Computing and Information Sciences', '0', '2014', '2192-1962', 'Other', '900', '450', 'Huynh Thi Thanh Binh, Ngo Hong Son', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\binhht_06105021082015_art%3A10.1186%2Fs13673-014-0013-y.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('62', 'JINT_SCIE', 'binhht', 'A Multi-Objective Approach for Solving the Survivable Network Design Problem with Simultaneous Unicast and Anycast Flows', 'Applied Soft Computing', '1145-1154', '2014', '1568-4946', 'SCIE', '900', '225', 'Huynh Thi Thanh Binh, Bui Thu Lam, Nguyen Sy Thai Ha, Hisao Ishibuchi,', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\binhht_06092721082015_1-s2.0-S1568494614002634-main.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('63', 'CINT_Other', 'binhht', 'Improving Semantic Texton Forests with a Markov Random Field for Image Segmentation', 'Symposium on Information and Communication Technology', '162-171', '2014', '978-1-4503-3843-1', 'Other', '600', '120', 'Dinh Viet Sang, Mai Dinh Loi, Nguyen Tien Quang, Huynh Thi Thanh Binh, Nguyen Thi Thuy', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\binhht_06055821082015_p162-sang.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('64', 'CINT_Other', 'binhht', 'New mechanism of combination crossover operators in genetic algorithm for solving the traveling salesman problem', 'Proceedings of the Sixth International Conference on Knowledge and Systems Engineering (KSE 2014)', '367-379', '2014', '2194-5357', 'Other', '600', '300', 'Pham Dinh Thanh, Huynh Thi Thanh Binh and Bui Thu Lam', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\binhht_06073921082015_AISC_KSE2014_Proceeding_Bai bao.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('66', 'CINT_Other', 'khoattq', 'Effective and Interpretable Document Classification using Distinctly Labeled Dirichlet Process Mixture Models of von Mises-Fisher Distributions', 'The 20th International Conference on Database Systems for Advanced Applications', '9050', '2015', '0302-9743', 'Other', '600', '150', 'Ngo Van Linh, Nguyen Kim Anh, Khoat Than, Nguyen Tat Nguyen', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\khoattq_04493715072015_Paper_Dasfaa.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('67', 'JINT_SCIE', 'khoattq', 'An effective framework for supervised dimension reduction', 'Neurocomputing', '139', '2014', '0925-2312', 'SCIE', '900', '300', 'Khoat Than, Tu Bao Ho, and Duy Khuong Nguyen', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\khoattq_08054727072015_NEUCOM14037.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('68', 'CINT_Other', 'khoattq', 'Dual online inference for latent Dirichlet allocation', 'Asian Conference on Machine Learning', '39', '2014', '1938-7228', 'Other', '600', '300', 'Khoat Than, Tung Doan', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\khoattq_14333714072015_Than36.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('69', 'CINT_Other', 'khoattq', 'An effective NMF-based method for supervised dimension reduction', 'Conference on Knowledge and System Engineering', '326', '2015', '2194-5357', 'Other', '600', '200', 'Ngo Van Linh, Nguyen Kim Anh, Khoat Than', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\khoattq_04484615072015_Paper_kse.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('71', 'JINT_SCI', 'haipv', 'Personalization and rule strategies in data-intensive intelligent context-aware systems', 'Knowledge Engineering Review', 'Vol. 30, No. 2., pp. 140-156', '2015', 'ISSN: 0269-8889   EISSN: 1469-8005', 'SCI', '900', '450', 'Philip T Moore, Hai V Pham ', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\haipv_03032509082015_The_Knowledge_Engineering_Review.zip');
INSERT INTO `tblpapersdeclaration` VALUES ('73', 'CINT_Other', 'haipv', 'On Context and the Open World Assumption', ' Proc of 2015 IEEE 29th International Conference on Advanced Information Networking and Applications Workshops ', 'pp. 387-392', '2015', '978­1­4799­1774­7', 'Other', '600', '300', 'P Moore,  Hai V. Pham', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\haipv_15094309082015_AINA15_Paper_PhamHai_minhchung.zip');
INSERT INTO `tblpapersdeclaration` VALUES ('74', 'CINT_Other', 'haipv', 'A Proposal of a Model Using Kansei Evaluation Integrated with Fuzzy Rules and Self-Organizing Map for Evaluation of Bio-Food Products', 'The First International Workshop on Semantic Technologies', 'Vol-1339, pp. 85-92', '2015', '1613-0073', 'Other', '600', '300', 'Hai V. Pham, Khang D. Tran', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\haipv_01381309082015_IWOST_Paper_PhamVanHai_minhchung.zip');
INSERT INTO `tblpapersdeclaration` VALUES ('75', 'CINT_Other', 'haipv', 'Context Matching with Reasoning and Decision Support using Hedge Algebra with Kansei Evaluation', 'In Proc of the fifth symposium on Information and Communication Technology', 'pp, 202-210 ', '2014', '978-1-4503-2930-9', 'Other', '600', '200', 'Hai V. Pham,  P. Moore,  Khang Dinh Tran ', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\haipv_01114709082015_SOICT2014_Paper_PhamVanHai_minhchung.zip');
INSERT INTO `tblpapersdeclaration` VALUES ('80', 'CINT_Other', 'khangtd', 'A Proposal of Model using Kansei Evaluation Integrated with Fuzzy Rules and Self-Organizing Map for Evaluation of Bio-Food Products', 'Proceedings of 1st Workshop on Sematic Technology (IWOST) 2015', 'Changchun, China, tháng 3/2015, trang 85-92', '2015', '', 'Other', '600', '300', 'Pham Van Hai, Tran Dinh Khang', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\khangtd_07241124082015_TDKhang 3.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('82', 'CINT_Other', 'khangtd', 'Mathematical Fuzzy Logic with Many Dual Hedges', 'Proceedings of 5th Symposium on ICT 2014', 'Tháng 12/2014, trang 7-13', '2014', 'ISBN 978-1-4503-2930-9', 'Other', '600', '200', 'Le Van Hung, Fei Liu, Tran Dinh Khang', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\khangtd_07223324082015_TDKhang 1.doc');
INSERT INTO `tblpapersdeclaration` VALUES ('83', 'CINT_Other', 'khangtd', 'Context Matching with Reasoning and Decision Support using Hedge Algebra with Kansei Evaluation', 'Proceedings of 5th Symposium on ICT 2014', 'Tháng 12/2014, trang 202-210', '2014', 'ISBN 978-1-4503-2930-9', 'Other', '600', '200', 'Pham Van Hai, Philip Moore, Tran Dinh Khang', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\khangtd_07212924082015_TDKhang 2.doc');
INSERT INTO `tblpapersdeclaration` VALUES ('85', 'CDOM_Other', 'khangtd', 'Hệ thống khuyến nghị công việc', 'Kỷ yếu Hội nghị KH&CN Quốc gia lần VII (FAIR 2014)', 'tháng 11/2014, trang 153-159', '2014', 'ISBN 978-604-913-300-8', 'Other', '400', '100', 'Pham Minh Chuan, Le Thanh Huong, Tran Dinh Khang, Cao Xuan Bach', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\khangtd_07195224082015_TDKhang 5.doc');
INSERT INTO `tblpapersdeclaration` VALUES ('86', 'CDOM_Other', 'khangtd', 'Hệ thống tư vấn thời trang DAFashion', 'Kỷ yếu Hội nghị KH&CN Quốc gia lần VII (FAIR 2014)', 'tháng 11/2014, trang 183-190', '2014', 'ISBN 978-604-913-300-8', 'Other', '400', '200', 'Nguyen Duc Anh, Tran Dinh Khang', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\khangtd_07183224082015_TDKhang 4.doc');
INSERT INTO `tblpapersdeclaration` VALUES ('87', 'CDOM_Other', 'huonglt', 'Hệ thống khuyến nghị công việc', 'Kỷ yếu hội thảo FAIR', 'pp153-159', '2014', '978-604-913-300-8', 'Other', '400', '100', 'Phạm Minh Chuẩn, Lê Thanh Hương, Trần Đình Khang, Cao Xuân Bách', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\huonglt_02465124082015_Fair2014.rar');
INSERT INTO `tblpapersdeclaration` VALUES ('88', 'CINT_Other', 'anhnk', 'Effective and Interpretable Document Classification Using Distinctly Labeled Dirichlet Process Mixture Models of von Mises-Fisher Distributions', 'Database Systems for Advanced Applications', 'Volume 9050, 2015, pp 139-153 ', '2015', '978-3-319-18122-6', 'Other', '600', '150', 'Ngo Van Linh, Nguyen Kim Anh, Khoat Than, Nguyen Nguyen Tat', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\anhnk_09484702082015_Paper_Dasfaa.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('89', 'CINT_Other', 'anhnk', 'An interpretable method for text summarization based on simplicial non-negative matrix factorization', 'Symposium on Information and Communication Technology, SoICT \'14', 'Pages 57-64 ', '2014', '978-1-4503-2930-9', 'Other', '600', '200', 'Nguyen Kim Anh, Nguyen Khac Toi, Ngo Van Linh', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\anhnk_09563902082015_anh2014.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('90', 'CINT_Other', 'anhnk', 'An Effective NMF-Based Method for Supervised Dimension Reduction', 'Knowledge and Systems Engineering - Proceedings of the Sixth International Conference KSE 2014', 'Volume 326, pp 93-104 ', '2014', '978-3-319-11679-2', 'Other', '600', '200', 'Ngo Van Linh, Nguyen Kim Anh, Khoat Than', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\anhnk_09572302082015_Paper_kse.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('91', 'CINT_Other', 'anhnk', ' Generating relevant and diverse query phrase suggestions using topical n-grams', 'Symposium on Information and Communication Technology, SoICT \'14', 'Pages 49-56 ', '2014', '978-1-4503-2930-9 ', 'Other', '600', '300', ' 	Nguyen Kim Anh, Hung Pham-Thuc', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\anhnk_09594302082015_anh2014.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('92', 'CINT_Other', 'ductq', 'Improving Fusion with One-Class Classification and Boosting in Multimodal Biometric Authentication ', 'Lecture Notes in Computer Science', 'vol. 8590, pp 438-444 ', '2014', 'DOI 10.1007/978-3-319-09330-7_51', 'Other', '600', '300', 'Quang Duc Tran, Panos Liatsis ', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\ductq_05281103082015_Improving Fusion with One-class Classification and Boosting in Multimodal Biometric Authentication v.2.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('97', 'JINT_Other', 'dungct', 'A novel approach for automatic extraction of semantic data about football transfer in sport news', 'International Journal of Pervasive Computing and Communications', 'Vol. 11, issue 2, pp 231-250', '2015', '1742-7371', 'Other', '900', '450', 'Quang-Minh Nguyen, Tuan-Dung Cao', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\dungct_03541024082015_PrintVersion_IJPCC.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('98', 'CINT_Other', 'dungct', 'Applying skip-gram word estimation and SVM-based classification for opinion mining Vietnamese food places text reviews', 'Proc. of the fifth ACM International Symposium on Information and Communication Technology – SoICT2014', 'pp 232-239', '2014', '', 'Other', '600', '300', 'Dang-Hung Phan, Tuan-Dung Cao', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\dungct_03350424082015_PrintedPaperSoict2014.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('99', 'CINT_Other', 'dungct', 'Toward a platform for building and exploiting semantic  annotation of photo taken with smart phone ', 'Proc. of The 16th ACM International Conference on Information Integration and Web-based Applications and Services (iiWas2014)', 'pp 375-384', '2014', '', 'Other', '600', '300', 'Tuan-Dung Cao, Thi-Nhu Nguyen', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\dungct_04120624082015_SemanticPhotoiiWas2014Print.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('100', 'CINT_Other', 'linhtd', 'Evaluation of simple algorithms for solving RWA problem in Survivable Optical Networks', 'Proceedings of The 2014 International Conference on Advanced Technologies for Communications (ATC).', 'pp 729-734', '2014', '978-1-4799-6956-2', 'Other', '600', '300', 'Quang Huy Duong, Dieu Linh Truong', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\linhtd_11355018082015_00-ATC2014.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('101', 'CINT_Other', 'dungct', 'Automatic creation of semantic data about football transfer in sport news  ', 'Proc. of The 16th ACM International Conference on Information Integration and Web-based Applications and Services (iiWas2014)', 'pp 356-364', '2014', '', 'Other', '600', '200', 'Quang-Minh Nguyen, Tuan-Dung Cao, Thanh-Tam Nguyen', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\dungct_04125224082015_auto_news_annoation_2014_print.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('102', 'CINT_Other', 'linhtd', 'How simple routing algorithms are good for solving RWA problem in Survival Optical Networks?', 'Proceedings of the Fifth Symposium on Information and Communication Technology (SoICT)', 'pp.136-145', '2014', '978-1-4503-2930-9', 'Other', '600', '300', 'Dieu Linh Truong, Quang Huy Duong', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\linhtd_11331818082015_cover-content-paper.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('103', 'JDOM_Other', 'vinhlt', 'Phương pháp dò tín hiệu độ nhạy cao ứng dụng trong bộ thu GPS L5', 'Tạp chí khoa học và kỹ thuật ', 'vol 167. pp 53 - 66', '2015', 'ISSN - 1859 - 0209', 'Other', '600', '200', 'Nguyen Thi Thanh Tu, La The Vinh, Ta Hai Tung', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\vinhlt_14584923082015_L5_final.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('105', 'JDOM_Other', 'loantv', 'Nghiên cứu và thử nghiệm nhận dạng phương ngữ tiếng Việt', 'Tạp chí Khoa học và Công nghệ, Đại học Sư phạm Kỹ thuật Hưng Yên', 'Vol. 4, pp 96-101', '2014', '2354-0575', 'Other', '600', '100', 'Phạm Ngọc Hưng, Trịnh Văn Loan, Đào Thị Thu Diệp, Phạm Quốc Hùng, Chu Bá Thành, Đào Thị Lệ Thủy', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('106', 'JDOM_Other', 'loantv', 'Phương pháp tính tần số cơ bản áp dụng cho tiếng nói tiếng Việt', 'Tạp chí Khoa học và Công nghệ, Đại học Sư phạm Kỹ thuật Hưng Yên', 'Vol. 1, pp 66-68', '2014', '2354-0575', 'Other', '600', '150', 'Phạm Ngọc Hưng, Phạm Quốc Hùng,Trịnh Văn Loan , Nguyễn Thị Thanh Vân ', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('107', 'CDOM_Other', 'loantv', 'Nhận dạng phương ngữ tiếng Việt sử dụng mô hình Gauss hỗn hợp', 'Kỷ yếu Hội nghị Khoa học Công nghệ Quốc gia lần thứ 7 (FAIR)', 'pp 449-452', '2014', '978-604-913-300-8', 'Other', '400', '100', 'Phạm Ngọc Hưng ,Trịnh Văn Loan, Nguyễn Hồng Quang, Phạm Quốc Hùng', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('108', 'CINT_Other', 'thuannd', 'Comparison between Galileo and GPS performances at low latitude regions', 'navitec 2014  & European Workshop on GNSS Signals and Signal Processing', '', '2014', '', 'Other', '600', '150', 'Thuan Dinh, Tung Ta Hai, Gabriella Povero, Gianluca Marruco', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\thuannd_13244704082015_Gal_GPS.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('109', 'CDOM_Other', 'thuannd', 'So sánh hiệu năng của hệ thống định vị GPS và GLONASS ở khu vực vĩ độ thấp', 'Hội thảo khoa học”Nghiên cứu và ứng dụng công nghệ vũ trụ”, Hà Nội, 2014 ', '', '2014', '', 'Other', '400', '133', 'Tạ Hải Tùng, Lã Thế Vinh, Nguyễn Đình Thuận', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\thuannd_07085225082015_CTVT_GPS_GLONASS_02.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('110', 'CDOM_Other', 'thuannd', 'THIẾT KẾ CHẾ TẠO BỘ THU ĐỊNH VỊ SỬ DỤNG VỆ TINH ĐỘ CHÍNH XÁC CAO TRONG THỜI GIAN THỰC VÀ THỬ NGHIỆM ĐO LƯỚI KHỐNG CHẾ', 'Hội thảo khoa học”Nghiên cứu và ứng dụng công nghệ vũ trụ”, Hà Nội, 2014 ', '', '2014', '', 'Other', '400', '133', 'Tạ Hải Tùng, Lã Thế Vinh, Nguyễn Đình Thuận', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\thuannd_07123125082015_ThietKeCheTaoBoThu.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('111', 'JDOM_Other', 'haipv', 'Mô hình TOPSIS-AHP sử dụng bộ tiêu chí ICT Newhouse đánh giá bài giảng với trợ giúp ra quyết định thông minh', 'Tạp chí Khoa học ĐHQGHN - VNU Journal of Science', 'Tập 31, Số 1, pp. 1-15', '2015', '0866-8612', 'Other', '600', '300', 'Phạm Văn Hải, Nguyễn Thị Mỹ Lộc', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\haipv_04473609082015_VNUjournal_2015.zip');
INSERT INTO `tblpapersdeclaration` VALUES ('112', 'JDOM_Other', 'trungtt', 'Kiểm soát truy cập ứng dụng trên điện thoại thông minh sử dụng nhận dạng khuôn mặt.', 'Chuyên san Công nghệ Thông tin và truyền thông (JICT), Tạp chí khoa học & kỹ thuật, Học viện kỹ thuật quân sự. ', 'vol. 5, pp 31-45', '2014', '1859-0209', 'Other', '600', '300', 'Cao Tuấn Dũng, Trịnh Thành Trung', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\trungtt_06324324082015_05_02.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('113', 'CDOM_Other', 'hoangph', 'KHAI THÁC CƠ SỞ DỮ LIỆU FREEBASE THEO TÙY CHỌN CỦA NGƯỜI DÙNG', 'Kỷ yếu Hội nghị Quốc gia lần thứ VII về Nghiên cứu cơ bản và ứng dụng Công Nghệ thông tin (FAIR);', '', '2014', '', 'Other', '400', '200', 'Phạm Huy Hoàng, Bạch Ngọc Sơn', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\hoangph_09255110082015_FAIR2014_Freebase (paper ID 566).pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('114', 'CINT_Other', 'hoangph', 'New approach for extracting information on Freebase', 'iiWAS ’14', '', '2014', '', 'Other', '600', '300', 'Bach N. Son, Pham H. Hoang', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\hoangph_09112725082015_iiWAS2014 New approach for extracting information on Freebase based on user\'s preferences.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('115', 'CINT_Other', 'bangbh', 'A parallel algorithm combines genetic algorithm and ant colony algorithm for the minimum latency problem', 'Proc. SOICT', '39-48', '2014', '', 'Other', '600', '300', 'Ban Hà Bằng, Nguyễn Đức Nghĩa', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\bangbh_07384525082015_A parallel algorithm combines Genetic algorithm and Ant Colony algorithm for the Minimum Latency Problem.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('116', 'JDOM_Other', 'lenp', 'On hole approximation algorithm in wireless sensor networks', 'Journal of computer science and cybernetics ', 'Volume 30, No 4, 377-396', '2014', '1813-9663', 'Other', '600', '300', 'Nguyen Phi Le, Nguyen Khanh Van', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\lenp_10184025082015_16.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('117', 'JDOM_Other', 'lenp', 'Thuật toán định tuyến đảm bảo cân bằng tải và hệ số định tuyến hằng số sử dụng yếu tố ngẫu nhiên trong mạng cảm biến không dây với hố mạng', 'Tạp chí khoa học và công nghệ ', 'số 104, 046-051', '2015', '0868-3980', 'Other', '600', '200', 'Nguyễn Đức Trọng, Nguyễn Phi Lê, Nguyễn Khanh Văn', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\lenp_10171425082015_15.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('118', 'CDOM_Other', 'quangnh', 'Nhận dạng phương ngữ tiếng Việt sử dụng mô hình Gauss hỗn hợp', 'Hội nghị khoa học quốc gia lần thứ VII, nghiên cứu cơ bản và ứng dụng công nghệ thông tin FAIR 2014', '', '2014', 'ISBN 978-604-913-300-8', 'Other', '400', '100', 'Phạm Ngọc Hưng, Trịnh Văn Loan, Nguyễn Hồng Quang, Phạm Quốc Hùng', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\quangnh_08014825082015_2014_FAIR2014.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('119', 'JDOM_Other', 'anhth', 'Android-based Application for Evaluating Operational Status of Lung Function', 'Journal of Science & Technology. Technical Universities.', ' Volume 105 (2015).', '2015', ' ISSN: 2354-1083', 'Other', '600', '200', 'Thu Ngo-Quynh, Anh Tran-Hai, Giang Nguyen-Linh', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('121', 'JDOM_Other', 'vannk', 'A Windows-based Software Architecture for Protecting Online Games against Hackers', 'Journal on Information Technologies and Communications (Research, Development and Application on Information & Communication Technology', '7(11), pp 2-11', '2014', '1859-3534', 'Other', '600', '300', 'Luan Bui The, Khanh-Van Nguyen', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\vannk_10474725082015_11_JIIC-E3-gameguard.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('122', 'JDOM_Other', 'vannk', 'Locating Product Information From the Web using Simhash Fingerprints', 'Journal on Information Technologies and Communications (Research, Development and Application on Information & Communication Technology ', '7(11), pp 51-61', '2014', '1859-3534', 'Other', '600', '300', 'Tuan-Anh N. Pham, Khanh-Van Nguyen', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\vannk_10470325082015_12_JIIC-E3-simhash.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('123', 'JINT_Other', 'vannk', 'Robust and Efficient Custom Routing for Interconnection Networks with Distributed Shortcuts ', 'International Journal of Distributed Systems and Technologies (IJDST).', '5 (4), pp 51-74', '2014', '1947-3532', 'Other', '900', '300', 'T.X. Le Nhat, T. Truong Nguyen, Khanh-Van Nguyen', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\vannk_10461325082015_p13.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('124', 'CINT_Other', 'vannk', 'Layout-aware Expandable Low-degree Topology', 'Proc. of the 20th IEEE International Conference on Parallel and Distributed Systems (ICPADS 2014)', 'pp 462-470', '2014', 'ISBN: 978-1-4799-7615-7', 'Other', '600', '100', 'Nguyen T. Truong, Van K. Nguyen, Nhat T. X. Le, Ikki Fujiwara, Fabien Chaix, Michihiro Koibuch', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\vannk_10451225082015_p14.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('125', 'JDOM_Other', 'vannk', 'On Hole Approximation Algorithms in Wireless Sensor Networks', 'Journal of Computer Science and Cybernetics', '30(4), pp. 377–396', '2014', 'ISSN: 1813-9663', 'Other', '600', '300', 'Nguyen Phi Le, Nguyen Khanh-Van', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\vannk_10441125082015_p15.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('126', 'JDOM_Other', 'vannk', 'Thuật toán định tuyến đảm bảo cân bằng tải và hệ số định tuyến hằng số sử dụng yếu tố ngẫu nhiên trong mạng cảm biến không dây với hố mạng', 'Tạp chí khoa học & công nghệ các trường đại học kỹ thuật. ', '104, pp 46-51', '2015', 'ISSN: 0868-3980', 'Other', '600', '200', 'Nguyen Duc Trong, Nguyen Phi Le, Nguyen Khanh Van', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\vannk_10432225082015_p16.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('127', 'JDOM_Other', 'vannk', 'Xây dựng tô-pô mạng liên kết 3 chiều dựa trên kiến trúc DSN nhằm thích ứng cài đặt thực tế', 'Tạp chí Bưu chính Viễn thông – Chuyên San Các công trình nghiên cứu, phát triển và ứng dụng CNTT-TT   ', '13(33), pp 5-15', '2015', 'ISSN 1859-3526', 'Other', '600', '300', 'Le Xuan Thong Nhat, Nguyen Khanh Van', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\vannk_10375425082015_p17f.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('128', 'JDOM_Other', 'lannth', 'Rang-based Bit Distribution Technique for Frame Delay Memory Application', 'Journal of Science & Technology, Technical Universities', 'No 107C, pp. 58-63', '2015', 'ISSN 2354 – 1083', 'Other', '600', '200', 'Tai Nguyen Huu, Hoang-Lan Nguyen Thi, Chon-Tam Le', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('129', 'JINT_SCI', 'thanghq', 'Reliability prediction for component-based software systems', 'Journal of Science of Computer Programming', 'Volume 97, Part 4, pp. 426–457', '2015', 'ISSN 0167-6423', 'SCI', '900', '300', 'Thanh-Trung Pham, Xavier Défago, Quyet-Thang Huynh', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('130', 'JINT_Other', 'thanghq', 'Analysis of Effectiveness of Communication Overhead in the Parallel Computing System Using Stochastic Colored Petri Nets', 'American Journal of Networks and Communications', 'Vol 2, pp. 29-38', '2014', 'ISSN 2326-8964', 'Other', '900', '300', 'Nguyen Minh Quy, Huynh Quyet Thang, Ho Khanh Lam', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('131', 'JINT_Other', 'thanghq', 'Different Ranking of NHPP Software Reliability Growth Models with Generalised Measure and Predictability', 'International Journal of Applied Information Systems', 'Series Volume 7, Number 11, pp. 1-6', '2014', 'ISSN 2249: 0868', 'Other', '900', '300', 'Nguyen Hung-Cuong, Huynh Quyet-Thang, Le Hai-Trieu', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('132', 'JDOM_Other', 'thanghq', 'Phân tích ảnh hưởng của trễ truyền thông đến hiệu năng của hệ thống tính toán song song trong bài toán khôi phục mật khẩu Microsoft Word', 'Tạp chí Khoa học và Công nghệ các Trường đại học kỹ thuật', 'Số 104 – Năm 2015, trang 41-45', '2015', 'ISSN 0868-3980', 'Other', '600', '200', 'Nguyễn Minh Quý, Huỳnh Quyết Thắng, Hồ Khánh Lâm', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('134', 'JDOM_Other', 'thanghq', 'Xây dựng quy trình đánh giá độ tin cậy phần mềm trong giai đoạn thiết kế ứng dụng chuỗi Markov', 'Tạp chí Khoa học và Công nghệ các Trường đại học kỹ thuật ', 'Số 102 – Năm 2014, trang 32-37', '2014', 'ISSN 0868-3980', 'Other', '600', '300', 'Huỳnh Quyết Thắng, Nguyễn Hùng Cường', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('135', 'CINT_Other', 'thanghq', 'Model-Based Performance Analysis for Constraint Logic Programming', 'Proceedings of the 2nd KICS Korea-Vietnam International Workshop on Information and Communications', 'Hanoi, December 15~17, 2014, pp. 51-56', '2014', 'ISBN: 978-89-950043-5-7', 'Other', '600', '200', 'Thang Huynh Quyet, Tung Dao Thanh, Trung Huynh Thanh', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\thanghq_09482813082015_Bai 1 (HQThang+HThanhTrung).pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('136', 'CINT_Other', 'thanghq', 'Model Driven Architecture Software Development – Applying and Evaluation', 'Proceedings of the 2nd KICS Korea-Vietnam International Workshop on Information and Communications', 'Hanoi, December 15~17, 2014, pp. 46-50', '2014', 'ISBN: 978-89-950043-5-7', 'Other', '600', '300', 'Tran Dinh Dien, Huynh Quyet Thang', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('137', 'CDOM_Other', 'thanghq', 'Một số kỹ thuật tối ưu và kiểm thử hiệu năng áp dụng trong phát triển ứng dụng trên Android', 'Kỷ yếu Hội nghị Quốc gia lần thứ VII về Nghiên cứu cơ bản và ứng dụng Công nghệ thông tin (FAIR) - Thái Nguyên', 'trang 365-375', '2014', 'ISBN: 978-604-913-300-8', 'Other', '400', '133', 'Huỳnh Quyết Thắng, Nguyễn Đức Mận, Đỗ Lê Nam', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('138', 'CDOM_Other', 'thanghq', 'Mô hình tính toán chi phí phát hành phần mềm sử dụng yếu tố rủi ro dựa trên mô hình tính toán độ tin cậy PHAM-NORDMAN-ZHANG', 'Kỷ yếu Hội nghị Quốc gia lần thứ VII về Nghiên cứu cơ bản và ứng dụng Công nghệ thông tin (FAIR)', 'trang 256-264', '2014', 'ISBN: 978-604-913-300-8', 'Other', '400', '200', 'Nguyễn Hùng Cường, Huỳnh Quyết Thắng', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('139', 'CINT_Other', 'thanghq', 'Development the method for Optimizing Cost of Software Quality Assurance based on Regression-based Model', 'Lecture Notes of the Institute for Computer Sciences, Social Informatics and Telecommunications Engineering', 'Volume 144, Springer 2015, pp. 121-221', '2015', 'ISBN 978-3-319-15391-9', 'Other', '600', '200', 'Vu Dao-Phan, Thang Huynh-Quyet, Vinh Le-Quoc', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\thanghq_23515817082015_bok%3A978-3-319-15392-6.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('140', 'CINT_Other', 'thanghq', 'New NHPP SRM Based On Generalized S-Shaped Fault-Detection Rate Function', 'Lecture Notes of the Institute for Computer Sciences, Social Informatics and Telecommunications Engineering', 'Volume 144, Springer 2015, pp. 121-221', '2015', 'ISBN 978-3-319-15391-9', 'Other', '600', '300', 'Nguyen Hung-Cuong, Huynh Quyet-Thang', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('141', 'CDOM_Other', 'thanghq', 'Một số kỹ thuật áp dụng trong mô hình kiểm thử mã nguồn cho các phương thức của lớp trong Java', 'Kỷ yếu Hội thảo quốc gia lần thứ XVII: Một số vấn đề chọn lọc của Công nghệ thông tin và truyền thông-Đắk Lắk,30-31/10/2014', 'trang 167-174', '2014', '', 'Other', '400', '133', 'Nguyễn Đức Mận, Huỳnh Quyết Thắng, Trần Xuân Hoàng ', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('142', 'JDOM_Other', 'giangnl', 'Android based Application for Evaluating Operational Status of Lung Function', 'Journal of Science and Technology', 'Vol 107, pp 93-99', '2015', '', 'Other', '600', '200', 'Thu Ngo Quynh, Anh Tran Hai, Giang Nguyen Linh', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('143', 'JDOM_Other', 'thunq', 'Android-based Application for Evaluating Operational Status of Lung Function', 'Journal of Science & Technology. Technical Universities. ', 'Volume 105 (2015). ', '2015', 'ISSN: 2354-1083', 'Other', '600', '200', 'Thu Ngo-Quynh, Anh Tran-Hai, Giang Nguyen-Linh', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('144', 'CINT_Other', 'thunq', 'Multipath RPL protocols for Greenhouse Environment Monitoring System based on Internet of Things', 'Proceedings of 12th IEEE International Conference on Electrical Engineering/Electronics, Computer, Telecommunications and Information Technology (ECTI-CON 2015), Huahin, Thailand.', ' IEEE catalog number: 35150', '2015', '', 'Other', '600', '200', 'Thu Ngo-Quynh, Nien Le-Manh, Khoi Nguyen Nguyen', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('145', 'CINT_Other', 'thunq', 'RPL-based Multipath Routing Protocols for Internet of Things on Wireless Sensor Networks', 'Proceedings of the 2014 International Conferences on Advanced Technologies for Communications (ATC 2014), Hanoi, Vietnam.', 'ISBN: 978-1-4799-6955-5, ISSN: 2162-1020', '2015', 'ISBN: 978-1-4799-6955-5, ISSN: 2162-1020', 'Other', '600', '200', 'Quan Le, Thu Ngo-Quynh, Thomas Magedanz', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('147', 'JINT_SCI', 'tungth', 'Combined GPS L1C/A and L2C Signal Acquisition Architectures Leveraging Differential Combination', 'IEEE Transactions on Aerospace and Electronic Systems', 'vol. 50, Issue 4, pp. 3212 - 3229', '2014', '0018-9251', 'SCI', '900', '300', 'Tung Hai Ta, M. Pini, L. L. Presti', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\tungth_10013325082015_[doi 10.1109_taes.2014.110044] T. Ta_ M. Pini_ L. Presti -- Combined GPS L1CA and L2C signal acquisition architectures leveraging differential combination.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('148', 'JDOM_Other', 'tungth', 'Evaluation of Advanced RAIM Algorithm for GPS and Galieo Signals Integrity Monitoring', 'Journal of Science and Technology for Technical University', 'No. 102 (2014), pp. 64-68', '2014', '0868-3980', 'Other', '600', '200', 'Hieu Trung Tran, Tung Hai Ta, Letizia Lo Presti', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\tungth_09581225082015_[21] Evaluation of Advanced RAIM algorithm.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('149', 'JDOM_Other', 'tungth', 'An Efficient Signal Acquisition Method for GPS Software-Defined Radio Receivers', 'Journal on Information Technology & Communications, Section on Research, Development and Application on Information & Communications Technology', 'Volume E-3, No. 7(11), pp. 134-140', '2014', '1859-1514', 'Other', '600', '600', 'Ta Hai Tung', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\tungth_03544214082015_[22] An Efficient Signal Acquisition Method for GPS Software-Defined Radio Receivers.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('150', 'JDOM_Other', 'tungth', 'Phương pháp xác định khoảng cách giả cho bộ thu định vị toàn cầu BeiDou', 'Tạp chí Khoa học và Công nghệ các Trường đại học kỹ thuật', 'No. 102 (2014), pp. 64-68', '2014', '0868-3980', 'Other', '600', '600', 'Tạ Hải Tùng', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('151', 'CDOM_Other', 'tungth', 'Implementation of a Real-time Precise Point Positioning Receiver', 'The Fourth National Conference on Communication and Navigation on Sea', '', '2014', '', 'Other', '400', '133', 'La The Vinh, Ta Hai Tung, Nguyen Dinh Thuan', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('153', 'CDOM_Other', 'tungth', 'An Adaptive Bandwidth Notch Filter for GNSS Narrow Band Interference Mitigation', 'The First NAFOSTED Conference on Information and Computer Science (NICS 2014)', '', '2014', '', 'Other', '400', '133', 'Tu Thi-Thanh Nguyen, Tung Hai Ta, Beatrice', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\tungth_09451425082015_[18] An Adaptive Bandwidth Notch Filter for GNSS Narrowband Interference Mitigation.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('154', 'CDOM_Other', 'tungth', 'Enabling GNSS software receivers with spoofing detection techniques: a test against some TEXBAT datasets', 'The Fourth National Conference on Communication and Navigation on Sea', '', '2014', '', 'Other', '400', '80', 'Minh Duc Truong, M. Troglia Gamba, B. Motella, E. Falletti, Tung Ta Hai', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\tungth_09342525082015_[24] GNSS spoofing detection techniques TEXBAT datasets.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('157', 'CDOM_Other', 'tungth', 'Thiết kế chế tạo bộ thu định vị sử dụng vệ tinh độ chính xác cao trong thời gian thực và thử nghiệm đo lưới khống chế', 'Hội thảo công nghệ vũ trụ và ứng dụng', '', '2014', '', 'Other', '400', '133', 'Ta Hai Tung, La The Vinh, Nguyen Dinh Thuan', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\tungth_09305325082015_Bai 12(01)_Ta Hai Tung_Huyen_VinhEdited.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('158', 'CDOM_Other', 'tungth', 'So sánh hiệu năng của hệ thống định vị GPS và GLONASS ở khu vực vĩ độ thấp', 'Hội thảo công nghệ vũ trụ và ứng dụng', '', '2014', '', 'Other', '400', '133', 'Ta Hai Tung, La The Vinh, Nguyen Dinh Thuan', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\tungth_09283725082015_CTVT_GPS_GLONASS_02.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('159', 'CINT_Other', 'haith', 'Human Extraction from a Sequence of Depth Images Using Segmentation and Foreground Detection ', 'SoICT 2014', 'Pages 178-185 ', '2014', '978-1-4503-2930-9', 'Other', '600', '150', 'Lan Anh Trinh, Nguyen Duc Thang, Hoang-Hai Tran, Tran Cong Hung', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('160', 'JDOM_Other', 'thunq', 'Providing different quality of service levels by routing protocol for virtualized wireless sensor networks', 'Journal of Research, Development and Application on Information and Communication Technology. ', 'Volume E-3 Number 7(11)', '2014', 'ISSN 1859 - 3534', 'Other', '600', '600', 'Thu Ngo-Quynh', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('161', 'JDOM_Other', 'thunq', 'An energy-efficient MAC protocol for real-time target tracking system using wireless sensor network', 'Journal of Research, Development and Application on Information and Communication Technology. ', 'Volume E-3 Number 7(11).', '2014', ' ISSN 1859 - 3534', 'Other', '600', '300', 'Thu Ngo-Quynh, Vinh Tran-Quang', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('162', 'JDOM_Other', 'thunq', 'Using RPL Routing protocol for providing service differentiation in Virtualized Wireless Sensor Networks.', 'Journal of Science & Technology. Technical Universities , ', '102 (2014)', '2014', 'ISSN: 0865-3940', 'Other', '600', '600', 'Thu Ngo-Quynh', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('163', 'CINT_Other', 'thunq', 'A Low Duty-Cycle XT- MAC Protocol for Target Tracking in Wireless Sensor Networks', 'Proceedings of the Fifth IEEE ICCE International Conference on Communications and Electronics (ICCE 2014), Danang, Vietnam. ', '238-243', '2014', 'ISBN: 978-1-4799-5050-8', 'Other', '600', '200', 'Quan Nguyen-Trung, Thu Ngo-Quynh, Vinh Tran-Quang', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('166', 'CINT_Other', 'thunq', 'A Particle Cloud Propagation Algorithm for Target Tracking in Wireless Sensor Networks', 'Proceedings of the 2014 International Conferences on Advanced Technologies for Communications (ATC 2014), Hanoi, Vietnam. ', '572-576', '2014', 'ISBN: 978-1-4799-6955-5, ISSN: 2162-1020', 'Other', '600', '120', 'Binh Nguyen-Thanh, Phuong Duong-Minh, Dung Nguyen-Trung, Vinh Tran-Quang, Thu Ngo-Quynh', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('167', 'CINT_Other', 'vietha', 'A general solution supporting real-time and remote electrocardiogram diagnostic based on embedded and mobile technology', 'Proceeding of Symposium on Information and Communication Technology, SOICT ', '', '2012', '', 'Other', '600', '200', 'Viet Hoang, Dung Cao, Thuan Pham', '2012-2013', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\vietha_02184317082015_(ACM)A general solution supporting real-time and remote electrocardiogram diagnostic based on embedded and mobile technology.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('168', 'JINT_Other', 'vietha', 'A Real-timeModel Based Support Vector Machine for Emotion Recognition through EEG', 'International Conference on Control Automation and Information Sciences', '', '2012', '', 'Other', '900', '225', 'Manh Ngo Van, Viet Hoang Anh, Bang Ban Ha, Thang Huynh Quyet', '2012-2013', '');
INSERT INTO `tblpapersdeclaration` VALUES ('169', 'JDOM_Other', 'vietha', 'Improved Model of human emotion recognition based on brain waves EEG', 'Journal of Science and Technology for Energy', '', '2013', '1859-4557', 'Other', '600', '0', '', '2012-2013', '');
INSERT INTO `tblpapersdeclaration` VALUES ('170', 'JINT_SCI', 'vietha', 'An approach to enhance the accuracy of diagnosis and improve signal performance in ECG system', 'International Journal on Engineering Research and Technology', 'vol 2, pp 567-572', '2013', '2278- 0181', 'SCI', '900', '300', 'Dung Cao Tuan, Viet Hoang Anh, Thuan Pham Van', '2013-2014', '');
INSERT INTO `tblpapersdeclaration` VALUES ('171', 'CINT_Other', 'vietha', 'A Real-Time Model Based Support Vector Machine for Emotion Recognition Through EEG', 'ICCAIS', '', '2012', '', 'Other', '600', '200', 'Manh Ngo Van, Viet Hoang Anh, Bang Ban Ha', '2012-2013', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\vietha_19050614082015_BaibaoBCI.doc');
INSERT INTO `tblpapersdeclaration` VALUES ('172', 'CINT_Other', 'binhht', 'Heuristic algorithm for virtual network mapping problem', 'Lecture Notes of the Institute for Computer Sciences, Social Informatics and Telecommunications Engineering ', 'Volume 137, 2014, pp 43-53 ', '2014', '978-3-319-13325-6', 'Other', '600', '150', 'Huynh Thi Thanh Binh, Nguyen Hong Nhat, Bach Hoang Vinh, Le Hoang Linh', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\binhht_06023221082015_Heuristic-Algorithm-for-Virtual-Network-Mapping-Problem.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('173', 'CINT_Other', 'binhht', 'Reordering Dimensions for Radial Visualization of High Dimensional Data - A Genetic Algorithms Approach', 'Congress on Evolutionary Computing (CEC 2014)', '951-958', '2014', '978-1-4799-1488-3', 'Other', '600', '120', 'Binh Huynh Thi Thanh, Long Tran Van, Hoai Nguyen Xuan, Anh Nguyen Duc, Truong Pham Manh', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\binhht_06011521082015_E-14790.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('174', 'CINT_Other', 'binhht', 'Group Steiner Tree Model for Energy Efficient Multicast in Duty-Cycle Wireless Sensor Networks', 'The Fifth International Conference on Communications and Electronics (ICCE)', '244-249', '2014', '978-1-4799-5050-8', 'Other', '600', '200', 'Nguyen Thai Duong, Huynh Thi Thanh Binh, Ngo Hong Son', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\binhht_05103421082015_5.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('175', 'CINT_Other', 'binhht', 'Genetic Algorithm for Solving Survivable Network Design Problem with Extending-Cycle-Based Protected Working Capacity Envelope', 'Sixth World Congress on Nature and Biologically Inspired Computing (NaBIC2014)', '250-255', '2014', '978-1-4799-5937-2', 'Other', '600', '300', 'Le Khac Tuan, Huynh Thi Thanh Binh', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\binhht_05080321082015_paper53.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('176', 'CINT_Other', 'binhht', ' Maximizing the lifetime of wireless sensor networks with the base station location', 'Nature of Computation and Communication, Lecture Notes of the Institute for Computer Sciences, Social Informatics and Telecommunications Engineering', '108-116', '2015', '978-3-319-15391-9', 'Other', '600', '200', 'Nguyen Thanh Tung, Dinh Ha Ly, Huynh Thi Thanh Binh', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\binhht_04582821082015_Base-Station-Location-Aware-Optimization-Model-of-the-Lifetime-of-Wireless-Sensor-Networks.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('177', 'CINT_Other', 'binhht', 'Stochastic Link-fault-tolerant Routing in a Hyper-star graph', 'Proceedings of the 11th International Conference on Applied Computing', '45-52', '2014', '978-989-8533-25-8', 'Other', '600', '150', 'Bui Thi Thuan, Yuki Hirai, Huynh Thi Thanh Binh, Keiichi Kaneko', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\binhht_05043921082015_Base-Station-Location-Aware-Optimization-Model-of-the-Lifetime-of-Wireless-Sensor-Networks.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('178', 'CINT_Other', 'tungth', 'Comparison between Galileo and GPS performances at low latitude regions', 'ESA Workshop on Satellite Navigation Technologies and GNSS Signals and Signal Processing', '', '2014', '', 'Other', '600', '150', 'Nguyen Dinh Thuan, Ta Hai Tung, Gabriella Povero, Gianluca Marruco', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('179', 'JINT_SCIE', 'binhht', 'Heuristic and genetic algorithms for solving survivability problem in the design of last mile communication networks', 'Soft Computing', 'Volume 19, Issue 9 , Page 2619-2632', '2014', '1433-7479', 'SCIE', '900', '450', 'Huynh Thi Thanh Binh, Nguyen Thai Duong', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\binhht_04244821082015_Heuristic-and-genetic-algorithms-for-solving-survivability-problem-in-the-design-of-last-mile-communication-networks.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('180', 'JDOM_Other', 'ducnh', 'Quản lý thông tin hiệu quả hơn từ SaaS', 'Tạp chí Công nghệ thông tin và Truyền thông', 'vol. 5, pp 28-32', '2015', '1859-3526', 'Other', '600', '200', 'Huỳnh Hoàng Long, Huỳnh Quyết Thắng, Nguyễn Hữu Đức', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('181', 'CINT_Other', 'ducnh', 'Translation from BPMN to BPEL, current techniques and limitations', 'SOICT 2014', 'pp 21-30', '2014', '978-1-4503-2930-9', 'Other', '600', '200', 'Binh Thanh Nguyen, Duc Huu Nguyen, Thuy Thanh Nguyen', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('182', 'CINT_Other', 'ducnh', 'A Formalism of Activity Theory', 'The 2nd KICS Korea-Vietnam International Workshop on Information and Communications', '', '2014', '978-89-950043-5-7', 'Other', '600', '200', 'Binh T. Nguyen, Duc H. Nguyen, and Thuy T. Nguyen', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('184', 'CINT_Other', 'nghiand', 'A parallel algorithm combines genetic algorithm and ant colony algorithm for the minimum latency problem', 'Proc. SOICT', '39-48', '2014', '', 'Other', '600', '300', 'Ban Ha Bang, Nguyen Duc Nghia', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\nghiand_07381025082015_A parallel algorithm combines Genetic algorithm and Ant Colony algorithm for the Minimum Latency Problem.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('185', 'JINT_Other', 'sonnh', 'All Capacities Modular Cost Survivable Network Design Problem using Genetic Algorithm with Completely Connection Encoding, DOI:10.1186/s13673-014-0013-y, ISSN  ', 'Human-centric Computing and Information Sciences,Springer.', '', '2014', '2192-1962', 'Other', '900', '450', 'Huynh Thi Thanh Binh, Ngo Hong Son', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('186', 'JDOM_Other', 'sonnh', 'Giải thuật heuristic và di truyền giải bài toán định tuyến đa điểm trên mạng cảm biến không dây nhiệm vụ tuần hoàn', 'Tạp chí Tin học và Điều khiển', '', '2014', '', 'Other', '600', '200', 'Nguyễn Thái Dương, Huỳnh Thị Thanh Bình, Ngô Hồng Sơn', '2014-2015', '');
INSERT INTO `tblpapersdeclaration` VALUES ('187', 'JDOM_Other', 'binhht', 'Giải thuật heuristic và di truyền giải bài toán định tuyến đa điểm trên mạng cảm biến không dây nhiệm vụ tuần hoàn', 'Tạp chí Tin học và điều khiển học', '253-266', '2014', '1813-9663', 'Other', '600', '200', 'Nguyen Thai Duong, Huynh Thi Thanh Binh, Ngo Hong Son', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\binhht_07151325082015_3328.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('188', 'JDOM_Other', 'dungct', 'Kiểm soát truy cập  ứng dụng trên điện thoại thông minh sử dụng  nhận dạng khuôn mặt', 'Chuyên san Công nghệ Thông tin và truyền thông (JICT), Tạp chí khoa học & kỹ thuật, Học viện kỹ thuật quân sự.', 'Số 5, pp 31-45', '2014', '1859 -0209', 'Other', '600', '300', 'Cao Tuấn Dũng, Trịnh Thành Trung', '2014-2015', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\dungct_04214124082015_PrintVersionKTQS2014.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('189', 'CINT_Other', 'dungpq', 'LS(Graph & Tree)', 'ACM Applied Computing', '', '2012', '', 'Other', '600', '200', 'Pham Quang Dung, Yves Deville, Pascal Van Hentenryck', '2012-2013', 'C:\\projects\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\dungpq_15551524082015_sac2009.pdf');
INSERT INTO `tblpapersdeclaration` VALUES ('191', 'JINT_SCI', 'dungpq', 'Newspaper 001', 'Journal Name 001', 'vol.3, pp 25-50', '2015', 'ISSN 001', 'SCI', '900', '450', 'Anthony Tran, HaTran', '2014-2015', 'D:\\WORKS\\WORKSPACEs\\bksrmasterv02\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\euniv\\uploads\\papers\\dungpq_21332221122015_set.txt');

-- ----------------------------
-- Table structure for `tblpatentdeclaration`
-- ----------------------------
DROP TABLE IF EXISTS `tblpatentdeclaration`;
CREATE TABLE `tblpatentdeclaration` (
  `PAT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PAT_Name` varchar(255) NOT NULL,
  `PAT_User_Code` varchar(255) NOT NULL,
  `PAT_Authors` varchar(255) DEFAULT NULL,
  `PAT_Type` varchar(255) DEFAULT NULL,
  `PAT_Number` varchar(255) DEFAULT NULL,
  `PAT_DateOfIssue` date NOT NULL,
  `PAT_ConvertedHours` int(11) DEFAULT NULL,
  `PAT_AuthorConvertedHours` int(11) DEFAULT NULL,
  `PAT_ReportingAcademicDate` varchar(20) NOT NULL,
  PRIMARY KEY (`PAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblpatentdeclaration
-- ----------------------------

-- ----------------------------
-- Table structure for `tblproducts`
-- ----------------------------
DROP TABLE IF EXISTS `tblproducts`;
CREATE TABLE `tblproducts` (
  `PROD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROD_Code` varchar(256) NOT NULL,
  `PROD_ProjCode` varchar(256) NOT NULL,
  `PROD_Name` tinytext NOT NULL,
  `PROD_StartDate` varchar(256) DEFAULT NULL,
  `PROD_EndDate` varchar(256) DEFAULT NULL,
  `PROD_Budget` int(11) DEFAULT NULL,
  `PROD_Status_Code` varchar(256) NOT NULL,
  `PROD_SourceFile` text NOT NULL,
  `PROD_User_Code` varchar(256) NOT NULL,
  PRIMARY KEY (`PROD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblproducts
-- ----------------------------
INSERT INTO `tblproducts` VALUES ('1', 'productdungpq16093027082015', 'threaddungpq16084527082015', 'Thuật toán tối ưu xếp lịch', '09/03/2015', '09/30/2015', '10', 'SUBMIT', '', 'dungpq');
INSERT INTO `tblproducts` VALUES ('2', 'productdungpq16095527082015', 'threaddungpq16084527082015', 'Phần mềm ứng dụng quản lý', '01/01/2015', '09/30/2015', '20', 'SUBMIT', '', 'dungpq');
INSERT INTO `tblproducts` VALUES ('3', 'productthieuvv16142427082015', 'threadthieuvv16135027082015', 'Công nghệ CUDA', '09/01/2015', '09/30/2015', '100', 'SUBMIT', '', 'thieuvv');
INSERT INTO `tblproducts` VALUES ('4', 'productthieuvv16143827082015', 'threadthieuvv16135027082015', 'Ứng dụng dự báo thời tiết', '09/01/2015', '09/30/2015', '100', 'SUBMIT', '', 'thieuvv');
INSERT INTO `tblproducts` VALUES ('5', 'producttrungnl03144729082015', 'threadthieuvv16135027082015', 'Chuyên đề 1', '09/01/2015', '09/10/2015', '30', 'SUBMIT', '', 'trungnl');
INSERT INTO `tblproducts` VALUES ('6', 'producttrungnl03150429082015', 'threadtrungnl03115329082015', 'Chuyên đề 1', '09/01/2015', '09/10/2015', '30', 'SUBMIT', '', 'trungnl');
INSERT INTO `tblproducts` VALUES ('7', 'producttrungnl03151029082015', 'threadtrungnl03115329082015', 'Chuyên đề 1', '09/01/2015', '09/10/2015', '30', 'SUBMIT', '', 'trungnl');
INSERT INTO `tblproducts` VALUES ('8', 'producttrungnl03151129082015', 'threadtrungnl03115329082015', 'Chuyên đề 1', '09/01/2015', '09/10/2015', '30', 'SUBMIT', '', 'trungnl');
INSERT INTO `tblproducts` VALUES ('9', 'productdungpq03570329082015', 'threadtrungnl03115329082015', 'Thêm chuyên đề sau khi phê duyệt', '09/01/2015', '09/24/2015', '500', 'SUBMIT', '', 'dungpq');

-- ----------------------------
-- Table structure for `tblprojectcalls`
-- ----------------------------
DROP TABLE IF EXISTS `tblprojectcalls`;
CREATE TABLE `tblprojectcalls` (
  `PROJCALL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJCALL_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã đợt gọi',
  `PROJCALL_PROJCATCODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã loại đề tài (tham chiếu tblprojectcategory)',
  `PROJCALL_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên đợt gọi đề tài',
  `PROJCALL_DATE` date NOT NULL COMMENT 'Ngay',
  PRIMARY KEY (`PROJCALL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tblprojectcalls
-- ----------------------------
INSERT INTO `tblprojectcalls` VALUES ('15', 'T201615', 'NATIONAL', 'cccc102', '2016-01-20');
INSERT INTO `tblprojectcalls` VALUES ('18', 'T201618', 'NATIONAL', 'cccc', '2016-01-14');

-- ----------------------------
-- Table structure for `tblprojectcategory`
-- ----------------------------
DROP TABLE IF EXISTS `tblprojectcategory`;
CREATE TABLE `tblprojectcategory` (
  `PROJCAT_ID` mediumint(11) NOT NULL AUTO_INCREMENT,
  `PROJCAT_Name` varchar(255) NOT NULL,
  `PROJCAT_Description` varchar(255) DEFAULT NULL,
  `PROJCAT_Code` varchar(255) NOT NULL,
  PRIMARY KEY (`PROJCAT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblprojectcategory
-- ----------------------------
INSERT INTO `tblprojectcategory` VALUES ('1', 'Đề tài KHCN, dự án, cấp Nhà nước', 'Đề tài KHCN, dự án, cấp Nhà nước', 'NATIONAL');
INSERT INTO `tblprojectcategory` VALUES ('2', 'Đề tài, dự án cấp Bộ, thành phố và tương đương  \r\n', 'Đề tài, dự án cấp Bộ, thành phố và tương đương  \r\n', 'EMINISTRY');
INSERT INTO `tblprojectcategory` VALUES ('3', 'Đề tài thuộc quỹ Nafosted \r\n', 'Đề tài thuộc quỹ Nafosted \r\n', 'SMINISTRY');
INSERT INTO `tblprojectcategory` VALUES ('4', 'Đề tài, dự án, HTQT\r\n', 'Đề tài, dự án, HTQT\r\n', 'INTERNATIONAL');
INSERT INTO `tblprojectcategory` VALUES ('5', 'Đề tài cấp trường\r\n', 'Đề tài cấp trường\r\n', 'UNIVERSTITY');
INSERT INTO `tblprojectcategory` VALUES ('6', 'Đề tài hợp tác doanh nghiệp', 'Đề tài hợp tác doanh nghiệp', 'INDUSTRY');
INSERT INTO `tblprojectcategory` VALUES ('7', 'Đề tài hợp tác với nước ngoài (không thuộc danh mục HTQT)', 'Đề tài hợp tác với nước ngoài (không thuộc danh mục HTQT)', 'INTERNATIONAL_NOT_COLLABORATION');

-- ----------------------------
-- Table structure for `tblprojectparticipationroles`
-- ----------------------------
DROP TABLE IF EXISTS `tblprojectparticipationroles`;
CREATE TABLE `tblprojectparticipationroles` (
  `PROJPARTIROLE_ID` int(11) NOT NULL,
  `PROJPARTIROLE_Code` varchar(256) NOT NULL,
  `PROJPARTIROLE_Description` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblprojectparticipationroles
-- ----------------------------
INSERT INTO `tblprojectparticipationroles` VALUES ('1', 'LEADER', 'Chủ nhiệm');
INSERT INTO `tblprojectparticipationroles` VALUES ('2', 'MEMBER', 'Thành viên');

-- ----------------------------
-- Table structure for `tblprojects`
-- ----------------------------
DROP TABLE IF EXISTS `tblprojects`;
CREATE TABLE `tblprojects` (
  `PROJ_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJ_Code` varchar(256) NOT NULL,
  `PROJ_AcaYear_Code` varchar(256) DEFAULT NULL,
  `PROJ_Name` tinytext NOT NULL,
  `PROJ_ProjCat_Code` varchar(256) DEFAULT NULL,
  `PROJ_StartDate` varchar(256) DEFAULT NULL,
  `PROJ_EndDate` varchar(256) DEFAULT NULL,
  `PROJ_Motivation` text COMMENT 'Dong co xay dung',
  `PROJ_Content` text,
  `PROJ_Result` text,
  `PROJ_SourceFile` text,
  `PROJ_Status_Code` varchar(256) DEFAULT NULL,
  `PROJ_TotalBudget` int(11) DEFAULT NULL,
  `PROJ_User_Code` varchar(256) NOT NULL,
  `PROJ_FacultyCode` varchar(100) DEFAULT NULL,
  `PROJ_Locked1` tinyint(2) DEFAULT '0',
  `PROJ_MotivationChanged` text,
  `PROJ_ContentChanged` text,
  `PROJ_ResultChanged` text,
  `PROJ_BudgetChanged` int(11) DEFAULT '0',
  `PROJ_Locked2` tinyint(2) DEFAULT NULL,
  `PROJ_PRJCall_Code` varchar(100) NOT NULL,
  PRIMARY KEY (`PROJ_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblprojects
-- ----------------------------
INSERT INTO `tblprojects` VALUES ('12', 'threadtrung.nguyenxuan06414609092015', '2014-2015', 'Nghiên cứu vận dụng tư tưởng Hồ Chí Minh về  phát huy nhân tố con người trong việc đào tạo nguồn nhân lực chất lượng cao tại trường Đại học Bách khoa Hà Nội hiện nay', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- Ph&acirc;n t&iacute;ch quan điểm của Hồ Ch&iacute; Minh về ph&aacute;t huy nh&acirc;n tố con người trong c&aacute;ch mạng Việt Nam</p>\r\n\r\n<p>- Thực trạng việc vận dụng ph&aacute;t huy nh&acirc;n tố con người ở Trường ĐHBK H&agrave; Nội trong việc đ&agrave;o tạo nguồn nh&acirc;n lực chất lượng cao cho đất nước.</p>\r\n\r\n<p>- Đề xuất một số giải ph&aacute;p nhằm thực hiện tốt hơn c&ocirc;ng t&aacute;c đ&agrave;o tạo nguồn nh&acirc;n lực chất lượng cao hiện nay tại Trường ĐHBK H&agrave; Nội.</p>\r\n', ',', '', 'APPROVED', '15', 'trung.nguyenxuan', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('13', 'threadthao.luongthiphuong06433309092015', '2014-2015', 'Một số kinh nghiệm về đảm bảo an ninh biên giới Việt Nam-Campuchia và vận dụng vào giảng dạy môn Đường lối Cách mạng của Đảng Cộng sản Việt Nam', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- Đ&aacute;nh gi&aacute; thực trạng t&igrave;nh h&igrave;nh v&agrave; c&ocirc;ng t&aacute;c đấu tranh của lực lượng An ninh đối với c&aacute;c thế lực th&ugrave; địch tại khu vực bi&ecirc;n giới Việt Nam-Campuchia.</p>\r\n\r\n<p>- Một số kinh nghiệm đảm bảo an ninh bi&ecirc;n giới Việt Nam-Campuchia.</p>\r\n\r\n<p>- Vận dụng v&agrave;o giảng dạy m&ocirc;n Đường lối C&aacute;ch mạng của Đảng Cộng sản Việt Nam cho sinh vi&ecirc;n trường Đại học B&aacute;ch Khoa H&agrave; Nội.</p>\r\n', ',', '', 'SUBMIT', '15', 'thao.luongthiphuong', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('14', 'threadlan.hoangthi06474509092015', '2014-2015', 'Một số giải pháp nâng cao chất lượng dạy và học môn Đường lối Cách mạng của Đảng Cộng sản Việt Nam ở Trường Đại học Bách Khoa Hà Nội', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- Thực trạng giảng dạy v&agrave; học tập m&ocirc;n Đường lối C&aacute;ch mạng của Đảng Cộng sản Việt Nam ở Trường Đại học B&aacute;ch Khoa H&agrave; Nội.</p>\r\n\r\n<p>- Đề xuất giải ph&aacute;p để n&acirc;ng cao chất lượng giảng dạy v&agrave; học tập m&ocirc;n Đường lối C&aacute;ch mạng của Đảng Cộng sản Việt Nam ở Trường Đại học B&aacute;ch Khoa H&agrave; Nội.</p>\r\n', ',', '', 'SUBMIT', '15', 'lan.hoangthi', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('15', 'threadthuy.nguyenthithu106495809092015', '2014-2015', 'Nghiên cứu và đề xuất các giải pháp số hóa tài liệu tại Thư viện Tạ Quang Bửu – Trường Đại học Bách Khoa Hà Nội', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- Nghi&ecirc;n cứu tổng quan về số h&oacute;a t&agrave;i liệu</p>\r\n\r\n<p>- Nghi&ecirc;n cứu thực trạng việc số h&oacute;a t&agrave;i liệu&nbsp; tại Thư viện Tạ Quang Bửu &ndash; Trường ĐHBK HN</p>\r\n\r\n<p>- Tổng hợp đ&aacute;nh gi&aacute; v&agrave; đề xuất c&aacute;c giải ph&aacute;p số h&oacute;a t&agrave;i liệu tại Thư viện Tạ Quang Bửu nhằm đ&aacute;p ứng khả năng cung cấp th&ocirc;ng tin tới c&aacute;c thiết bị c&aacute; nh&acirc;n cho người d&ugrave;ng tin.</p>\r\n', ',', '', 'SUBMIT', '25', 'thuy.nguyenthithu1', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('16', 'threadloi.hothi06512909092015', '2014-2015', 'Nghiên cứu ứng dụng phần mềm quản trị thư viện tích hợp mã nguồn mở KOHA tại Trường Đại học Bách khoa Hà Nội', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- Nghi&ecirc;n cứu tổng quan về phần mềm quản l&yacute; thư viện m&atilde; nguồn mở</p>\r\n\r\n<p>- Nghi&ecirc;n cứu thiết kế CSDL phần mềm quản trị thư viện t&iacute;ch hợp m&atilde; nguồn mở KOHA</p>\r\n\r\n<p>- C&agrave;i đặt v&agrave; triển khai ứng dụng phần mềm KOHA trong việc quản trị CSDL c&aacute;c bộ sưu tập tại&nbsp; Trường Đại học B&aacute;ch khoa H&agrave; Nội.</p>\r\n', ',', '', 'SUBMIT', '25', 'loi.hothi', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('17', 'threadhung.nguyenthanh106535409092015', '2014-2015', 'Nghiên cứu và đề xuất các giải pháp phát triển nguồn tin điện tử phục vụ công tác đào tạo và nghiên cứu khoa học tại viện Tạ Quang Bửu – Trường Đại học Bách Khoa Hà Nội', 'NATIONAL', '01/01/2015', '12/31/2015', '', '<p>- Nghi&ecirc;n cứu tổng quan về nguồn tin điện tử</p>\r\n\r\n<p>-Thực trạng về nguồn tin điện tử tại Thư viện Tạ Quang Bửu</p>\r\n\r\n<p>- C&aacute;c giải ph&aacute;p tăng cường ph&aacute;t triển nguồn tin điện tử tại Thư viện Tạ Quang Bửu</p>\r\n', ',', '', 'SUBMIT', '25', 'hung.nguyenthanh1', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('18', 'threadtuyen.tranthi06555309092015', '2014-2015', 'Nghiên cứu đổi mới tổ chức và hoạt động tại kho mượn thư viện Tạ Quang Bửu trường Đại học Bách khoa Hà Nội phục vụ đào tạo theo tín chỉ', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- Nghi&ecirc;n cứu tổng quan về kho mở</p>\r\n\r\n<p>- Thực trạng c&ocirc;ng t&aacute;c tổ chức v&agrave; hoạt động tại kho mượn gi&aacute;o tr&igrave;nh thư viện Tạ Quang Bửu</p>\r\n\r\n<p>- C&aacute;c giải ph&aacute;p đổi mới tổ chức v&agrave; hoạt động tại kho mượn gi&aacute;o tr&igrave;nh thư viện Tạ Quang Bửu đ&aacute;p ứng y&ecirc;u cầu đ&agrave;o tạo theo t&iacute;n chỉ</p>\r\n', ',', '', 'SUBMIT', '20', 'tuyen.tranthi', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('19', 'threadtu.nguyenthithanh13412209092015', '2014-2015', 'Xây dựng hệ thống giám sát, phân tích, cảnh báo ngăn chặn tấn công mạng Trường Đại học Bách khoa Hà Nội', 'UNIVERSTITY', '01/29/2015', '12/31/2015', '', '<p>- Khảo s&aacute;t thực trạng vấn đề về security triển khai tại ĐHBK H&agrave; Nội v&agrave; c&aacute;c c&ocirc;ng nghệ security đ&atilde; v&agrave; đang triển khai tr&ecirc;n thế giới, từ đ&oacute; đưa ra giải ph&aacute;p tối ưu.</p>\r\n\r\n<p>- L&ecirc;n kế hoạch v&agrave; cấu h&igrave;nh chi tiết cho c&aacute;c thiết bị.</p>\r\n\r\n<p>- &Aacute;p dụng thử nghiệm tr&ecirc;n một v&ugrave;ng mạng nhỏ, đ&aacute;nh gi&aacute;; &Aacute;p dụng v&agrave;o m&ocirc;i trường mạng BKNET, thu thập v&agrave; so s&aacute;nh c&aacute;c kết quả.</p>\r\n\r\n<p>- Đ&aacute;nh gi&aacute; chung về hiệu quả với m&ocirc;i trường thực tế; Kết luận v&agrave; phương hướng ph&aacute;t triển trong tương lai.</p>\r\n', ',', '', 'SUBMIT', '30', 'tu.nguyenthithanh', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('20', 'threadhung.nguyenhuy113434809092015', '2014-2015', 'Triển khai hệ thống giám sát quản lý băng thông mạng BKNET - Trường Đại học Bách khoa Hà Nội', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- Khảo s&aacute;t thực trạng vấn đề về sử dụng băng th&ocirc;ng tại ĐHBK H&agrave; Nội, đưa ra giải ph&aacute;p tối ưu.</p>\r\n\r\n<p>- L&ecirc;n kế hoạch v&agrave; cấu h&igrave;nh thiết bị.</p>\r\n\r\n<p>- &Aacute;p dụng thử nghiệm tr&ecirc;n một v&ugrave;ng mạng nhỏ, đ&aacute;nh gi&aacute;. Sau đ&oacute;, &aacute;p dụng v&agrave;o m&ocirc;i trường mạng BKnet, thu thập v&agrave; so s&aacute;nh c&aacute;c kết quả.</p>\r\n\r\n<p>- Đ&aacute;nh gi&aacute; chung về hiệu quả với m&ocirc;i trường thực tế, từ đ&oacute; đưa ra phương hướng ph&aacute;t triển trong tương lai.</p>\r\n', ',', '', 'SUBMIT', '30', 'hung.nguyenhuy1', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('21', 'threadhiep.hoangvan13463109092015', '2014-2015', 'Nghiên cứu và triển khai giải pháp cung cấp thông tin cải chính cho các bộ định vị chính xác sử dụng bộ thu mềm QZSS LEX', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- T&igrave;m hiểu đặc tả t&iacute;n hiệu QZSS LEX</p>\r\n\r\n<p>- T&iacute;ch hợp module giải m&atilde; LEX v&agrave;o bộ thu mềm của NAVIS</p>\r\n\r\n<p>- Triển khai thử nghiệm cung cấp dữ liệu LEX cho c&aacute;c bộ định vị ch&iacute;nh x&aacute;c</p>\r\n', ',', '', 'SUBMIT', '30', 'hiep.hoangvan', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('22', 'threaddung.tranthikim13491209092015', '2014-2015', 'Nghiên cứu nâng cao tính chất cơ học của nhựa phenolic bằng dầu thực vật để chế tạo vật liệu compozit sợi thủy tinh', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- Nghi&ecirc;n cứu biến t&iacute;nh nhựa phenol formandehyt bằng dầu thực vật</p>\r\n\r\n<p>- Nghi&ecirc;n cứu chế tạo vật liệu compozit từ nhựa phenolic biến t&iacute;nh</p>\r\n', ',', '', 'SUBMIT', '40', 'dung.tranthikim', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('23', 'threadlinh.nguyenphamduy13505709092015', '2014-2015', 'Nghiên cứu tái sử dụng thủy tinh từ bóng đèn hình CRT của thiết bị điện điện tử thải trong vật liệu compozit nền nhựa polypropylen', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- Nghi&ecirc;n cứu ảnh hưởng của bột thủy tinh thải CRT đến t&iacute;nh chất của vật liệu (X&aacute;c định ph&acirc;n bố k&iacute;ch thước hạt, th&agrave;nh phần h&oacute;a học của bột thủy tinh, t&iacute;nh chất cơ l&yacute;, cấu tr&uacute;c h&igrave;nh th&aacute;i, t&iacute;nh chống ch&aacute;y)</p>\r\n\r\n<p>- Nghi&ecirc;n cứu x&aacute;c định ảnh hưởng của chất trợ tương hợp đến t&iacute;nh chất của vật liệu compozit nền nhựa polypropylen v&agrave; bột thủy tinh thải CRT (t&iacute;nh chất cơ l&yacute;, cấu tr&uacute;c h&igrave;nh th&aacute;i, t&iacute;nh chống ch&aacute;y)</p>\r\n', ',', '', 'SUBMIT', '50', 'linh.nguyenphamduy', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('24', 'threadle.hathicam13534909092015', '2014-2015', 'Nghiên cứu mức độ nhận biết thương hiệu và đề xuất một số biện pháp truyền thông nhằm định vị thương hiệu Trường Đại học Bách Khoa Hà Nội', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- Nghi&ecirc;n cứu cơ sở l&yacute; thuyết về nhận biết thương hiệu;</p>\r\n\r\n<p>- X&acirc;y dựng m&ocirc; h&igrave;nh đ&aacute;nh gi&aacute; nhận biết thương hiệu dựa v&agrave;o c&aacute;c l&yacute; thuyết về thương hiệu, sự nhận biết thương hiệu;</p>\r\n\r\n<p>- &Aacute;p dụng m&ocirc; h&igrave;nh được x&acirc;y dựng đ&aacute;nh gi&aacute; nhận biết thương hiệu ĐHBK H&agrave; Nội, ph&acirc;n t&iacute;ch c&aacute;c tồn tại trong nhận biết thương hiệu Trường;</p>\r\n\r\n<p>- Đề xuất c&aacute;c giải ph&aacute;p truyền th&ocirc;ng nhằm định vị v&agrave; ph&aacute;t huy thương hiệu ĐHBK H&agrave; Nội.</p>\r\n', ',', '', 'SUBMIT', '20', 'le.hathicam', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('25', 'threadvinh.builong13564009092015', '2014-2015', 'Nghiên cứu, thiết kế, chế tạo thiết bị đo lực cắt trên máy tiện CNC có kết nối với máy tính phục vụ đào tạo sau đại học', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- Nghi&ecirc;n cứu, thiết kế thiết bị đo lực cắt tr&ecirc;n m&aacute;y tiện CNC.</p>\r\n\r\n<p>- Chế tạo thiết bị đo lực cắt tr&ecirc;n m&aacute;y tiện CNC.</p>\r\n\r\n<p>- Kiểm nghiệm kết quả đo của thiết bị.</p>\r\n', ',', '', 'SUBMIT', '50', 'vinh.builong', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('26', 'threadlam.tran13590609092015', '2014-2015', 'Thiết kế và chế tạo hệ thống đồ gá hàn đa năng phục vụ cho các quá trình hàn lai ghép tự động nhằm nâng cao năng suất và chất lượng các quá trình sản xuất hàn truyền thống', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- X&aacute;c định tình hình nghi&ecirc;n cứu và ứng dụng c&ocirc;ng ngh&ecirc;̣ hàn lai ghép Plasma-MIG, Plasma-TIG, TIG-MIG tại Việt Nam v&agrave; tr&ecirc;n thế giới.</p>\r\n\r\n<p>- X&acirc;y dựng quy trình thi&ecirc;́t k&ecirc;́ m&ocirc; hình hệ thống đồ g&aacute; h&agrave;n đa năng nhằm tạo ra m&ocirc; hình hàn lai ghép với hai mỏ hàn đ&ocirc;̣c l&acirc;̣p, đ&ocirc;̀ng t&ocirc;́c.</p>\r\n\r\n<p>- M&ocirc; phỏng h&ecirc;̣ th&ocirc;́ng đ&ocirc;̀ gá của m&ocirc; hình hàn lai ghép với hai mỏ hàn đ&ocirc;̣c l&acirc;̣p, đ&ocirc;̀ng t&ocirc;́c.</p>\r\n\r\n<p>- Chế tạo hệ thống đồ g&aacute; h&agrave;n đa năng c&oacute; khả năng kết hợp 2 mỏ h&agrave;n ri&ecirc;ng lẻ tương ứng với c&aacute;c qu&aacute; tr&igrave;nh h&agrave;n Plasma, TIG, MIG.</p>\r\n', ',', '', 'SUBMIT', '30', 'lam.tran', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('27', 'threaddong.nguyentien14004909092015', '2014-2015', 'Nghiên cứu thiết kế, chế tạo thiết bị tạo dao động siêu âm cho dung dịch trơn nguội để làm sạch bề mặt đá mài khi gia công trên máy điều khiển số.', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- Nghi&ecirc;n cứu về dao động si&ecirc;u &acirc;m</p>\r\n\r\n<p>- Nghi&ecirc;n cứu về tạo dao động si&ecirc;u &acirc;m cho dung dịch trơn nguội</p>\r\n\r\n<p>- Nghi&ecirc;n cứu hiện tượng &ldquo;bết đ&aacute;&rdquo; v&agrave; cơ chế</p>\r\n\r\n<p>- Nghi&ecirc;n cứu c&aacute;c biện ph&aacute;p giảm trừ hiện tượng &ldquo;bết đ&aacute;&rdquo;</p>\r\n\r\n<p>- Nghi&ecirc;n cứu c&aacute;c th&ocirc;ng số dao động si&ecirc;u &acirc;m ph&ugrave; hợp để l&agrave;m sạch bề mặt đ&aacute; m&agrave;i</p>\r\n\r\n<p>- Thiết kế, chế tạo thiết bị tạo dao động si&ecirc;u &acirc;m cho dung dịch trơn nguội</p>\r\n\r\n<p>- Thử nghiệm, so s&aacute;nh v&agrave; điều chỉnh</p>\r\n', ',', '', 'SUBMIT', '30', 'dong.nguyentien', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('28', 'threadthu.nguyenthi14040009092015', '2014-2015', 'Nghiên cứu, thiết kế và chế tạo khuôn thí nghiệm dập thủy tĩnh chi tiết trụ bậc rỗng, kết hợp đo tự động các thông số công nghệ, phục vụ cho chương trình đào tạo tại cơ sở', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- Nghi&ecirc;n cứu về tạo h&igrave;nh c&aacute;c chi tiết vỏ mỏng phức tạp bằng phương ph&aacute;p dập thủy tĩnh.</p>\r\n\r\n<p>- Nghi&ecirc;n cứu, thiết kế v&agrave; chế tạo hệ thống khu&ocirc;n tạo h&igrave;nh chi tiết trụ bậc rỗng.</p>\r\n\r\n<p>- Khảo s&aacute;t c&aacute;c th&ocirc;ng số c&ocirc;ng nghệ trong qu&aacute; tr&igrave;nh dập thủy tĩnh chi tiết c&oacute; h&igrave;nh dạng phức tạp</p>\r\n', ',', '', 'SUBMIT', '30', 'thu.nguyenthi', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('29', 'threadduong.nguyenthuy14055809092015', '2014-2015', 'Nghiên cứu, thiết kế và chế tạo thiết bị khảo sát đặc tính lực ma sát trong piston xylanh khí nén', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- Nghi&ecirc;n cứu tổng quan về ma s&aacute;t trong piston xylanh kh&iacute; n&eacute;n</p>\r\n\r\n<p>- Nghi&ecirc;n cứu, x&acirc;y dựng phương ph&aacute;p khảo s&aacute;t đặc t&iacute;nh lực&nbsp; ma s&aacute;t trong piston - xylanh kh&iacute; n&eacute;n</p>\r\n\r\n<p>- Nghi&ecirc;n cứu thiết kế v&agrave; chế tạo thiết bị khảo s&aacute;t đặc t&iacute;nh lực ma s&aacute;t trong piston &ndash; xylanh kh&iacute; n&eacute;n.</p>\r\n', ',', '', 'SUBMIT', '50', 'duong.nguyenthuy', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('30', 'threadnam.lethibich14073609092015', '2014-2015', 'Nghiên cứu ứng xử động của kết cấu vỏ  nón,  trụ bằng vật liệu, composite chuyển động quay', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- X&acirc;y dựng thuật to&aacute;n Phần tử li&ecirc;n tục v&agrave; lập chương tr&igrave;nh m&aacute;y t&iacute;nh tr&ecirc;n Matlab để m&ocirc; phỏng v&agrave; t&iacute;nh tần số v&agrave; dạng dao động ri&ecirc;ng của c&aacute;c kết cấu vỏ trụ composite chuyển động quay.</p>\r\n\r\n<p>- Lập chương tr&igrave;nh t&iacute;nh to&aacute;n tự động bằng APDL để m&ocirc; phỏng v&agrave; t&iacute;nh tần số, dạng dao động ri&ecirc;ng cho vỏ trụ, n&oacute;n composite quay.</p>\r\n\r\n<p>- Ứng dụng đề t&agrave;i v&agrave;o thực tế để khảo s&aacute;t dao động của trục quay của turbin hơi (d&ugrave;ng trong h&agrave;ng kh&ocirc;ng, t&agrave;u hỏa), rotor động cơ điện</p>\r\n', ',', '', 'SUBMIT', '30', 'nam.lethibich', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('31', 'threadanh.buituan14090709092015', '2014-2015', 'Nghiên cứu thiết kế chế tạo hệ thống động lực chạy dao và tích hợp hệ thống điều khiển cnc cho tiện NC DFS2000', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<ul>\r\n	<li>Nghi&ecirc;n cứu l&yacute; thuyết điều khiển số v&agrave; tổng quan m&aacute;y tiện NC DFS2000.</li>\r\n	<li>Nghi&ecirc;n cứu thiết kế chế tạo hệ thống động lực chạy dao cho m&aacute;y tiện NC DFS2000.</li>\r\n</ul>\r\n\r\n<p>Nghi&ecirc;n cứu thiết kế chế tạo bộ điều khiển cho m&aacute;y tiện NC DFS2000.</p>\r\n', ',', '', 'SUBMIT', '80', 'anh.buituan', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('32', 'threadlan.phungxuan14105309092015', '2014-2015', 'Nghiên cứu, xây dựng hệ thống quản lý và tự động lựa chọn dụng cụ cắt trong gia công CNC', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- X&acirc;y dựng cơ sở dữ liệu (vật liệu gia c&ocirc;ng, m&aacute;y, dụng cụ cắt) v&agrave; hệ thống quản l&yacute; dụng cụ cắt cho gia c&ocirc;ng phay/khoan CNC</p>\r\n\r\n<p>- X&acirc;y dựng phương ph&aacute;p tự động lựa chọn dụng cụ cắt trong gia c&ocirc;ng phay/khoan CNC</p>\r\n', ',', '', 'SUBMIT', '20', 'lan.phungxuan', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('33', 'threadhieu.phanvan14133709092015', '2014-2015', 'Nghiên cứu, khảo sát, tính toán, xác định miền ổn định khi gia công trên máy phay CNC 3 trục bằng tiêu chí âm thanh', 'NATIONAL', '01/01/2015', '12/31/2015', '', '<p>- Khảo s&aacute;t ảnh hưởng của c&aacute;c th&ocirc;ng số c&ocirc;ng nghệ v&agrave; th&ocirc;ng số m&aacute;y đến miền ổn định khi gia c&ocirc;ng tr&ecirc;n m&aacute;y phay CNC 3 trục</p>\r\n\r\n<p>- X&acirc;y dựng m&ocirc; h&igrave;nh nghi&ecirc;n cứu t&iacute;nh ổn định khi gia c&ocirc;ng tr&ecirc;n m&aacute;y phay CNC 3 trục bằng ti&ecirc;u ch&iacute; &acirc;m thanh</p>\r\n\r\n<p>- X&acirc;y dựng&nbsp; v&agrave; Đo ch&iacute;nh x&aacute;c c&aacute;c th&ocirc;ng số của hệ thống m&aacute;y phay CNC 3 trục.(khối lượng quy đổi, độ cứng của to&agrave;n m&aacute;y, v&agrave; hệ số giảm chấn của to&agrave;n bộ m&aacute;y) bằng phương ph&aacute;p Taptest</p>\r\n\r\n<p>- Ứng dụng Matlab x&aacute;c định miền ổn định khi gia c&ocirc;ng tr&ecirc;n m&aacute;y phay CNC 3 trục bằng ti&ecirc;u ch&iacute; &acirc;m thanh</p>\r\n\r\n<p>- Thực nghiệm x&aacute;c định miền ổn định khi gia c&ocirc;ng tr&ecirc;n m&aacute;y phay CNC 3 trục dựa v&agrave;o mối quan hệ giữa chế độ cắt với lực cắt, &acirc;m thanh.</p>\r\n\r\n<p>- So s&aacute;nh đ&aacute;nh gi&aacute; độ ch&iacute;nh x&aacute;c của biểu đồ ổn định bằng malab v&agrave; đồ ổn định bằng thực nghiệm của m&aacute;y phay CNC 3 trục .</p>\r\n', ',,,', '', 'SUBMIT', '30', 'hieu.phanvan', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('34', 'threadhuy.vule14151809092015', '2014-2015', 'Thiết kế chế tạo thử nghiệm hộp giảm tốc bánh răng con lăn độ chính xác cao dùng trong các hệ dẫn động máy hiện đại và robot công nghiệp', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- Nghi&ecirc;n cứu cơ sở t&iacute;nh to&aacute;n thiết kế v&agrave; c&ocirc;ng nghệ gia c&ocirc;ng b&aacute;nh răng con lăn.</p>\r\n\r\n<p>- T&iacute;nh to&aacute;n thiết kế hộp giảm tốc b&aacute;nh răng con lăn theo y&ecirc;u cầu (Tỉ số truyền u = 29, c&ocirc;ng suất P = 1,18 kW, tốc độ trục v&agrave;o n1 = 750 v/ph).</p>\r\n\r\n<p>- Lập quy tr&igrave;nh c&ocirc;ng nghệ gia c&ocirc;ng.</p>\r\n\r\n<p>- X&acirc;y dựng bản vẽ thiết kế hộp giảm tốc b&aacute;nh răng con lăn.</p>\r\n\r\n<p>- Chế tạo v&agrave; lắp r&aacute;p hộp giảm tốc b&aacute;nh răng con lăn.</p>\r\n\r\n<p>- Chạy thử nghiệm v&agrave; đ&aacute;nh gi&aacute;.</p>\r\n', ',', '', 'SUBMIT', '80', 'huy.vule', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('35', 'threadnam.legiang16190709092015', '2014-2015', 'Nghiên cứu, tính toán, thiết kế và chế tạo bộ điều khiển máy cắt laser công suất nhỏ điều khiển số 3 trục', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- Nghi&ecirc;n cứu tổng quan về gia c&ocirc;ng cắt gọt bằng laser, thuật to&aacute;n v&agrave; phần mềm điều khiển số tr&ecirc;n nền tảng PC.</p>\r\n\r\n<p>- T&iacute;nh to&aacute;n, thiết kế v&agrave; chế tạo bộ điều khiển nguồn laser c&ocirc;ng suất đến 5000mw.</p>\r\n\r\n<p>- T&iacute;nh to&aacute;n, thiết kế v&agrave; chế tạo bộ điều khiển số truyền động 3 trục.</p>\r\n', ',', '', 'SUBMIT', '70', 'nam.legiang', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('36', 'threadquy.vudinh16205909092015', '2014-2015', 'Nghiên cứu, thiết kế và chế tạo mô hình máy phát điện chạy bằng sức gió dựa trên nguyên lý hiện lượng khí động đàn hồi Flutter.', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- Nghi&ecirc;n cứu về hiện tượng kh&iacute; động đ&agrave;n hồi Flutter v&agrave; nguy&ecirc;n l&yacute; tạo ra điện dựa tr&ecirc;n hiện tượng kh&iacute; động đ&agrave;n hồi Flutter</p>\r\n\r\n<p>- Thiết kế m&ocirc; h&igrave;nh m&aacute;y ph&aacute;t điện dựa tr&ecirc;n hiện tượng kh&iacute; động đ&agrave;n hồi Flutter.</p>\r\n\r\n<p>- Chế tạo m&ocirc; h&igrave;nh m&aacute;y ph&aacute;t điện bằng sức gi&oacute; dựa tr&ecirc;n nguy&ecirc;n l&yacute; hiện tượng kh&iacute; động đ&agrave;n hồi Flutter.</p>\r\n\r\n<p>- Thử nghiệm m&ocirc; h&igrave;nh m&aacute;y ph&aacute;t điện, đ&aacute;nh gi&aacute; c&ocirc;ng suất.</p>\r\n', ',', '', 'SUBMIT', '30', 'quy.vudinh', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('37', 'threadhuong.tranthithu16233409092015', '2014-2015', 'Nghiên cứu thiết kế, chế tạo hệ thống cung cấp nhiên liệu n-heptane cho động cơ diesel chuyển đổi sang cháy do nén hỗn hợp đồng nhất (HCCI)', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- Nghi&ecirc;n cứu tổng quan về nguy&ecirc;n lý ch&aacute;y do n&eacute;n hỗn hợp đồng nhất (HCCI).</p>\r\n\r\n<p>- Nghi&ecirc;n cứu thiết kế hệ thống nhi&ecirc;n liệu cung cấp n-heptane cho động cơ diesel chuyển đổi sang HCCI.</p>\r\n\r\n<p>- Ch&ecirc;́ tạo hệ thống cung cấp nhi&ecirc;n liệu n-heptane cho động cơ diesel chuyển đổi sang HCCI.</p>\r\n', ',', '', 'SUBMIT', '30', 'huong.tranthithu', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('38', 'threadhuy.vuquoc16252109092015', '2014-2015', 'Nghiên cứu xây dựng mô đun điều khiển phối hợp giữa các phương tiện không người lái', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- Nghi&ecirc;n cứu giao thức kết nối v&agrave; truyền tải dữ liệu giữa c&aacute;c phương tiện kh&ocirc;ng người l&aacute;i.</p>\r\n\r\n<p>- Nghi&ecirc;n cứu x&acirc;y dựng m&ocirc;đun điều khiển phối hợp v&agrave; thử nghiệm kết nối giữa c&aacute;c phương tiện kh&ocirc;ng người l&aacute;i.</p>\r\n', ',', '', 'SUBMIT', '30', 'huy.vuquoc', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('39', 'threadhe.ngovan16271809092015', '2014-2015', 'Nghiên cứu thiết kế tối ưu hình dáng và phát triển loại tàu hàng khô 5000 tấn, không sử dụng nước dằn, tiết kiệm nhiên liệu. ', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- T&iacute;nh to&aacute;n thiết kế t&agrave;u h&agrave;ng kh&ocirc; 5000 tấn kh&ocirc;ng sử dụng nước dằn.</p>\r\n\r\n<ul>\r\n	<li>Nghi&ecirc;n cứu tối ưu h&igrave;nh d&aacute;ng t&agrave;u h&agrave;ng kh&ocirc; 5000 tấn kh&ocirc;ng sử dụng nước dằn.</li>\r\n</ul>\r\n\r\n<p>- Thiết kế v&agrave; chế tạo 01 m&ocirc; h&igrave;nh t&agrave;u h&agrave;ng kh&ocirc; kh&ocirc;ng sử dụng nước dằn, tiết kiệm nhi&ecirc;n liệu, tối ưu h&igrave;nh d&aacute;ng tỷ lệ 1/100.</p>\r\n', ',', '', 'SUBMIT', '30', 'he.ngovan', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('40', 'threadvinh.tranquang16290209092015', '2014-2015', 'Nghiên cứu tính toán thiết kế thiết bị đo liên tục lượng nhiên liệu tiêu thụ theo nguyên lý Coriolis.', 'UNIVERSTITY', '01/01/2015', '12/31/2015', '', '<p>- Nghi&ecirc;n cứu nguy&ecirc;n l&yacute; đo lưu lượng li&ecirc;n tục kiểu Coriolis</p>\r\n\r\n<p>- T&iacute;nh to&aacute;n, thiết kế hệ thống đo lưu lượng li&ecirc;n tục d&ugrave;ng cho động cơ xe m&aacute;y v&agrave; &ocirc; t&ocirc;.</p>\r\n', ',', '', 'SUBMIT', '30', 'vinh.tranquang', null, '0', null, null, null, '0', '0', '');
INSERT INTO `tblprojects` VALUES ('52', 'T20161552', null, 'Đề tài cấp 2', null, null, null, '<p>fdfd</p>\r\n', '<p>ffff</p>\r\n', '<p>xxxx</p>\r\n', null, null, '0', 'dungpq', null, '0', null, null, null, '100', '0', 'T201615');

-- ----------------------------
-- Table structure for `tblprojectsdeclaration`
-- ----------------------------
DROP TABLE IF EXISTS `tblprojectsdeclaration`;
CREATE TABLE `tblprojectsdeclaration` (
  `PROJDECL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJDECL_Name` varchar(255) NOT NULL,
  `PROJDECL_ProjCategory_Code` varchar(255) NOT NULL,
  `PROJDECL_User_Code` varchar(255) NOT NULL,
  `PROJDECL_Budget` int(11) NOT NULL,
  `PROJDECL_ConvertedHours` int(11) NOT NULL,
  `PROJDECL_AuthorConvertedHours` int(11) DEFAULT NULL,
  `PROJDECL_Year` int(5) NOT NULL,
  `PROJDECL_ReportingAcademicDate` varchar(20) NOT NULL,
  PRIMARY KEY (`PROJDECL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblprojectsdeclaration
-- ----------------------------
INSERT INTO `tblprojectsdeclaration` VALUES ('14', 'Nghiên cứu và phát triển các thuật toán tối ưu dựa trên dự đoán để giải bài toán điều hành xe với tham số không cố định', 'SMINISTRY', 'dungpq', '730', '1300', '600', '2015', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('16', 'Nghiên cứu phát triển thuật toán truyền dữ liệu tối ưu và công cụ sinh mã tự động trên các bộ xử lý đồ hoạ (GPU computing) cho một số bài toán tính toán hiệu năng cao.', 'EMINISTRY', 'thieuvv', '400', '1000', '500', '2015', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('17', 'Xây dựng phần mềm tự động phân loại văn bản sử dụng phương pháp học chủ đề ẩn bán giám sát', 'UNIVERSTITY', 'linhnv', '10', '500', '500', '2014', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('18', 'Phân đoạn ảnh dựa trên lược đồ học có tương tác (Image segmentation based on an interactive learning scheme)', 'UNIVERSTITY', 'sangdv', '25', '500', '500', '2014', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('19', 'T2014-125 - Đánh giá độ an toàn hệ thống thông tin dựa trên thông tin truy cập', 'UNIVERSTITY', 'tuannm', '20000000', '500', '500', '2014', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('21', 'Xây dựng thử nghiệm phần mềm lọc thư rác tiếng Việt', 'UNIVERSTITY', 'giangvth', '45', '500', '500', '2014', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('23', 'Nghiên cứu thiết kế chế tạo hệ thống thiết bị hàn hồ quang ảo', 'NATIONAL', 'dungpq', '160', '1000', '400', '2014', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('25', 'Xếp hạng kết quả truy vấn trong môi trường phân tán', 'UNIVERSTITY', 'trinhvt', '30', '500', '500', '2014', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('26', 'Nghiên cứu và phát triển phương pháp định vị chính xác sử dụng trạm tham chiếu toàn cầu', 'UNIVERSTITY', 'vinhlt', '30', '500', '500', '2014', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('27', 'Nghiên cứu ứng dụng thuật toán trên đồ thị để phân hạng gien, kiểu hình bệnh và ứng dụng trong việc tìm gien gây bệnh mới và mối liên quan mới giữa các bệnh', 'EMINISTRY', 'thuandp', '500', '1000', '600', '2014', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('28', 'Nghiên cứu và phát triển các thuật toán tối ưu dựa trên dự đoán để giải quyết các bài toán điều hành xe với tham số không cố định', 'SMINISTRY', 'thuandp', '600', '1300', '600', '2014', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('29', 'Các phương pháp suy diễn cho phân tích ngữ nghĩa ẩn trong dữ liệu lớn', 'SMINISTRY', 'linhnv', '576', '1300', '250', '2015', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('31', 'Các phương pháp suy diễn cho phân tích ngữ nghĩa ẩn  trong dữ liệu lớn', 'SMINISTRY', 'khoattq', '0', '1300', '200', '2015', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('32', 'Nghiên cứu xây dựng thuật toán giải quyết bài toán đường đi bao phủ và ứng dụng cho robot lau nhà mã số: B2015-01-91(Chủ nhiệm đề tài TS. Ngô Lam Trung, Phạm Văn Hải thành viên chính tham gia nghiên cứu đề tài)', 'EMINISTRY', 'haipv', '400', '1000', '500', '2015', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('33', 'Xây dựng thuật toán gom nhóm các nút theo độ tương quan để thực hiện định tuyến tiết kiệm năng lượng trong mạng cảm biến không dây', 'UNIVERSTITY', 'ngantt', '20', '500', '500', '2015', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('34', 'Inference methods for analyzing the semantics in big data', 'NATIONAL', 'trungtv', '547', '1300', '400', '2014', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('35', 'Nghiên cứu xây dựng thuật toán giải quyết bài toán đường đi bao phủ và ứng dụng cho robot lau nhà', 'EMINISTRY', 'trungnl', '400', '1000', '500', '2015', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('36', 'Nghiên cứu phát triển thuật toán truyền dữ liệu tối ưu và công cụ sinh mã tự động trên các bộ xử lý đồ hoạ (GPU computing) cho một số bài toán tính toán hiệu năng cao.', 'NATIONAL', 'dungnt', '400', '1000', '500', '2015', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('37', 'Các phương pháp kiểm chứng và cục bộ hoá lỗi cho hệ thống phần mềm hướng thành phần', 'SMINISTRY', 'hungnt', '648', '1300', '600', '2014', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('38', 'Triển khai thử nghiệm giao thức định tuyến an toàn và tiết kiệm năng lượng cho Internet of Things (Cấp trường T2014.CT-24)', 'UNIVERSTITY', 'dungpq', '100', '500', '500', '2014', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('39', 'Xây dựng công cụ mô phỏng các thuật toán định tuyến mạng không dây ứng dụng nghiên cứu khắc phục hố mạng trong môi trường địa hình phức tạp (B2013.01.45)', 'EMINISTRY', 'vannk', '530', '1100', '500', '2013', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('40', 'Nghiên cứu phát triển giải pháp  tích hợp GPS/ INS chặt và  siêu chặt trong cấu trúc xử  lý tín hiệu của bộ thu SDR GPS. MÃ SỐ: B2013.01.47.', 'EMINISTRY', 'lannth', '550', '1000', '600', '2013', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('41', 'Tìm hiểu các giải thuật sinh Internet topology và xây dựng bộ mô phỏng', 'UNIVERSTITY', 'haith', '10', '1000', '500', '2014', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('42', 'T2014.CT-23, Xây dựng thử nghiệm phần mềm phân tích nội dung dịch vụ để phát hiện xâm nhập trái phép dựa trên kỹ thuật khai phá dữ liệu', 'UNIVERSTITY', 'giangnl', '45', '500', '500', '2014', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('43', 'Kiểm soát cây trồng dựa trên nền tảng Internet of Things', 'EMINISTRY', 'thunq', '400', '1000', '600', '2014', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('44', 'B2012-01-27 Nghiên cứu, xây dựng, thử nghiệm phương pháp ảo hóa  (virtualization) nhằm tối ưu hóa mạng cảm biến không dây   giám sát môi trường.', 'NATIONAL', 'maibtq', '420', '500', '500', '2012', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('45', 'Kiêmr soát cây trồng dựa trên Internet of Things', 'EMINISTRY', 'tungbt', '400', '1000', '100', '2014', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('46', 'Nghiên cứu giải mã thông tin trong sóng điện não, ứng dụng xây dựng Hệ thống nhận diện cảm xúc con người.', 'NATIONAL', 'vietha', '760', '1000', '800', '2011', '2012-2013');
INSERT INTO `tblprojectsdeclaration` VALUES ('47', 'Nghiên cứu xây dựng hệ thống hỗ trợ chẩn đoán điện tâm đồ dựa trên công nghệ nhúng', 'EMINISTRY', 'vietha', '500', '1000', '300', '2012', '2012-2013');
INSERT INTO `tblprojectsdeclaration` VALUES ('48', 'Inference Methods for Analyzing the  Semantics in Big Data', 'SMINISTRY', 'minhnb', '0', '1300', '250', '2015', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('49', '“Nghiên cứu, phát triển bộ thu mềm hoạt động với đa hệ thống vệ tinh định vị toàn cầu”', 'EMINISTRY', 'tungth', '2800', '1000', '600', '2012', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('50', 'Nghiên cứu chế tạo hệ thống cung cấp dịch vụ định vị GPS độ chính xác cm trong thời gian thực cho các lĩnh vực đòi hỏi độ chính xác định vị cao', 'NATIONAL', 'tungth', '3200', '1000', '600', '2013', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('51', 'Nghiên cứu làm chủ công nghệ dịch vụ đám mây (tạo lập và cung cấp dịch vụ, cung cấp nội dung số, quản lý truy cập) ', 'NATIONAL', 'thanghq', '2830', '1000', '500', '2013', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('52', 'Các phương pháp suy diễn cho phân tích ngữ nghĩa ẩn trong dữ liệu lớn	', 'SMINISTRY', 'dungpq', '600', '1300', '200', '2014', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('53', 'Nghiên cứu xây dựng và triển khai dịch vụ tin sinh trên nền điện toán đám mây ứng dụng cho các bài toán siêu bộ gen', 'EMINISTRY', 'ducnh', '500', '1000', '200', '2015', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('54', 'Nghiên cứu phát triển giải pháp tích hợp GPS/ INS chặt và siêu chặt trong cấu trúc xử lý tín hiệu của bộ thu SDR GPS.', 'EMINISTRY', 'tungbt', '550', '1000', '400', '2013', '2014-2015');
INSERT INTO `tblprojectsdeclaration` VALUES ('55', 'Giải thuật di truyền tối ưu hóa tham số vân- bố cục trong bài toán phát hiện đối tượng', 'UNIVERSTITY', 'binhht', '40', '500', '500', '2014', '2014-2015');

-- ----------------------------
-- Table structure for `tblprojectstaffs`
-- ----------------------------
DROP TABLE IF EXISTS `tblprojectstaffs`;
CREATE TABLE `tblprojectstaffs` (
  `PROJSTAFF_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJSTAFF_Code` varchar(256) NOT NULL,
  `PROJSTAFF_Staff_Code` varchar(256) NOT NULL,
  `PROJSTAFF_Proj_Code` varchar(256) NOT NULL DEFAULT 'Map voi bang project',
  `PROJSTAFF_Role_Code` varchar(256) NOT NULL DEFAULT 'Map voi bang Roles',
  PRIMARY KEY (`PROJSTAFF_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblprojectstaffs
-- ----------------------------
INSERT INTO `tblprojectstaffs` VALUES ('11', 'trung.nguyenxuanthreadtrung.nguyenxuan06414609092015', 'trung.nguyenxuan', 'threadtrung.nguyenxuan06414609092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('12', 'thao.luongthiphuongthreadthao.luongthiphuong06433309092015', 'thao.luongthiphuong', 'threadthao.luongthiphuong06433309092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('13', 'lan.hoangthithreadlan.hoangthi06474509092015', 'lan.hoangthi', 'threadlan.hoangthi06474509092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('14', 'thuy.nguyenthithu1threadthuy.nguyenthithu106495809092015', 'thuy.nguyenthithu1', 'threadthuy.nguyenthithu106495809092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('15', 'loi.hothithreadloi.hothi06512909092015', 'loi.hothi', 'threadloi.hothi06512909092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('16', 'hung.nguyenthanh1threadhung.nguyenthanh106535409092015', 'hung.nguyenthanh1', 'threadhung.nguyenthanh106535409092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('17', 'tuyen.tranthithreadtuyen.tranthi06555309092015', 'tuyen.tranthi', 'threadtuyen.tranthi06555309092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('18', 'tu.nguyenthithanhthreadtu.nguyenthithanh13412209092015', 'tu.nguyenthithanh', 'threadtu.nguyenthithanh13412209092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('19', 'hung.nguyenhuy1threadhung.nguyenhuy113434809092015', 'hung.nguyenhuy1', 'threadhung.nguyenhuy113434809092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('20', 'hiep.hoangvanthreadhiep.hoangvan13463109092015', 'hiep.hoangvan', 'threadhiep.hoangvan13463109092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('21', 'dung.tranthikimthreaddung.tranthikim13491209092015', 'dung.tranthikim', 'threaddung.tranthikim13491209092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('22', 'linh.nguyenphamduythreadlinh.nguyenphamduy13505709092015', 'linh.nguyenphamduy', 'threadlinh.nguyenphamduy13505709092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('23', 'le.hathicamthreadle.hathicam13534909092015', 'le.hathicam', 'threadle.hathicam13534909092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('24', 'vinh.builongthreadvinh.builong13564009092015', 'vinh.builong', 'threadvinh.builong13564009092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('25', 'lam.tranthreadlam.tran13590609092015', 'lam.tran', 'threadlam.tran13590609092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('26', 'dong.nguyentienthreaddong.nguyentien14004909092015', 'dong.nguyentien', 'threaddong.nguyentien14004909092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('27', 'thu.nguyenthithreadthu.nguyenthi14040009092015', 'thu.nguyenthi', 'threadthu.nguyenthi14040009092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('28', 'duong.nguyenthuythreadduong.nguyenthuy14055809092015', 'duong.nguyenthuy', 'threadduong.nguyenthuy14055809092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('29', 'nam.lethibichthreadnam.lethibich14073609092015', 'nam.lethibich', 'threadnam.lethibich14073609092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('30', 'anh.buituanthreadanh.buituan14090709092015', 'anh.buituan', 'threadanh.buituan14090709092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('31', 'lan.phungxuanthreadlan.phungxuan14105309092015', 'lan.phungxuan', 'threadlan.phungxuan14105309092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('32', 'hieu.phanvanthreadhieu.phanvan14133709092015', 'hieu.phanvan', 'threadhieu.phanvan14133709092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('33', 'huy.vulethreadhuy.vule14151809092015', 'huy.vule', 'threadhuy.vule14151809092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('34', 'nam.legiangthreadnam.legiang16190709092015', 'nam.legiang', 'threadnam.legiang16190709092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('35', 'quy.vudinhthreadquy.vudinh16205909092015', 'quy.vudinh', 'threadquy.vudinh16205909092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('36', 'huong.tranthithuthreadhuong.tranthithu16233409092015', 'huong.tranthithu', 'threadhuong.tranthithu16233409092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('37', 'huy.vuquocthreadhuy.vuquoc16252109092015', 'huy.vuquoc', 'threadhuy.vuquoc16252109092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('38', 'he.ngovanthreadhe.ngovan16271809092015', 'he.ngovan', 'threadhe.ngovan16271809092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('39', 'vinh.tranquangthreadvinh.tranquang16290209092015', 'vinh.tranquang', 'threadvinh.tranquang16290209092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('40', 'administratorthreadadministrator22072317092015', 'administrator', 'threadadministrator22072317092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('45', 'huongltthreadadministrator22103017092015', 'huonglt', 'threadadministrator22103017092015', 'PROJECT_RESEARCHER');
INSERT INTO `tblprojectstaffs` VALUES ('46', 'administratorthreadadministrator22335117092015', 'administrator', 'threadadministrator22335117092015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('51', 'diepdbthreadadministrator22335117092015', 'diepdb', 'threadadministrator22335117092015', 'PROJECT_SECRETARY');
INSERT INTO `tblprojectstaffs` VALUES ('52', 'administratorthreadadministrator00033406102015', 'administrator', 'threadadministrator00033406102015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('53', 'dungctthreadadministrator00033406102015', 'dungct', 'threadadministrator00033406102015', 'PROJECT_SECRETARY');
INSERT INTO `tblprojectstaffs` VALUES ('54', 'viethathreadadministrator00033406102015', 'vietha', 'threadadministrator00033406102015', 'PROJECT_SECRETARY');
INSERT INTO `tblprojectstaffs` VALUES ('55', 'administratorthreadadministrator21401721102015', 'administrator', 'threadadministrator21401721102015', 'PROJECT_LEADER');
INSERT INTO `tblprojectstaffs` VALUES ('58', 'bangbhthreadadministrator21401721102015', 'bangbh', 'threadadministrator21401721102015', 'PROJECT_SECRETARY');
INSERT INTO `tblprojectstaffs` VALUES ('59', 'sangdvthreadadministrator21401721102015', 'sangdv', 'threadadministrator21401721102015', 'PROJECT_SECRETARY');

-- ----------------------------
-- Table structure for `tblprojectstatuses`
-- ----------------------------
DROP TABLE IF EXISTS `tblprojectstatuses`;
CREATE TABLE `tblprojectstatuses` (
  `PROJSTAT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJSTAT_Code` varchar(256) NOT NULL,
  `PROJSTAT_Description` varchar(256) NOT NULL,
  PRIMARY KEY (`PROJSTAT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblprojectstatuses
-- ----------------------------
INSERT INTO `tblprojectstatuses` VALUES ('1', 'SUBMIT', 'Đã nộp đề tài');
INSERT INTO `tblprojectstatuses` VALUES ('2', 'APPROVED', 'Đã phê duyệt');
INSERT INTO `tblprojectstatuses` VALUES ('3', 'PROGRESSING', 'Đang thực hiện');
INSERT INTO `tblprojectstatuses` VALUES ('4', 'SUCCESS', 'Đã nghiệm thu');
INSERT INTO `tblprojectstatuses` VALUES ('5', 'FAILED', 'Thất bại');
INSERT INTO `tblprojectstatuses` VALUES ('6', 'REJECT', 'Không phê duyệt');

-- ----------------------------
-- Table structure for `tblstaffcategory`
-- ----------------------------
DROP TABLE IF EXISTS `tblstaffcategory`;
CREATE TABLE `tblstaffcategory` (
  `Staff_Category_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Staff_Category_Code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Staff_Category_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Staff_Category_AsciiName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Staff_Category_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tblstaffcategory
-- ----------------------------
INSERT INTO `tblstaffcategory` VALUES ('1', 'LEC', 'Lecturer', 'lecturer');

-- ----------------------------
-- Table structure for `tblstaffjurysubmittedprojects`
-- ----------------------------
DROP TABLE IF EXISTS `tblstaffjurysubmittedprojects`;
CREATE TABLE `tblstaffjurysubmittedprojects` (
  `STFJUPRJ_ID` int(11) NOT NULL AUTO_INCREMENT,
  `STFJUPRJ_CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã đợt gọi',
  `STFJUPRJ_STAFFJURCODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã loại đề tài (tham chiếu tblprojectcategory)',
  `STFJUPRJ_PRJCODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên đợt gọi đề tài',
  PRIMARY KEY (`STFJUPRJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tblstaffjurysubmittedprojects
-- ----------------------------

-- ----------------------------
-- Table structure for `tblstaffs`
-- ----------------------------
DROP TABLE IF EXISTS `tblstaffs`;
CREATE TABLE `tblstaffs` (
  `Staff_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Staff_Code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Staff_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Staff_AsciiName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Staff_Email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Staff_Department_Code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Staff_Phone` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Staff_Category_Code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Staff_User_Code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Staff_Faculty_Code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Staff_DateOfBirth` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Staff_Gender` enum('male','female') COLLATE utf8_unicode_ci DEFAULT 'male',
  PRIMARY KEY (`Staff_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tblstaffs
-- ----------------------------
INSERT INTO `tblstaffs` VALUES ('2', 'administrator', 'Quản trị', 'Quản trị', 'administrator@gmail.com', 'QLDADT-BQLDADT', '01686714663', 'LEC', 'administrator', 'TTMTT', '28/10/1988', 'male');
INSERT INTO `tblstaffs` VALUES ('5', 'dungpq', 'dungpq', 'dungpq', 'dungpq@soict.hust.edu.vn', 'SOICT-BMKHMT', '0947732280', 'LEC', 'dungpq', 'SOICT', '23/02/1980', 'male');
INSERT INTO `tblstaffs` VALUES ('8', 'binhht', 'Huỳnh Thị Thanh Bình', 'Huỳnh Thị Thanh Bình', 'binhht@soict.hust.edu.vn', 'SOICT-BMKHMT', '0', 'LEC', 'binhht', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('9', 'thuandp', 'Đỗ Phan Thuận', 'Đỗ Phan Thuận', 'thuandp@soict.hust.edu.vn', 'SOICT-BMKHMT', '0', 'LEC', 'thuandp', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('11', 'nghiand', 'Nguyễn Đức Nghĩa', 'Nguyễn Đức Nghĩa', 'nghiand@soict.hust.edu.vn', 'SOICT-BMKHMT', '0', 'LEC', 'nghiand', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('12', 'haipd', 'Phạm Đăng Hải', 'Phạm Đăng Hải', 'haipd@soict.hust.edu.vn', 'SOICT-BMKHMT', '0', 'LEC', 'haipd', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('13', 'sangdv', 'Đinh Viết Sang', 'Đinh Viết Sang', 'sangdv@soict.hust.edu.vn', 'SOICT-BMKHMT', '0', 'LEC', 'sangdv', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('14', 'thieuvv', 'Vũ Văn Thiệu', 'Vũ Văn Thiệu', 'thieuvv@soict.hust.edu.vn', 'SOICT-BMKHMT', '0', 'LEC', 'thieuvv', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('15', 'ductv', 'Trần Vĩnh Đức', 'Trần Vĩnh Đức', 'ductv@soict.hust.edu.vn', 'SOICT-BMKHMT', '0', 'LEC', 'ductv', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('17', 'dungnt', 'Nguyễn Tuấn Dũng', 'Nguyễn Tuấn Dũng', 'dungnt@soict.hust.edu.vn', 'SOICT-BMKHMT', '0988599150', 'LEC', 'dungnt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('18', 'bangbh', 'Ban Hà Bằng', 'Ban Hà Bằng', 'bangbh@soict.hust.edu.vn', 'SOICT-BMKHMT', '0', 'LEC', 'bangbh', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('19', 'anhdt', 'Đỗ Tuấn Anh', 'Đỗ Tuấn Anh', 'anhdt@soict.hust.edu.vn', 'SOICT-BMKHMT', '0', 'LEC', 'anhdt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('20', 'hiepnd', 'Nguyễn Duy Hiệp', 'Nguyễn Duy Hiệp', 'hiepnd@soict.hust.edu.vn', 'SOICT-BMKHMT', '0', 'LEC', 'hiepnd', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('21', 'duongnn', 'Nguyễn Ngọc Dương', 'Nguyễn Ngọc Dương', 'duongnn@soict.hust.edu.vn', 'SOICT-BMKHMT', '0', 'LEC', 'duongnn', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('22', 'trungnl', 'Ngô Lam Trung', 'Ngô Lam Trung', 'trungnl@soict.hust.edu.vn', 'SOICT-BMKTMT', '0', 'LEC', 'trungnl', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('23', 'vinhlt', 'Lã Thế Vinh', 'Lã Thế Vinh', 'vinhlt@soict.hust.edu.vn', 'SOICT-BMKTMT', '0', 'LEC', 'vinhlt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('24', 'thanghq', 'Huỳnh Quyết Thắng ', 'Huỳnh Quyết Thắng ', 'thanghq@soict.hust.edu.vn', 'SOICT-BMCNPM', '0', 'LEC', 'thanghq', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('25', 'dungct', 'Cao Tuấn Dũng', 'Cao Tuấn Dũng', 'dungct@soict.hust.edu.vn', 'SOICT-BMCNPM', '0', 'LEC', 'dungct', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('26', 'giangvth', 'Vũ Thị Hương Giang', 'Vũ Thị Hương Giang', 'giangvth@soict.hust.edu.vn', 'SOICT-BMCNPM', '0', 'LEC', 'giangvth', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('27', 'sonnh', 'Ngô Hồng Sơn', 'Ngô Hồng Sơn', 'sonnh@soict.hust.edu.vn', 'SOICT-BMTTMMT', '0', 'LEC', 'sonnh', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('28', 'linhtd', 'Trương Diệu Linh', 'Trương Diệu Linh', 'linhtd@soict.hust.edu.vn', 'SOICT-BMTTMMT', '0', 'LEC', 'linhtd', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('29', 'thunq', 'Ngô Quỳnh Thu', 'Ngô Quỳnh Thu', 'thunq@soict.hust.edu.vn', 'SOICT-BMTTMMT', '0', 'LEC', 'thunq', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('30', 'oanhnt', 'Nguyễn Thị Oanh', 'Nguyễn Thị Oanh', 'oanhnt@soict.hust.edu.vn', 'SOICT-BMHTTT', '0', 'LEC', 'oanhnt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('31', 'quangnn', 'Nguyễn Nhật Quang', 'Nguyễn Nhật Quang', 'quangnn@soict.hust.edu.vn', 'SOICT-BMHTTT', '0', 'LEC', 'quangnn', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('32', 'tungth', 'Tạ Hải Tùng', 'Tạ Hải Tùng', 'tungth@soict.hust.edu.vn', 'SOICT-BMTTMMT', '0', 'LEC', 'tungth', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('33', 'dattt', 'Trịnh Tuấn Đạt ', 'Trịnh Tuấn Đạt ', 'dattt@soict.hust.edu.vn', 'SOICT-BMCNPM', '0', 'LEC', 'dattt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('34', 'anhth', 'Trần Hải Anh', 'Trần Hải Anh', 'anhth@soict.hust.edu.vn', 'SOICT-BMTTMMT', '0', 'LEC', 'anhth', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('35', 'chuyetdv', 'Đặng Văn Chuyết', 'Đặng Văn Chuyết', 'chuyetdv@soict.hust.edu.vn', 'SOICT-BMTTMMT', '0', 'LEC', 'chuyetdv', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('36', 'ductq', 'Trần Quang Đức', 'Trần Quang Đức', 'ductq@soict.hust.edu.vn', 'SOICT-BMTTMMT', '0', 'LEC', 'ductq', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('37', 'giangnl', 'Nguyễn Linh Giang', 'Nguyễn Linh Giang', 'giangnl@soict.hust.edu.vn', 'SOICT-BMTTMMT', '0', 'LEC', 'giangnl', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('38', 'haith', 'Trần Hoàng Hải', 'Trần Hoàng Hải', 'haith@soict.hust.edu.vn', 'SOICT-BMTTMMT', '0', 'LEC', 'haith', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('39', 'hiennt', 'Nguyễn Thị Hiền', 'Nguyễn Thị Hiền', 'hiennt@soict.hust.edu.vn', 'SOICT-BMTTMMT', '0', 'LEC', 'hiennt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('40', 'dungnn', 'Nguyễn Ngọc Dũng', 'Nguyễn Ngọc Dũng', 'dungnn@soict.hust.edu.vn', 'SOICT-BMCNPM', '0', 'LEC', 'dungnn', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('42', 'hoalt', 'Lê Thị Hòa', 'Lê Thị Hòa', 'hoalt@soict.hust.edu.vn', 'SOICT-BMCNPM', '0', 'LEC', 'hoalt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('43', 'hunglt', 'Lê Tấn Hùng', 'Lê Tấn Hùng', 'hunglt@soict.hust.edu.vn', 'SOICT-BMCNPM', '0', 'LEC', 'hunglt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('44', 'hungnt', 'Nguyễn Thanh Hùng', 'Nguyễn Thanh Hùng', 'hungnt@soict.hust.edu.vn', 'SOICT-BMCNPM', '0', 'LEC', 'hungnt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('45', 'nguyenthanh', 'Nguyễn Tiến Thành', 'Nguyễn Tiến Thành', 'nguyenthanh@soict.hust.edu.vn', 'SOICT-BMCNPM', '0', 'LEC', 'nguyenthanh', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('46', 'phanliem', 'Phan Thanh Liêm', 'Phan Thanh Liêm', 'phanliem@soict.hust.edu.vn', 'SOICT-BMCNPM', '0', 'LEC', 'phanliem', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('47', 'trangntt', 'Nguyễn Thị Thu Trang', 'Nguyễn Thị Thu Trang', 'trangntt@soict.hust.edu.vn', 'SOICT-BMCNPM', '0', 'LEC', 'trangntt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('48', 'trungld', 'Lê Đức Trung', 'Lê Đức Trung', 'trungld@soict.hust.edu.vn', 'SOICT-BMCNPM', '0', 'LEC', 'trungld', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('49', 'trungtt', 'Trịnh Thành Trung', 'Trịnh Thành Trung', 'trungtt@soict.hust.edu.vn', 'SOICT-BMCNPM', '0', 'LEC', 'trungtt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('50', 'tuannm', 'Nguyễn Mạnh Tuấn', 'Nguyễn Mạnh Tuấn', 'tuannm@soict.hust.edu.vn', 'SOICT-BMCNPM', '0', 'LEC', 'tuannm', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('51', 'vannk', 'Nguyễn Khánh Văn', 'Nguyễn Khánh Văn', 'vannk@soict.hust.edu.vn', 'SOICT-BMCNPM', '0', 'LEC', 'vannk', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('52', 'vietha', 'Hoàng Anh Việt', 'Hoàng Anh Việt', 'vietha@soict.hust.edu.vn', 'SOICT-BMCNPM', '0', 'LEC', 'vietha', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('53', 'anhnk', 'Nguyễn Kim Anh', 'Nguyễn Kim Anh', 'anhnk@soict.hust.edu.vn', 'SOICT-BMHTTT', '0', 'LEC', 'anhnk', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('54', 'diepdb', 'Đỗ Bích Diệp', 'Đỗ Bích Diệp', 'diepdb@soict.hust.edu.vn', 'SOICT-BMHTTT', '0', 'LEC', 'diepdb', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('55', 'ducnh', 'Nguyễn Hữu Đức', 'Nguyễn Hữu Đức', 'ducnh@soict.hust.edu.vn', 'SOICT-BMHTTT', '0', 'LEC', 'ducnh', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('56', 'giangptp', 'Phạm Thị Phương Giang', 'Phạm Thị Phương Giang', 'giangptp@soict.hust.edu.vn', 'SOICT-BMHTTT', '0', 'LEC', 'giangptp', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('57', 'huonglt', 'Lê Thanh Hương', 'Lê Thanh Hương', 'huonglt@soict.hust.edu.vn', 'SOICT-BMHTTT', '0', 'LEC', 'huonglt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('58', 'khangtd', 'Trần Đình Khang', 'Trần Đình Khang', 'khangtd@soict.hust.edu.vn', 'SOICT-BMHTTT', '0', 'LEC', 'khangtd', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('59', 'khoattq', 'Thân Quang Khoát', 'Thân Quang Khoát', 'khoattq@soict.hust.edu.vn', 'SOICT-BMHTTT', '0', 'LEC', 'khoattq', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('60', 'linhnv', 'Ngô Văn Linh', 'Ngô Văn Linh', 'linhnv@soict.hust.edu.vn', 'SOICT-BMHTTT', '0', 'LEC', 'linhnv', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('61', 'lenp', 'Nguyễn Phi Lê', 'Nguyễn Phi Lê', 'lenp@soict.hust.edu.vn', 'SOICT-BMCNPM', '0', 'LEC', 'lenp', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('62', 'minhnb', 'Nguyễn Bình Minh', 'Nguyễn Bình Minh', 'minhnb@soict.hust.edu.vn', 'SOICT-BMHTTT', '0', 'LEC', 'minhnb', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('63', 'ngocnb', 'Nguyễn Bá Ngọc', 'Nguyễn Bá Ngọc', 'ngocnb@soict.hust.edu.vn', 'SOICT-BMHTTT', '0', 'LEC', 'ngocnb', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('64', 'phongnt', 'Ngô Tuấn Phong', 'Ngô Tuấn Phong', 'phongnt@soict.hust.edu.vn', 'SOICT-BMHTTT', '0', 'LEC', 'phongnt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('65', 'phongph', 'Phạm Hồng Phong', 'Phạm Hồng Phong', 'phongph@soict.hust.edu.vn', 'SOICT-BMHTTT', '0', 'LEC', 'phongph', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('66', 'phuongnh', 'Nguyễn Hồng Phương', 'Nguyễn Hồng Phương', 'phuongnh@soict.hust.edu.vn', 'SOICT-BMHTTT', '0', 'LEC', 'phuongnh', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('67', 'anhbq', 'Bùi Quốc Anh', 'Bùi Quốc Anh', 'anhbq@soict.hust.edu.vn', 'SOICT-BMKTMT', '0', 'LEC', 'anhbq', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('68', 'binhdt', 'Dư Thanh Bình', 'Dư Thanh Bình', 'binhdt@soict.hust.edu.vn', 'SOICT-BMKTMT', '0', 'LEC', 'binhdt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('69', 'duongnhn', 'Nguyễn Hữu Nam Dương', 'Nguyễn Hữu Nam Dương', 'duongnhn@soict.hust.edu.vn', 'SOICT-BMKTMT', '0', 'LEC', 'duongnhn', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('70', 'hiephv', 'Hoàng Văn Hiệp', 'Hoàng Văn Hiệp', 'hiephv@soict.hust.edu.vn', 'SOICT-BMKTMT', '0', 'LEC', 'hiephv', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('71', 'hoangla', 'Lương Ánh Hoàng', 'Lương Ánh Hoàng', 'hoangla@soict.hust.edu.vn', 'SOICT-BMKTMT', '0', 'LEC', 'hoangla', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('72', 'hungpn', 'Phạm Ngọc Hưng', 'Phạm Ngọc Hưng', 'hungpn@soict.hust.edu.vn', 'SOICT-BMKTMT', '0', 'LEC', 'hungpn', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('73', 'khanhnk', 'Nguyễn Kim Khánh', 'Nguyễn Kim Khánh', 'khanhnk@soict.hust.edu.vn', 'SOICT-BMKTMT', '0', 'LEC', 'khanhnk', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('74', 'kiennt', 'Nguyễn Thành Kiên', 'Nguyễn Thành Kiên', 'kiennt@soict.hust.edu.vn', 'SOICT-BMKTMT', '0', 'LEC', 'kiennt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('75', 'kientt', 'Trần Trung Kiên', 'Trần Trung Kiên', 'kientt@soict.hust.edu.vn', 'SOICT-BMKTMT', '0', 'LEC', 'kientt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('76', 'loantv', 'Trịnh Văn Loan', 'Trịnh Văn Loan', 'loantv@soict.hust.edu.vn', 'SOICT-BMKTMT', '0', 'LEC', 'loantv', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('77', 'ngantt', 'Nguyễn Thị Thanh Nga', 'Nguyễn Thị Thanh Nga', 'ngantt@soict.hust.edu.vn', 'SOICT-BMKTMT', '0', 'LEC', 'ngantt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('78', 'quangnh', 'Nguyễn Hồng Quang', 'Nguyễn Hồng Quang', 'quangnh@soict.hust.edu.vn', 'SOICT-BMKTMT', '0', 'LEC', 'quangnh', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('79', 'thanhlx', 'Lê Xuân Thành', 'Lê Xuân Thành', 'thanhlx@soict.hust.edu.vn', 'SOICT-BMKTMT', '0', 'LEC', 'thanhlx', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('80', 'thuannd', 'Nguyễn Đình Thuận', 'Nguyễn Đình Thuận', 'thuannd@soict.hust.edu.vn', 'SOICT-BMKTMT', '0', 'LEC', 'thuannd', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('81', 'thuanpv', 'Phạm Văn Thuận', 'Phạm Văn Thuận', 'thuanpv@soict.hust.edu.vn', 'SOICT-BMKTMT', '0', 'LEC', 'thuanpv', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('82', 'tiennd', 'Nguyễn Đức Tiến', 'Nguyễn Đức Tiến', 'tiennd@soict.hust.edu.vn', 'SOICT-BMKTMT', '0', 'LEC', 'tiennd', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('83', 'trangdtt', 'Đỗ Thị Thu Trang', 'Đỗ Thị Thu Trang', 'trangdtt@soict.hust.edu.vn', 'SOICT-BMKTMT', '0', 'LEC', 'trangdtt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('84', 'tranthuy', 'Trần Thị Thúy', 'Trần Thị Thúy', 'tranthuy@soict.hust.edu.vn', 'SOICT-BMKTMT', '0', 'LEC', 'tranthuy', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('85', 'vanvk', 'Nguyễn Khanh Văn', 'Nguyễn Khanh Văn', 'vannk@soict.hust.edu.vn', 'SOICT-BMCNPM', '0', 'LEC', 'vanvk', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('86', 'vinhtt1', 'Trần Tuấn Vinh', 'Trần Tuấn Vinh', 'vinhtt1@soict.hust.edu.vn', 'SOICT-BMKTMT', '0', 'LEC', 'vinhtt1', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('87', 'vuilb', 'Lê Bá Vui', 'Lê Bá Vui', 'vuilb@soict.hust.edu.vn', 'SOICT-BMKTMT', '0', 'LEC', 'vuilb', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('88', 'huongnt', 'Nguyễn Thị Thu Hương', 'Nguyễn Thị Thu Hương', 'huongnt@soict.hust.edu.vn', 'SOICT-BMKHMT', '0', 'LEC', 'huongnt', 'SOICT', '', 'female');
INSERT INTO `tblstaffs` VALUES ('89', 'trinhvt', 'Vũ Tuyết Trinh', 'Vũ Tuyết Trinh', 'trinhvt@soict.hust.edu.vn', 'SOICT-BMHTTT', '0', 'LEC', 'trinhvt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('90', 'anhpt', 'Phạm Tuấn Anh', 'Phạm Tuấn Anh', 'anhpt@soict.hust.edu.vn', 'SOICT-TTMT', '0', 'LEC', 'anhpt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('91', 'cuonglh', 'Lê Huy Cường', 'Lê Huy Cường', 'cuonglh@soict.hust.edu.vn', 'SOICT-TTMT', '0', 'LEC', 'cuonglh', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('92', 'dungtt', 'Trần Thị Dung', 'Trần Thị Dung', 'dungtt@soict.hust.edu.vn', 'SOICT-TTMT', '0', 'LEC', 'dungtt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('93', 'hapt', 'Phạm Thái Hà', 'Phạm Thái Hà', 'hapt@soict.hust.edu.vn', 'SOICT-TTMT', '0', 'LEC', 'hapt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('94', 'hungd', 'Đinh Hùng', 'Đinh Hùng', 'hungd@soict.hust.edu.vn', 'SOICT-TTMT', '0', 'LEC', 'hungd', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('95', 'hungna', 'Nguyễn An Hưng', 'Nguyễn An Hưng', 'hungna@soict.hust.edu.vn', 'SOICT-TTMT', '0', 'LEC', 'hungna', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('96', 'khanhpd', 'Phạm Đức Khánh', 'Phạm Đức Khánh', 'khanhpd@soict.hust.edu.vn', 'SOICT-TTMT', '0', 'LEC', 'khanhpd', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('97', 'liempt', 'Phạm Thanh Liêm', 'Phạm Thanh Liêm', 'liempt@soict.hust.edu.vn', 'SOICT-TTMT', '0', 'LEC', 'liempt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('98', 'ngant', 'Nhữ Thị Nga', 'Nhữ Thị Nga', 'ngant@soict.hust.edu.vn', 'SOICT-TTMT', '0', 'LEC', 'ngant', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('99', 'trunglq', 'Lê Quốc Trung', 'Lê Quốc Trung', 'trunglq@soict.hust.edu.vn', 'SOICT-TTMT', '0', 'LEC', 'trunglq', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('100', 'vinhtt', 'Trần Tuấn Vinh', 'Trần Tuấn Vinh', 'vinhtt@soict.hust.edu.vn', 'SOICT-TTMT', '0', 'LEC', 'vinhtt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('101', 'phucta', 'Trịnh Anh Phúc', 'Trịnh Anh Phúc', 'phucta@soict.hust.edu.vn', 'SOICT-BMKHMT', '0', 'LEC', 'phucta', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('102', 'hoanna', 'Nguyễn Anh Hoàn', 'Nguyễn Anh Hoàn', 'hoanna@soict.hust.edu.vn', 'SOICT-BMTTMMT', '0', 'LEC', 'hoanna', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('103', 'lannth', 'Nguyễn Thị Hoàng Lan', 'Nguyễn Thị Hoàng Lan', 'lannth@soict.hust.edu.vn', 'SOICT-BMTTMMT', '0', 'LEC', 'lannth', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('104', 'maibtq', 'Bành Thị Quỳnh Mai', 'Bành Thị Quỳnh Mai', 'maibtq@soict.hust.edu.vn', 'SOICT-BMTTMMT', '0', 'LEC', 'maibtq', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('105', 'ngoctn', 'Trần Nguyên Ngọc', 'Trần Nguyên Ngọc', 'ngoctn@soict.hust.edu.vn', 'SOICT-BMTTMMT', '0', 'LEC', 'ngoctn', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('106', 'toannv', 'Nguyễn Văn Toàn', 'Nguyễn Văn Toàn', 'toannv@soict.hust.edu.vn', 'SOICT-BMTTMMT', '0', 'LEC', 'toannv', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('107', 'trunghq', 'Hà Quốc Trung', 'Hà Quốc Trung', 'trunghq@soict.hust.edu.vn', 'SOICT-BMTTMMT', '0', 'LEC', 'trunghq', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('108', 'hoangph', 'Phạm Huy Hoàng', 'Phạm Huy Hoàng', 'hoangph@soict.hust.edu.vn', 'SOICT-BMTTMMT', '0', 'LEC', 'hoangph', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('109', 'haipv', 'Phạm Văn Hải', 'Phạm Văn Hải', 'haipv@soict.hust.edu.vn', 'SOICT-BMHTTT', '01293727555', 'LEC', 'haipv', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('110', 'hiepnv', 'hiepnv', 'hiepnv', 'hiepnv@soict.hust.edu.vn', 'SOICT-BMKHMT', '0', 'LEC', 'hiepnv', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('111', 'trungtv', 'Trần Việt Trung', 'Trần Việt Trung', 'trungtv@soict.hust.edu.vn', 'SOICT-BMHTTT', '0', 'LEC', 'trungtv', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('112', 'tungbt', 'Bùi Trọng Tùng', 'Bùi Trọng Tùng', 'tungbt@soict.hust.edu.vn', 'SOICT-BMTTMMT', '0', 'LEC', 'tungbt', 'SOICT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('113', 'trung.nguyenxuan', 'Nguyễn Xuân Trung', 'Nguyễn Xuân Trung', 'trung.nguyenxuan@hust.edu.vn', 'LLCT-VPKLLCT', '0', 'LEC', 'trung.nguyenxuan', 'LLCT', '17/01/1977', 'male');
INSERT INTO `tblstaffs` VALUES ('114', 'thao.luongthiphuong', 'Lương Thị Phương Thảo', 'Lương Thị Phương Thảo', 'thao.luongthiphuong@hust.edu.vn', 'LLCT-VPKLLCT', '0', 'LEC', 'thao.luongthiphuong', 'LLCT', '17/01/1964', 'female');
INSERT INTO `tblstaffs` VALUES ('115', 'doan.nguyenquoc', 'doan.nguyenquoc', 'doan.nguyenquoc', 'doan.nguyenquoc@hust.edu.vn', 'LLCT-VPKLLCT', '0', 'LEC', 'doan.nguyenquoc', 'LLCT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('116', 'lan.hoangthi', 'lan.hoangthi', 'lan.hoangthi', 'lan.hoangthi@hust.edu.vn', 'LLCT-VPKLLCT', '0', 'LEC', 'lan.hoangthi', 'LLCT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('117', 'thuy.nguyenthithu1', 'thuy.nguyenthithu1', 'thuy.nguyenthithu1', 'thuy.nguyenthithu1@hust.edu.vn', 'TVTQB-PTTTM', '0', 'LEC', 'thuy.nguyenthithu1', 'TVTQB', '', 'male');
INSERT INTO `tblstaffs` VALUES ('118', 'loi.hothi', 'loi.hothi', 'loi.hothi', 'loi.hothi@hust.edu.vn', 'TVTQB-PTTTM', '0', 'LEC', 'loi.hothi', 'TVTQB', '', 'male');
INSERT INTO `tblstaffs` VALUES ('119', 'hung.nguyenthanh1', 'hung.nguyenthanh1', 'hung.nguyenthanh1', 'hung.nguyenthanh1@hust.edu.vn', 'TVTQB-PTTTM', '0', 'LEC', 'hung.nguyenthanh1', 'TVTQB', '', 'male');
INSERT INTO `tblstaffs` VALUES ('120', 'tuyen.tranthi', 'tuyen.tranthi', 'tuyen.tranthi', 'tuyen.tranthi@hust.edu.vn', 'TVTQB-PTTTM', '0', 'LEC', 'tuyen.tranthi', 'TVTQB', '', 'male');
INSERT INTO `tblstaffs` VALUES ('121', 'tu.nguyenthithanh', 'tu.nguyenthithanh', 'tu.nguyenthithanh', 'tu.nguyenthithanh@hust.edu.vn', 'TTMTT-TTMTT', '0', 'LEC', 'tu.nguyenthithanh', 'TTMTT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('122', 'hung.nguyenhuy1', 'hung.nguyenhuy1', 'hung.nguyenhuy1', 'hung.nguyenhuy1@hust.edu.vn', 'TTMTT-TTMTT', '0', 'LEC', 'hung.nguyenhuy1', 'TTMTT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('123', 'hiep.hoangvan', 'hiep.hoangvan', 'hiep.hoangvan', 'hiep.hoangvan@hust.edu.vn', 'NAVIS-TTQTNCPTCNDVVT', '0', 'LEC', 'hiep.hoangvan', 'NAVIS', '', 'male');
INSERT INTO `tblstaffs` VALUES ('124', 'dung.tranthikim', 'dung.tranthikim', 'dung.tranthikim', 'dung.tranthikim@hust.edu.vn', 'TTNCPOL-TTNCVLP', '0', 'LEC', 'dung.tranthikim', 'TTNCPOL', '', 'male');
INSERT INTO `tblstaffs` VALUES ('125', 'linh.nguyenphamduy', 'linh.nguyenphamduy', 'linh.nguyenphamduy', 'linh.nguyenphamduy@hust.edu.vn', 'TTNCPOL-TTNCVLP', '0', 'LEC', 'linh.nguyenphamduy', 'TTNCPOL', '', 'male');
INSERT INTO `tblstaffs` VALUES ('126', 'le.hathicam', 'le.hathicam', 'le.hathicam', 'camle3110@gmail.com', 'TTQHCC-TTTTQHCC', '0', 'LEC', 'le.hathicam', 'TTQHCC', '', 'male');
INSERT INTO `tblstaffs` VALUES ('127', 'vinh.builong', 'vinh.builong', 'vinh.builong', 'vinh.builong@hust.edu.vn', 'CK-TTDTNCPTCNC', '0', 'LEC', 'vinh.builong', 'CK', '', 'male');
INSERT INTO `tblstaffs` VALUES ('128', 'lam.tran', 'lam.tran', 'lam.tran', 'lam.tran@hust.edu.vn', 'CK-TTDTNCPTCNC', '0', 'LEC', 'lam.tran', 'CK', '', 'male');
INSERT INTO `tblstaffs` VALUES ('129', 'dong.nguyentien', 'dong.nguyentien', 'dong.nguyentien', 'dong.nguyentien@hust.edu.vn', 'CK-TTDTNCPTCNC', '0', 'LEC', 'dong.nguyentien', 'CK', '', 'male');
INSERT INTO `tblstaffs` VALUES ('130', 'thu.nguyenthi', 'thu.nguyenthi', 'thu.nguyenthi', 'thu.nguyenthi@hust.edu.vn', 'CK-TTDTNCPTCNC', '0', 'LEC', 'thu.nguyenthi', 'CK', '', 'male');
INSERT INTO `tblstaffs` VALUES ('131', 'duong.nguyenthuy', 'duong.nguyenthuy', 'duong.nguyenthuy', 'duong.nguyenthuy@hust.edu.vn', 'CK-TTDTNCPTCNC', '0', 'LEC', 'duong.nguyenthuy', 'CK', '', 'male');
INSERT INTO `tblstaffs` VALUES ('132', 'nam.lethibich', 'nam.lethibich', 'nam.lethibich', 'nam.lethibich@hust.edu.vn', 'CK-TTDTNCPTCNC', '0', 'LEC', 'nam.lethibich', 'CK', '', 'male');
INSERT INTO `tblstaffs` VALUES ('133', 'anh.buituan', 'anh.buituan', 'anh.buituan', 'anh.buituan@hust.edu.vn', 'CK-TTDTNCPTCNC', '0', 'LEC', 'anh.buituan', 'CK', '', 'male');
INSERT INTO `tblstaffs` VALUES ('134', 'lan.phungxuan', 'lan.phungxuan', 'lan.phungxuan', 'lan.phungxuan@hust.edu.vn', 'CK-TTDTNCPTCNC', '0', 'LEC', 'lan.phungxuan', 'CK', '', 'male');
INSERT INTO `tblstaffs` VALUES ('135', 'hieu.phanvan', 'hieu.phanvan', 'hieu.phanvan', 'hieu.phanvan@hust.edu.vn', 'CK-TTDTNCPTCNC', '0', 'LEC', 'hieu.phanvan', 'CK', '', 'male');
INSERT INTO `tblstaffs` VALUES ('136', 'huy.vule', 'huy.vule', 'huy.vule', 'huy.vule@hust.edu.vn', 'CK-TTDTNCPTCNC', '0', 'LEC', 'huy.vule', 'CK', '', 'male');
INSERT INTO `tblstaffs` VALUES ('137', 'nam.legiang', 'nam.legiang', 'nam.legiang', 'nam.legiang@hust.edu.vn', 'CK-TTDTNCPTCNC', '0', 'LEC', 'nam.legiang', 'CK', '', 'male');
INSERT INTO `tblstaffs` VALUES ('138', 'quy.vudinh', 'quy.vudinh', 'quy.vudinh', 'quy.vudinh@hust.edu.vn', 'CKDL-VPVCKDL', '0', 'LEC', 'quy.vudinh', 'CKDL', '', 'male');
INSERT INTO `tblstaffs` VALUES ('139', 'huong.tranthithu', 'huong.tranthithu', 'huong.tranthithu', 'huong.tranthithu@hust.edu.vn', 'CKDL-VPVCKDL', '0', 'LEC', 'huong.tranthithu', 'CKDL', '', 'male');
INSERT INTO `tblstaffs` VALUES ('140', 'huy.vuquoc', 'huy.vuquoc', 'huy.vuquoc', 'huy.vuquoc@hust.edu.vn', 'CKDL-VPVCKDL', '0', 'LEC', 'huy.vuquoc', 'CKDL', '', 'male');
INSERT INTO `tblstaffs` VALUES ('141', 'he.ngovan', 'he.ngovan', 'he.ngovan', 'he.ngovan@hust.edu.vn', 'CKDL-VPVCKDL', '0', 'LEC', 'he.ngovan', 'CKDL', '', 'male');
INSERT INTO `tblstaffs` VALUES ('142', 'vinh.tranquang', 'vinh.tranquang', 'vinh.tranquang', 'vinh.tranquang@hust.edu.vn', 'CKDL-VPVCKDL', '0', 'LEC', 'vinh.tranquang', 'CKDL', '', 'male');
INSERT INTO `tblstaffs` VALUES ('143', 'quynh.phamthi', 'quynh.phamthi', 'quynh.phamthi', 'quynh.phamthi@hust.edu.vn', 'CNSHTP-BMQTTBCNSHTP', '0', 'LEC', 'quynh.phamthi', 'CNSHTP', '', 'male');
INSERT INTO `tblstaffs` VALUES ('144', 'ha.dothithu', 'ha.dothithu', 'ha.dothithu', 'ha.dothithu@hust.edu.vn', 'CNSHTP-BMQTTBCNSHTP', '0', 'LEC', 'ha.dothithu', 'CNSHTP', '', 'male');
INSERT INTO `tblstaffs` VALUES ('145', 'thuy.phungthi', 'thuy.phungthi', 'thuy.phungthi', 'thuy.phungthi@hust.edu.vn', 'CNSHTP-BMQTTBCNSHTP', '0', 'LEC', 'thuy.phungthi', 'CNSHTP', '', 'male');
INSERT INTO `tblstaffs` VALUES ('146', 'anh.phamtuan2', 'anh.phamtuan2', 'anh.phamtuan2', 'anh.phamtuan2@hust.edu.vn', 'CNSHTP-BMQTTBCNSHTP', '0', 'LEC', 'anh.phamtuan2', 'CNSHTP', '', 'male');
INSERT INTO `tblstaffs` VALUES ('147', 'hanh.nguyenthi', 'hanh.nguyenthi', 'hanh.nguyenthi', 'hanh.nguyenthi@hust.edu.vn', 'CNSHTP-BMQTTBCNSHTP', '0', 'LEC', 'hanh.nguyenthi', 'CNSHTP', '', 'male');
INSERT INTO `tblstaffs` VALUES ('148', 'thao.nguyenthi', 'thao.nguyenthi', 'thao.nguyenthi', 'thao.nguyenthi@hust.edu.vn', 'CNSHTP-BMQTTBCNSHTP', '0', 'LEC', 'thao.nguyenthi', 'CNSHTP', '', 'male');
INSERT INTO `tblstaffs` VALUES ('149', 'tuan.hoangquoc', 'tuan.hoangquoc', 'tuan.hoangquoc', 'tuan.hoangquoc@hust.edu.vn', 'CNSHTP-BMQTTBCNSHTP', '0', 'LEC', 'tuan.hoangquoc', 'CNSHTP', '', 'male');
INSERT INTO `tblstaffs` VALUES ('150', 'thuy.daothichinh', 'thuy.daothichinh', 'thuy.daothichinh', 'thuy.daothichinh@hust.edu.vn', 'DMDGTT-VPVDMDGTT', '0', 'LEC', 'thuy.daothichinh', 'DMDGTT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('151', 'dinh.buiminh', 'dinh.buiminh', 'dinh.buiminh', 'dinh.buiminh@hust.edu.vn', 'D-BMDKTD', '0', 'LEC', 'dinh.buiminh', 'D', '', 'male');
INSERT INTO `tblstaffs` VALUES ('152', 'khanh.bachquoc', 'khanh.bachquoc', 'khanh.bachquoc', 'khanh.bachquoc@hust.edu.vn', 'D-BMDKTD', '0', 'LEC', 'khanh.bachquoc', 'D', '', 'male');
INSERT INTO `tblstaffs` VALUES ('153', 'huy.nguyenduc1', 'huy.nguyenduc1', 'huy.nguyenduc1', 'huy.nguyenduc1@hust.edu.vn', 'D-BMDKTD', '0', 'LEC', 'huy.nguyenduc1', 'D', '', 'male');
INSERT INTO `tblstaffs` VALUES ('154', 'nam.daophuong', 'nam.daophuong', 'nam.daophuong', 'nam.daophuong@hust.edu.vn', 'D-BMDKTD', '0', 'LEC', 'nam.daophuong', 'D', '', 'male');
INSERT INTO `tblstaffs` VALUES ('155', 'anh.nguyenvan1', 'anh.nguyenvan1', 'anh.nguyenvan1', 'anh.nguyenvan1@hust.edu.vn', 'D-BMDKTD', '0', 'LEC', 'anh.nguyenvan1', 'D', '', 'male');
INSERT INTO `tblstaffs` VALUES ('156', 'thinh.daoquy', 'thinh.daoquy', 'thinh.daoquy', 'thinh.daoquy@hust.edu.vn', 'D-BMDKTD', '0', 'LEC', 'thinh.daoquy', 'D', '', 'male');
INSERT INTO `tblstaffs` VALUES ('157', 'hanh.nguyenthinguyet', 'hanh.nguyenthinguyet', 'hanh.nguyenthinguyet', 'hanh.nguyenthinguyet@hust.edu.vn', 'D-BMDKTD', '0', 'LEC', 'hanh.nguyenthinguyet', 'D', '', 'male');
INSERT INTO `tblstaffs` VALUES ('158', 'huong.nguyenthanh3', 'huong.nguyenthanh3', 'huong.nguyenthanh3', 'huong.nguyenthanh3@hust.edu.vn', 'D-BMDKTD', '0', 'LEC', 'huong.nguyenthanh3', 'D', '', 'male');
INSERT INTO `tblstaffs` VALUES ('159', 'phuong.vuhoang', 'phuong.vuhoang', 'phuong.vuhoang', 'phuong.vuhoang@hust.edu.vn', 'D-BMDKTD', '0', 'LEC', 'phuong.vuhoang', 'D', '', 'male');
INSERT INTO `tblstaffs` VALUES ('160', 'phuong.phamviet', 'phuong.phamviet', 'phuong.phamviet', 'phuong.phamviet@hust.edu.vn', 'D-BMDKTD', '0', 'LEC', 'phuong.phamviet', 'D', '', 'male');
INSERT INTO `tblstaffs` VALUES ('161', 'dung.hanhuy', 'dung.hanhuy', 'dung.hanhuy', 'dung.hanhuy@hust.edu.vn', 'DTVT-BMCNDTKTYS', '0', 'LEC', 'dung.hanhuy', 'DTVT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('162', 'thoa.nguyenthikim', 'thoa.nguyenthikim', 'thoa.nguyenthikim', 'thoa.nguyenthikim@hust.edu.vn', 'DTVT-BMCNDTKTYS', '0', 'LEC', 'thoa.nguyenthikim', 'DTVT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('163', 'dung.nguyenhoang', 'dung.nguyenhoang', 'dung.nguyenhoang', 'dung.nguyenhoang@hust.edu.vn', 'DTVT-BMCNDTKTYS', '0', 'LEC', 'dung.nguyenhoang', 'DTVT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('164', 'huong.truongthu', 'huong.truongthu', 'huong.truongthu', 'huong.truongthu@hust.edu.vn', 'DTVT-BMCNDTKTYS', '0', 'LEC', 'huong.truongthu', 'DTVT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('165', 'ngoc.phamphuc', 'ngoc.phamphuc', 'ngoc.phamphuc', 'ngoc.phamphuc@hust.edu.vn', 'DTVT-BMCNDTKTYS', '0', 'LEC', 'ngoc.phamphuc', 'DTVT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('166', 'trung.laihuuphuong', 'trung.laihuuphuong', 'trung.laihuuphuong', 'trung.laihuuphuong@hust.edu.vn', 'DTVT-BMCNDTKTYS', '0', 'LEC', 'trung.laihuuphuong', 'DTVT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('167', 'thanh.hantrong', 'thanh.hantrong', 'thanh.hantrong', 'thanh.hantrong@hust.edu.vn', 'DTVT-BMCNDTKTYS', '0', 'LEC', 'thanh.hantrong', 'DTVT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('168', 'vu.phanxuan', 'vu.phanxuan', 'vu.phanxuan', 'vu.phanxuan@hust.edu.vn', 'DTVT-BMCNDTKTYS', '0', 'LEC', 'vu.phanxuan', 'DTVT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('169', 'quang.phuongxuan', 'quang.phuongxuan', 'quang.phuongxuan', 'quang.phuongxuan@hust.edu.vn', 'NAVIS-TTQTNCPTCNDVVT', '0', 'LEC', 'quang.phuongxuan', 'NAVIS', '', 'male');
INSERT INTO `tblstaffs` VALUES ('170', 'hien.vuthu', 'hien.vuthu', 'hien.vuthu', 'hien.vuthu@hust.edu.vn', 'ITIMS-VDTQTKHVL', '0', 'LEC', 'hien.vuthu', 'ITIMS', '', 'male');
INSERT INTO `tblstaffs` VALUES ('171', 'toan.nguyenvan2', 'toan.nguyenvan2', 'toan.nguyenvan2', 'toan.nguyenvan2@hust.edu.vn', 'ITIMS-VDTQTKHVL', '0', 'LEC', 'toan.nguyenvan2', 'ITIMS', '', 'male');
INSERT INTO `tblstaffs` VALUES ('172', 'tuan.maianh', 'tuan.maianh', 'tuan.maianh', 'tuan.maianh@hust.edu.vn', 'ITIMS-VDTQTKHVL', '0', 'LEC', 'tuan.maianh', 'ITIMS', '', 'male');
INSERT INTO `tblstaffs` VALUES ('173', 'phung.hohuu', 'phung.hohuu', 'phung.hohuu', 'phung.hohuu@hust.edu.vn', 'CNNL-VPVKHCNNL', '0', 'LEC', 'phung.hohuu', 'CNNL', '', 'male');
INSERT INTO `tblstaffs` VALUES ('174', 'chuong.tavan', 'chuong.tavan', 'chuong.tavan', 'chuong.tavan@hust.edu.vn', 'CNNL-VPVKHCNNL', '0', 'LEC', 'chuong.tavan', 'CNNL', '', 'male');
INSERT INTO `tblstaffs` VALUES ('175', 'phuong.nguyenthilan', 'phuong.nguyenthilan', 'phuong.nguyenthilan', 'phuong.nguyenthilan@hust.edu.vn', 'CNMT-BMCNMTT', '0', 'LEC', 'phuong.nguyenthilan', 'CNMT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('176', 'thuy.lybich', 'thuy.lybich', 'thuy.lybich', 'thuy.lybich@hust.edu.vn', 'CNMT-BMCNMTT', '0', 'LEC', 'thuy.lybich', 'CNMT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('177', 'quang.nguyenduc', 'quang.nguyenduc', 'quang.nguyenduc', 'quang.nguyenduc@hust.edu.vn', 'CNMT-BMCNMTT', '0', 'LEC', 'quang.nguyenduc', 'CNMT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('178', 'hien.nguyenthithu', 'hien.nguyenthithu', 'hien.nguyenthithu', 'hien.nguyenthithu@hust.edu.vn', 'CNMT-BMCNMTT', '0', 'LEC', 'hien.nguyenthithu', 'CNMT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('179', 'giang.nguyenthuchuong', 'giang.nguyenthuchuong', 'giang.nguyenthuchuong', 'giang.nguyenthuchuong@hust.edu.vn', 'KTQL-VPVKTQL', '0', 'LEC', 'giang.nguyenthuchuong', 'KTQL', '', 'male');
INSERT INTO `tblstaffs` VALUES ('180', 'huong.phamthithanh1', 'huong.phamthithanh1', 'huong.phamthithanh1', 'huong.phamthithanh1@hust.edu.vn', 'KTQL-VPVKTQL', '0', 'LEC', 'huong.phamthithanh1', 'KTQL', '', 'male');
INSERT INTO `tblstaffs` VALUES ('181', 'hang.nguyenthithuy', 'hang.nguyenthithuy', 'hang.nguyenthithuy', 'hang.nguyenthithuy@hust.edu.vn', 'KTQL-VPVKTQL', '0', 'LEC', 'hang.nguyenthithuy', 'KTQL', '', 'male');
INSERT INTO `tblstaffs` VALUES ('182', 'nguyen.nguyendanh', 'nguyen.nguyendanh', 'nguyen.nguyendanh', 'nguyen.nguyendanh@hust.edu.vn', 'KTQL-VPVKTQL', '0', 'LEC', 'nguyen.nguyendanh', 'KTQL', '', 'male');
INSERT INTO `tblstaffs` VALUES ('183', 'giang.ngothu', 'giang.ngothu', 'giang.ngothu', 'giang.ngothu@hust.edu.vn', 'KTQL-VPVKTQL', '0', 'LEC', 'giang.ngothu', 'KTQL', '', 'male');
INSERT INTO `tblstaffs` VALUES ('184', 'duy.phamngoc', 'duy.phamngoc', 'duy.phamngoc', 'duy.phamngoc@hust.edu.vn', 'KTQL-VPVKTQL', '0', 'LEC', 'duy.phamngoc', 'KTQL', '', 'male');
INSERT INTO `tblstaffs` VALUES ('185', 'quang.buidang', 'quang.buidang', 'quang.buidang', 'quang.buidang@hust.edu.vn', 'KTDKTDH-VKTDKTDH', '0', 'LEC', 'quang.buidang', 'KTDKTDH', '', 'male');
INSERT INTO `tblstaffs` VALUES ('186', 'anh.nguyentuan2', 'anh.nguyentuan2', 'anh.nguyentuan2', 'anh.nguyentuan2@hust.edu.vn', 'KTHH-VPVKTHH', '0', 'LEC', 'anh.nguyentuan2', 'KTHH', '', 'male');
INSERT INTO `tblstaffs` VALUES ('187', 'tram.lehuyen', 'tram.lehuyen', 'tram.lehuyen', 'tram.lehuyen@hust.edu.vn', 'KTHH-VPVKTHH', '0', 'LEC', 'tram.lehuyen', 'KTHH', '', 'male');
INSERT INTO `tblstaffs` VALUES ('188', 'thanh.nguyentrung', 'thanh.nguyentrung', 'thanh.nguyentrung', 'thanh.nguyentrung@hust.edu.vn', 'KTHH-VPVKTHH', '0', 'LEC', 'thanh.nguyentrung', 'KTHH', '', 'male');
INSERT INTO `tblstaffs` VALUES ('189', 'huyen.nguyenthithu', 'huyen.nguyenthithu', 'huyen.nguyenthithu', 'huyen.nguyenthithu@hust.edu.vn', 'KTHH-VPVKTHH', '0', 'LEC', 'huyen.nguyenthithu', 'KTHH', '', 'male');
INSERT INTO `tblstaffs` VALUES ('190', 'bac.nguyenquang', 'bac.nguyenquang', 'bac.nguyenquang', 'bac.nguyenquang@hust.edu.vn', 'KTHH-VPVKTHH', '0', 'LEC', 'bac.nguyenquang', 'KTHH', '', 'male');
INSERT INTO `tblstaffs` VALUES ('191', 'phuong.quachthi', 'phuong.quachthi', 'phuong.quachthi', 'phuong.quachthi@hust.edu.vn', 'KTHH-VPVKTHH', '0', 'LEC', 'phuong.quachthi', 'KTHH', '', 'male');
INSERT INTO `tblstaffs` VALUES ('192', 'hieu.nguyentrung', 'hieu.nguyentrung', 'hieu.nguyentrung', 'hieu.nguyentrung@hust.edu.vn', 'KTHH-VPVKTHH', '0', 'LEC', 'hieu.nguyentrung', 'KTHH', '', 'male');
INSERT INTO `tblstaffs` VALUES ('193', 'mai.nguyenthituyet', 'mai.nguyenthituyet', 'mai.nguyenthituyet', 'mai.nguyenthituyet@hust.edu.vn', 'KTHH-VPVKTHH', '0', 'LEC', 'mai.nguyenthituyet', 'KTHH', '', 'male');
INSERT INTO `tblstaffs` VALUES ('194', 'hien.dinhthithu', 'hien.dinhthithu', 'hien.dinhthithu', 'hien.dinhthithu@hust.edu.vn', 'KTHH-VPVKTHH', '0', 'LEC', 'hien.dinhthithu', 'KTHH', '', 'male');
INSERT INTO `tblstaffs` VALUES ('195', 'minh.vuthingoc', 'minh.vuthingoc', 'minh.vuthingoc', 'minh.vuthingoc@hust.edu.vn', 'KTHH-VPVKTHH', '0', 'LEC', 'minh.vuthingoc', 'KTHH', '', 'male');
INSERT INTO `tblstaffs` VALUES ('196', 'hoang.leminh', 'hoang.leminh', 'hoang.leminh', 'hoang.leminh@hust.edu.vn', 'MICA-VNCQTTTDPT', '0', 'LEC', 'hoang.leminh', 'MICA', '', 'male');
INSERT INTO `tblstaffs` VALUES ('197', 'diep.dothingoc', 'diep.dothingoc', 'diep.dothingoc', 'diep.dothingoc@hust.edu.vn', 'MICA-VNCQTTTDPT', '0', 'LEC', 'diep.dothingoc', 'MICA', '', 'male');
INSERT INTO `tblstaffs` VALUES ('198', 'hai.tranthithanh1', 'hai.tranthithanh1', 'hai.tranthithanh1', 'hai.tranthithanh1@hust.edu.vn', 'MICA-VNCQTTTDPT', '0', 'LEC', 'hai.tranthithanh1', 'MICA', '', 'male');
INSERT INTO `tblstaffs` VALUES ('199', 'hai.vu', 'hai.vu', 'hai.vu', 'hai.vu@hust.edu.vn', 'MICA-VNCQTTTDPT', '0', 'LEC', 'hai.vu', 'MICA', '', 'male');
INSERT INTO `tblstaffs` VALUES ('200', 'giang.tranhuong', 'giang.tranhuong', 'giang.tranhuong', 'giang.tranhuong@hust.edu.vn', 'NN-BMTACS', '0', 'LEC', 'giang.tranhuong', 'NN', '', 'male');
INSERT INTO `tblstaffs` VALUES ('201', 'hoa.phamngocthai', 'hoa.phamngocthai', 'hoa.phamngocthai', 'hoa.phamngocthai@hust.edu.vn', 'NN-BMTACS', '0', 'LEC', 'hoa.phamngocthai', 'NN', '', 'male');
INSERT INTO `tblstaffs` VALUES ('202', 'anh.phamhoai', 'anh.phamhoai', 'anh.phamhoai', 'anh.phamhoai@hust.edu.vn', 'NN-BMTAKKT', '0', 'LEC', 'anh.phamhoai', 'NN', '', 'male');
INSERT INTO `tblstaffs` VALUES ('203', 'huong.nguyenthithanh', 'huong.nguyenthithanh', 'huong.nguyenthithanh', 'huong.nguyenthithanh@hust.edu.vn', 'NN-BMTAKKT', '0', 'LEC', 'huong.nguyenthithanh', 'NN', '', 'male');
INSERT INTO `tblstaffs` VALUES ('204', 'hang.trinhthianh', 'hang.trinhthianh', 'hang.trinhthianh', 'hang.trinhthianh@hust.edu.vn', 'NN-BMTAKKT', '0', 'LEC', 'hang.trinhthianh', 'NN', '', 'male');
INSERT INTO `tblstaffs` VALUES ('205', 'binh.nguyenmy', 'binh.nguyenmy', 'binh.nguyenmy', 'binh.nguyenmy@hust.edu.vn', 'NN-BMTAKKT', '0', 'LEC', 'binh.nguyenmy', 'NN', '', 'male');
INSERT INTO `tblstaffs` VALUES ('206', 'giang.nguyenthihuong', 'giang.nguyenthihuong', 'giang.nguyenthihuong', 'giang.nguyenthihuong@hust.edu.vn', 'SPKT-VPVSPKT', '0', 'LEC', 'giang.nguyenthihuong', 'SPKT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('207', 'thanh.ngotu', 'thanh.ngotu', 'thanh.ngotu', 'thanh.ngotu@hust.edu.vn', 'SPKT-VPVSPKT', '0', 'LEC', 'thanh.ngotu', 'SPKT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('208', 'long.nguyentien', 'long.nguyentien', 'long.nguyentien', 'long.nguyentien@hust.edu.vn', 'SPKT-VPVSPKT', '0', 'LEC', 'long.nguyentien', 'SPKT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('209', 'hung.nguyenviet1', 'hung.nguyenviet1', 'hung.nguyenviet1', 'hung.nguyenviet1@hust.edu.vn', 'AIST-VPVTTKHCN', '0', 'LEC', 'hung.nguyenviet1', 'AIST', '', 'male');
INSERT INTO `tblstaffs` VALUES ('210', 'vuong.phamhung', 'vuong.phamhung', 'vuong.phamhung', 'vuong.phamhung@hust.edu.vn', 'AIST-VPVTTKHCN', '0', 'LEC', 'vuong.phamhung', 'AIST', '', 'male');
INSERT INTO `tblstaffs` VALUES ('211', 'dung.nguyenhuu', 'dung.nguyenhuu', 'dung.nguyenhuu', 'dung.nguyenhuu@hust.edu.vn', 'AIST-VPVTTKHCN', '0', 'LEC', 'dung.nguyenhuu', 'AIST', '', 'male');
INSERT INTO `tblstaffs` VALUES ('212', 'kien.phamthe', 'kien.phamthe', 'kien.phamthe', 'kien.phamthe@hust.edu.vn', 'AIST-VPVTTKHCN', '0', 'LEC', 'kien.phamthe', 'AIST', '', 'male');
INSERT INTO `tblstaffs` VALUES ('213', 'lan.nguyenthi1', 'lan.nguyenthi1', 'lan.nguyenthi1', 'lan.nguyenthi1@hust.edu.vn', 'AIST-VPVTTKHCN', '0', 'LEC', 'lan.nguyenthi1', 'AIST', '', 'male');
INSERT INTO `tblstaffs` VALUES ('214', 'khoi.nguyenthi', 'khoi.nguyenthi', 'khoi.nguyenthi', 'khoi.nguyenthi@hust.edu.vn', 'AIST-VPVTTKHCN', '0', 'LEC', 'khoi.nguyenthi', 'AIST', '', 'male');
INSERT INTO `tblstaffs` VALUES ('215', 'minh.habinh', 'minh.habinh', 'minh.habinh', 'minh.habinh@hust.edu.vn', 'TTUD-BMTT', '0', 'LEC', 'minh.habinh', 'TTUD', '', 'male');
INSERT INTO `tblstaffs` VALUES ('216', 'thang.tranngoc', 'thang.tranngoc', 'thang.tranngoc', 'thang.tranngoc@hust.edu.vn', 'TTUD-BMTT', '0', 'LEC', 'thang.tranngoc', 'TTUD', '', 'male');
INSERT INTO `tblstaffs` VALUES ('217', 'toan.phivan', 'toan.phivan', 'toan.phivan', 'toan.phivan@hust.edu.vn', 'VLKT-VVLKT', '0', 'LEC', 'toan.phivan', 'VLKT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('218', 'tho.doduc', 'tho.doduc', 'tho.doduc', 'tho.doduc@hust.edu.vn', 'VLKT-VVLKT', '0', 'LEC', 'tho.doduc', 'VLKT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('219', 'nghi.nguyenthanh', 'nghi.nguyenthanh', 'nghi.nguyenthanh', 'nghi.nguyenthanh@hust.edu.vn', 'VLKT-VVLKT', '0', 'LEC', 'nghi.nguyenthanh', 'VLKT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('220', 'phong.phamnam', 'phong.phamnam', 'phong.phamnam', 'phong.phamnam@hust.edu.vn', 'VLKT-VVLKT', '0', 'LEC', 'phong.phamnam', 'VLKT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('221', 'san.luyenthi', 'san.luyenthi', 'san.luyenthi', 'san.luyenthi@hust.edu.vn', 'VLKT-VVLKT', '0', 'LEC', 'san.luyenthi', 'VLKT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('222', 'quan.ngoduc', 'quan.ngoduc', 'quan.ngoduc', 'quan.ngoduc@hust.edu.vn', 'VLKT-VVLKT', '0', 'LEC', 'quan.ngoduc', 'VLKT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('223', 'trang.nguyenthi', 'trang.nguyenthi', 'trang.nguyenthi', 'trang.nguyenthi@hust.edu.vn', 'VLKT-VVLKT', '0', 'LEC', 'trang.nguyenthi', 'VLKT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('224', 'phuong.nguyenthanh', 'phuong.nguyenthanh', 'phuong.nguyenthanh', 'phuong.nguyenthanh@hust.edu.vn', 'VLKT-VVLKT', '0', 'LEC', 'phuong.nguyenthanh', 'VLKT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('225', 'bac.luonghuu', 'bac.luonghuu', 'bac.luonghuu', 'bac.luonghuu@hust.edu.vn', 'VLKT-VVLKT', '0', 'LEC', 'bac.luonghuu', 'VLKT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('226', 'cuong.lecao', 'cuong.lecao', 'cuong.lecao', 'cuong.lecao@hust.edu.vn', 'VLKT-VVLKT', '0', 'LEC', 'cuong.lecao', 'VLKT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('227', 'anh.luuthilan', 'anh.luuthilan', 'anh.luuthilan', 'anh.luuthilan@hust.edu.vn', 'VLKT-VVLKT', '0', 'LEC', 'anh.luuthilan', 'VLKT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('228', 'son.vuong', 'son.vuong', 'son.vuong', 'son.vuong@hust.edu.vn', 'VLKT-VVLKT', '0', 'LEC', 'son.vuong', 'VLKT', '', 'male');
INSERT INTO `tblstaffs` VALUES ('229', 'hatn.d', 'hatn.d', 'hatn.d', 'hello@yahoo.com', 'SOICT-BMKHMT', '0', 'LEC', 'hatn.d', 'SOICT', null, null);
INSERT INTO `tblstaffs` VALUES ('230', 'ha.ck', 'ha.ck', 'ha.ck', 'incredibletran@gmail.com', 'CK-VPVCK', '0', 'LEC', 'ha.ck', 'CK', null, null);
INSERT INTO `tblstaffs` VALUES ('231', 'anthonytran', 'anthonytran', 'anthonytran', 'incredibletran@gmail.com', 'SOICT-BMKHMT', '0', 'LEC', 'anthonytran', 'SOICT', null, null);
INSERT INTO `tblstaffs` VALUES ('232', 'anthony.tran', 'anthony.tran', 'anthony.tran', 'hello@yahoo.com', 'LLCT-VPKLLCT', '0', 'LEC', 'anthony.tran', 'LLCT', null, null);
INSERT INTO `tblstaffs` VALUES ('233', 'xxxxxxx', 'xxxxxxx', 'xxxxxxx', 'xxxxx@yahoo.com', 'SOICT-BMCNPM', '0168 6714336', 'LEC', 'xxxxxxx', 'SOICT', '28/10/1988', 'male');
INSERT INTO `tblstaffs` VALUES ('234', 'anthonyStark', 'anthonyStark', 'anthonyStark', 'anthonyStark@gmail.com', 'SOICT-BDHDAHTPTDTCNTT', '0', 'LEC', 'anthonyStark', 'SOICT', null, null);
INSERT INTO `tblstaffs` VALUES ('235', 'benmark', 'benmark', 'benmark', 'benmark@yahoo.com', 'SOICT-BDHDAHTPTDTCNTT', '0', 'LEC', 'benmark', 'SOICT', null, null);

-- ----------------------------
-- Table structure for `tbluserfunctions`
-- ----------------------------
DROP TABLE IF EXISTS `tbluserfunctions`;
CREATE TABLE `tbluserfunctions` (
  `USERFUNC_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USERFUNC_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã user-chức năng',
  `USERFUNC_USERCODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã user',
  `USERFUNC_FUNCCODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã chức năng (tham chiếu bảng tblfunctions)',
  PRIMARY KEY (`USERFUNC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbluserfunctions
-- ----------------------------
INSERT INTO `tbluserfunctions` VALUES ('16', 'benmark_MANAGE-PAPERS', 'benmark', 'MANAGE-PAPERS');
INSERT INTO `tbluserfunctions` VALUES ('17', 'benmark_MANAGE-TOPICS', 'benmark', 'MANAGE-TOPICS');
INSERT INTO `tbluserfunctions` VALUES ('18', 'benmark_MANAGE-SUMMARY', 'benmark', 'MANAGE-SUMMARY');
INSERT INTO `tbluserfunctions` VALUES ('23', 'dungpq_MANAGE-USERS', 'dungpq', 'MANAGE-USERS');
INSERT INTO `tbluserfunctions` VALUES ('24', 'dungpq_MANAGE-PATENTS', 'dungpq', 'MANAGE-PATENTS');
INSERT INTO `tbluserfunctions` VALUES ('25', 'dungpq_MANAGE-PAPERS', 'dungpq', 'MANAGE-PAPERS');
INSERT INTO `tbluserfunctions` VALUES ('26', 'dungpq_MANAGE-TOPICS', 'dungpq', 'MANAGE-TOPICS');
INSERT INTO `tbluserfunctions` VALUES ('27', 'dungpq_MANAGE-PRODUCTS', 'dungpq', 'MANAGE-PRODUCTS');
INSERT INTO `tbluserfunctions` VALUES ('28', 'dungpq_MANAGE-SUMMARY', 'dungpq', 'MANAGE-SUMMARY');
INSERT INTO `tbluserfunctions` VALUES ('38', 'anthonyStark_MANAGE-PATENTS', 'anthonyStark', 'MANAGE-PATENTS');
INSERT INTO `tbluserfunctions` VALUES ('39', 'anthonyStark_MANAGE-PRODUCTS', 'anthonyStark', 'MANAGE-PRODUCTS');

-- ----------------------------
-- Table structure for `tbluserroles`
-- ----------------------------
DROP TABLE IF EXISTS `tbluserroles`;
CREATE TABLE `tbluserroles` (
  `UserRole_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Role` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`UserRole_ID`),
  UNIQUE KEY `uni_username_role` (`Role`,`Username`),
  KEY `fk_username_idx` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbluserroles
-- ----------------------------
INSERT INTO `tbluserroles` VALUES ('66', 'anhnk', 'ROLE_ADMIN');
INSERT INTO `tbluserroles` VALUES ('246', 'anthony.tran', 'ROLE_ADMIN');
INSERT INTO `tbluserroles` VALUES ('245', 'anthonytran', 'ROLE_ADMIN');
INSERT INTO `tbluserroles` VALUES ('21', 'binhht', 'ROLE_ADMIN');
INSERT INTO `tbluserroles` VALUES ('38', 'dungct', 'ROLE_ADMIN');
INSERT INTO `tbluserroles` VALUES ('18', 'dungpq', 'ROLE_ADMIN');
INSERT INTO `tbluserroles` VALUES ('50', 'giangnl', 'ROLE_ADMIN');
INSERT INTO `tbluserroles` VALUES ('244', 'ha.ck', 'ROLE_ADMIN');
INSERT INTO `tbluserroles` VALUES ('20', 'Hatran_1988', 'ROLE_ADMIN');
INSERT INTO `tbluserroles` VALUES ('101', 'huongnt', 'ROLE_ADMIN');
INSERT INTO `tbluserroles` VALUES ('86', 'khanhnk', 'ROLE_ADMIN');
INSERT INTO `tbluserroles` VALUES ('72', 'khoattq', 'ROLE_ADMIN');
INSERT INTO `tbluserroles` VALUES ('37', 'thanghq', 'ROLE_ADMIN');
INSERT INTO `tbluserroles` VALUES ('42', 'thunq', 'ROLE_ADMIN');
INSERT INTO `tbluserroles` VALUES ('35', 'trungnl', 'ROLE_ADMIN');
INSERT INTO `tbluserroles` VALUES ('64', 'vannk', 'ROLE_ADMIN');
INSERT INTO `tbluserroles` VALUES ('247', 'xxxxxxx', 'ROLE_ADMIN');
INSERT INTO `tbluserroles` VALUES ('146', 'anh.buituan', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('240', 'anh.luuthilan', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('199', 'anh.nguyentuan2', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('168', 'anh.nguyenvan1', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('215', 'anh.phamhoai', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('159', 'anh.phamtuan2', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('80', 'anhbq', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('32', 'anhdt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('103', 'anhpt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('47', 'anhth', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('248', 'anthonyStark', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('238', 'bac.luonghuu', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('203', 'bac.nguyenquang', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('31', 'bangbh', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('249', 'benmark', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('218', 'binh.nguyenmy', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('81', 'binhdt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('187', 'chuong.tavan', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('48', 'chuyetdv', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('239', 'cuong.lecao', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('104', 'cuonglh', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('46', 'dattt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('210', 'diep.dothingoc', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('67', 'diepdb', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('164', 'dinh.buiminh', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('128', 'doan.nguyenquoc', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('142', 'dong.nguyentien', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('68', 'ducnh', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('49', 'ductq', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('28', 'ductv', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('174', 'dung.hanhuy', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('176', 'dung.nguyenhoang', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('224', 'dung.nguyenhuu', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('137', 'dung.tranthikim', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('53', 'dungnn', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('30', 'dungnt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('105', 'dungtt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('144', 'duong.nguyenthuy', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('82', 'duongnhn', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('34', 'duongnn', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('197', 'duy.phamngoc', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('196', 'giang.ngothu', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('219', 'giang.nguyenthihuong', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('192', 'giang.nguyenthuchuong', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('213', 'giang.tranhuong', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('69', 'giangptp', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('39', 'giangvth', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('157', 'ha.dothithu', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('211', 'hai.tranthithanh1', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('212', 'hai.vu', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('25', 'haipd', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('122', 'haipv', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('51', 'haith', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('194', 'hang.nguyenthithuy', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('217', 'hang.trinhthianh', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('160', 'hanh.nguyenthi', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('170', 'hanh.nguyenthinguyet', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('106', 'hapt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('243', 'hatn.d', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('3', 'hatn1', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('9', 'hatn101', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('6', 'hatn123', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('154', 'he.ngovan', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('207', 'hien.dinhthithu', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('191', 'hien.nguyenthithu', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('183', 'hien.vuthu', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('52', 'hiennt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('136', 'hiep.hoangvan', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('83', 'hiephv', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('33', 'hiepnd', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('123', 'hiepnv', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('205', 'hieu.nguyentrung', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('148', 'hieu.phanvan', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('214', 'hoa.phamngocthai', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('55', 'hoalt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('209', 'hoang.leminh', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('84', 'hoangla', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('54', 'hoangph', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('115', 'hoanna', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('135', 'hung.nguyenhuy1', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('132', 'hung.nguyenthanh1', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('222', 'hung.nguyenviet1', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('107', 'hungd', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('56', 'hunglt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('108', 'hungna', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('57', 'hungnt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('85', 'hungpn', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('171', 'huong.nguyenthanh3', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('216', 'huong.nguyenthithanh', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('193', 'huong.phamthithanh1', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('152', 'huong.tranthithu', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('177', 'huong.truongthu', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('70', 'huonglt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('23', 'huongntt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('166', 'huy.nguyenduc1', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('149', 'huy.vule', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('153', 'huy.vuquoc', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('202', 'huyen.nguyenthithu', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('19', 'jamesday', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('71', 'khangtd', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('165', 'khanh.bachquoc', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('109', 'khanhpd', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('227', 'khoi.nguyenthi', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('225', 'kien.phamthe', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('87', 'kiennt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('88', 'kientt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('141', 'lam.tran', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('129', 'lan.hoangthi', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('226', 'lan.nguyenthi1', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('147', 'lan.phungxuan', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('116', 'lannth', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('139', 'le.hathicam', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('74', 'lenp', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('110', 'liempt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('138', 'linh.nguyenphamduy', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('73', 'linhnv', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('41', 'linhtd', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('89', 'loantv', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('131', 'loi.hothi', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('221', 'long.nguyentien', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('206', 'mai.nguyenthituyet', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('117', 'maibtq', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('228', 'minh.habinh', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('208', 'minh.vuthingoc', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('75', 'minhnb', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('167', 'nam.daophuong', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('150', 'nam.legiang', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('145', 'nam.lethibich', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('111', 'ngant', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('90', 'ngantt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('232', 'nghi.nguyenthanh', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('24', 'nghiand', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('178', 'ngoc.phamphuc', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('76', 'ngocnb', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('118', 'ngoctn', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('195', 'nguyen.nguyendanh', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('58', 'nguyenthanh', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('43', 'oanhnt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('59', 'phanliem', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('233', 'phong.phamnam', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('77', 'phongnt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('78', 'phongph', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('114', 'phucta', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('29', 'phuctv', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('186', 'phung.hohuu', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('237', 'phuong.nguyenthanh', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('188', 'phuong.nguyenthilan', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('173', 'phuong.phamviet', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('204', 'phuong.quachthi', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('172', 'phuong.vuhoang', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('79', 'phuongnh', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('235', 'quan.ngoduc', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('198', 'quang.buidang', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('190', 'quang.nguyenduc', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('182', 'quang.phuongxuan', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('91', 'quangnh', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('44', 'quangnn', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('151', 'quy.vudinh', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('156', 'quynh.phamthi', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('234', 'san.luyenthi', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('26', 'sangdv', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('241', 'son.vuong', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('40', 'sonnh', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('229', 'thang.tranngoc', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('180', 'thanh.hantrong', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('220', 'thanh.ngotu', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('201', 'thanh.nguyentrung', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('92', 'thanhlx', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('127', 'thao.luongthiphuong', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('161', 'thao.nguyenthi', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('27', 'thieuvv', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('169', 'thinh.daoquy', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('231', 'tho.doduc', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('175', 'thoa.nguyenthikim', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('143', 'thu.nguyenthi', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('22', 'thuandp', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('93', 'thuannd', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('94', 'thuanpv', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('163', 'thuy.daothichinh', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('189', 'thuy.lybich', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('130', 'thuy.nguyenthithu1', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('158', 'thuy.phungthi', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('95', 'tiennd', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('184', 'toan.nguyenvan2', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('230', 'toan.phivan', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('119', 'toannv', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('200', 'tram.lehuyen', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('236', 'trang.nguyenthi', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('96', 'trangdtt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('60', 'trangntt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('97', 'tranthuy', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('102', 'trinhvt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('179', 'trung.laihuuphuong', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('126', 'trung.nguyenxuan', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('120', 'trunghq', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('61', 'trungld', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('112', 'trunglq', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('62', 'trungtt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('124', 'trungtv', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('134', 'tu.nguyenthithanh', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('162', 'tuan.hoangquoc', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('185', 'tuan.maianh', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('63', 'tuannm', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('125', 'tungbt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('45', 'tungth', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('133', 'tuyen.tranthi', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('98', 'vanvk', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('65', 'vietha', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('140', 'vinh.builong', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('155', 'vinh.tranquang', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('36', 'vinhlt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('113', 'vinhtt', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('99', 'vinhtt1', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('181', 'vu.phanxuan', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('100', 'vuilb', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('223', 'vuong.phamhung', 'ROLE_USER');
INSERT INTO `tbluserroles` VALUES ('2', 'administrator', 'SUPER_ADMIN');

-- ----------------------------
-- Table structure for `tblusers`
-- ----------------------------
DROP TABLE IF EXISTS `tblusers`;
CREATE TABLE `tblusers` (
  `User_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Set username',
  `Password` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Set password',
  `Salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Set salt sequence that combination with password for authenticating',
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Set status for an user',
  `User_Code` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Set an unique code for an user that will be mapped with a staff',
  PRIMARY KEY (`User_ID`),
  UNIQUE KEY `username` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tblusers
-- ----------------------------
INSERT INTO `tblusers` VALUES ('3', 'administrator', 'c33367701511b4f6020ec61ded352059', 'administrator', 'admin@gmail.com', '1', 'administrator');
INSERT INTO `tblusers` VALUES ('20', 'dungpq', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'dungpq@soict.hust.edu.vn', '1', 'dungpq');
INSERT INTO `tblusers` VALUES ('23', 'binhht', '45eb21bc7704a8c2d7563eb26ba8f526', 'salt-sequence', 'binhht@soict.hust.edu.vn', '1', 'binhht');
INSERT INTO `tblusers` VALUES ('24', 'thuandp', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'thuandp@soict.hust.edu.vn', '1', 'thuandp');
INSERT INTO `tblusers` VALUES ('26', 'nghiand', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'nghiand@soict.hust.edu.vn', '1', 'nghiand');
INSERT INTO `tblusers` VALUES ('27', 'haipd', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'haipd@soict.hust.edu.vn', '1', 'haipd');
INSERT INTO `tblusers` VALUES ('28', 'sangdv', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'sangdv@soict.hust.edu.vn', '1', 'sangdv');
INSERT INTO `tblusers` VALUES ('29', 'thieuvv', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'thieuvv@soict.hust.edu.vn', '1', 'thieuvv');
INSERT INTO `tblusers` VALUES ('30', 'ductv', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'ductv@soict.hust.edu.vn', '1', 'ductv');
INSERT INTO `tblusers` VALUES ('31', 'phuctv', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'phuctv@soict.hust.edu.vn', '1', 'phuctv');
INSERT INTO `tblusers` VALUES ('32', 'dungnt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'dungnt@soict.hust.edu.vn', '1', 'dungnt');
INSERT INTO `tblusers` VALUES ('33', 'bangbh', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'bangbh@soict.hust.edu.vn', '1', 'bangbh');
INSERT INTO `tblusers` VALUES ('34', 'anhdt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'anhdt@soict.hust.edu.vn', '1', 'anhdt');
INSERT INTO `tblusers` VALUES ('35', 'hiepnd', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hiepnd@soict.hust.edu.vn', '1', 'hiepnd');
INSERT INTO `tblusers` VALUES ('36', 'duongnn', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'duongnn@soict.hust.edu.vn', '1', 'duongnn');
INSERT INTO `tblusers` VALUES ('37', 'trungnl', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'trungnl@soict.hust.edu.vn', '1', 'trungnl');
INSERT INTO `tblusers` VALUES ('38', 'vinhlt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'vinhlt@soict.hust.edu.vn', '1', 'vinhlt');
INSERT INTO `tblusers` VALUES ('39', 'thanghq', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'thanghq@soict.hust.edu.vn', '1', 'thanghq');
INSERT INTO `tblusers` VALUES ('40', 'dungct', 'b7d71bf007d372ed2e5aec6e22f070f5', 'salt-sequence', 'dungct@soict.hust.edu.vn', '1', 'dungct');
INSERT INTO `tblusers` VALUES ('41', 'giangvth', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'giangvth@soict.hust.edu.vn', '1', 'giangvth');
INSERT INTO `tblusers` VALUES ('42', 'sonnh', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'sonnh@soict.hust.edu.vn', '1', 'sonnh');
INSERT INTO `tblusers` VALUES ('43', 'linhtd', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'linhtd@soict.hust.edu.vn', '1', 'linhtd');
INSERT INTO `tblusers` VALUES ('44', 'thunq', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'thunq@soict.hust.edu.vn', '1', 'thunq');
INSERT INTO `tblusers` VALUES ('45', 'oanhnt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'oanhnt@soict.hust.edu.vn', '1', 'oanhnt');
INSERT INTO `tblusers` VALUES ('46', 'quangnn', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'quangnn@soict.hust.edu.vn', '1', 'quangnn');
INSERT INTO `tblusers` VALUES ('47', 'tungth', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'tungth@soict.hust.edu.vn', '1', 'tungth');
INSERT INTO `tblusers` VALUES ('48', 'dattt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'dattt@soict.hust.edu.vn', '1', 'dattt');
INSERT INTO `tblusers` VALUES ('49', 'anhth', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'anhth@soict.hust.edu.vn', '1', 'anhth');
INSERT INTO `tblusers` VALUES ('50', 'chuyetdv', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'chuyetdv@soict.hust.edu.vn', '1', 'chuyetdv');
INSERT INTO `tblusers` VALUES ('51', 'ductq', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'ductq@soict.hust.edu.vn', '1', 'ductq');
INSERT INTO `tblusers` VALUES ('52', 'giangnl', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'giangnl@soict.hust.edu.vn', '1', 'giangnl');
INSERT INTO `tblusers` VALUES ('53', 'haith', '5108d527acb9d479acb01f41a15a3cc7', 'salt-sequence', 'haith@soict.hust.edu.vn', '1', 'haith');
INSERT INTO `tblusers` VALUES ('54', 'hiennt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hiennt@soict.hust.edu.vn', '1', 'hiennt');
INSERT INTO `tblusers` VALUES ('55', 'dungnn', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'dungnn@soict.hust.edu.vn', '1', 'dungnn');
INSERT INTO `tblusers` VALUES ('57', 'hoalt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hoalt@soict.hust.edu.vn', '1', 'hoalt');
INSERT INTO `tblusers` VALUES ('58', 'hunglt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hunglt@soict.hust.edu.vn', '1', 'hunglt');
INSERT INTO `tblusers` VALUES ('59', 'hungnt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hungnt@soict.hust.edu.vn', '1', 'hungnt');
INSERT INTO `tblusers` VALUES ('60', 'nguyenthanh', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'nguyenthanh@soict.hust.edu.vn', '1', 'nguyenthanh');
INSERT INTO `tblusers` VALUES ('61', 'phanliem', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'phanliem@soict.hust.edu.vn', '1', 'phanliem');
INSERT INTO `tblusers` VALUES ('62', 'trangntt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'trangntt@soict.hust.edu.vn', '1', 'trangntt');
INSERT INTO `tblusers` VALUES ('63', 'trungld', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'trungld@soict.hust.edu.vn', '1', 'trungld');
INSERT INTO `tblusers` VALUES ('64', 'trungtt', '1c429224e6a842b4d47e1d99c9ac3b0d', 'salt-sequence', 'trungtt@soict.hust.edu.vn', '1', 'trungtt');
INSERT INTO `tblusers` VALUES ('65', 'tuannm', '9ac21998507dc831acaa1ed7962ff91f', 'salt-sequence', 'tuannm@soict.hust.edu.vn', '1', 'tuannm');
INSERT INTO `tblusers` VALUES ('66', 'vannk', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'vannk@soict.hust.edu.vn', '1', 'vannk');
INSERT INTO `tblusers` VALUES ('67', 'vietha', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'vietha@soict.hust.edu.vn', '1', 'vietha');
INSERT INTO `tblusers` VALUES ('68', 'anhnk', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'anhnk@soict.hust.edu.vn', '1', 'anhnk');
INSERT INTO `tblusers` VALUES ('69', 'diepdb', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'diepdb@soict.hust.edu.vn', '1', 'diepdb');
INSERT INTO `tblusers` VALUES ('70', 'ducnh', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'ducnh@soict.hust.edu.vn', '1', 'ducnh');
INSERT INTO `tblusers` VALUES ('71', 'giangptp', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'giangptp@soict.hust.edu.vn', '1', 'giangptp');
INSERT INTO `tblusers` VALUES ('72', 'huonglt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'huonglt@soict.hust.edu.vn', '1', 'huonglt');
INSERT INTO `tblusers` VALUES ('73', 'khangtd', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'khangtd@soict.hust.edu.vn', '1', 'khangtd');
INSERT INTO `tblusers` VALUES ('74', 'khoattq', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'khoattq@soict.hust.edu.vn', '1', 'khoattq');
INSERT INTO `tblusers` VALUES ('75', 'linhnv', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'linhnv@soict.hust.edu.vn', '1', 'linhnv');
INSERT INTO `tblusers` VALUES ('76', 'lenp', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'lenp@soict.hust.edu.vn', '1', 'lenp');
INSERT INTO `tblusers` VALUES ('77', 'minhnb', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'minhnb@soict.hust.edu.vn', '1', 'minhnb');
INSERT INTO `tblusers` VALUES ('78', 'ngocnb', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'ngocnb@soict.hust.edu.vn', '1', 'ngocnb');
INSERT INTO `tblusers` VALUES ('79', 'phongnt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'phongnt@soict.hust.edu.vn', '1', 'phongnt');
INSERT INTO `tblusers` VALUES ('80', 'phongph', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'phongph@soict.hust.edu.vn', '1', 'phongph');
INSERT INTO `tblusers` VALUES ('81', 'phuongnh', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'phuongnh@soict.hust.edu.vn', '1', 'phuongnh');
INSERT INTO `tblusers` VALUES ('82', 'anhbq', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'anhbq@soict.hust.edu.vn', '1', 'anhbq');
INSERT INTO `tblusers` VALUES ('83', 'binhdt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'binhdt@soict.hust.edu.vn', '1', 'binhdt');
INSERT INTO `tblusers` VALUES ('84', 'duongnhn', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'duongnhn@soict.hust.edu.vn', '1', 'duongnhn');
INSERT INTO `tblusers` VALUES ('85', 'hiephv', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hiephv@soict.hust.edu.vn', '1', 'hiephv');
INSERT INTO `tblusers` VALUES ('86', 'hoangla', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hoangla@soict.hust.edu.vn', '1', 'hoangla');
INSERT INTO `tblusers` VALUES ('87', 'hungpn', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hungpn@soict.hust.edu.vn', '1', 'hungpn');
INSERT INTO `tblusers` VALUES ('88', 'khanhnk', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'khanhnk@soict.hust.edu.vn', '1', 'khanhnk');
INSERT INTO `tblusers` VALUES ('89', 'kiennt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'kiennt@soict.hust.edu.vn', '1', 'kiennt');
INSERT INTO `tblusers` VALUES ('90', 'kientt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'kientt@soict.hust.edu.vn', '1', 'kientt');
INSERT INTO `tblusers` VALUES ('91', 'loantv', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'loantv@soict.hust.edu.vn', '1', 'loantv');
INSERT INTO `tblusers` VALUES ('92', 'ngantt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'ngantt@soict.hust.edu.vn', '1', 'ngantt');
INSERT INTO `tblusers` VALUES ('93', 'quangnh', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'quangnh@soict.hust.edu.vn', '1', 'quangnh');
INSERT INTO `tblusers` VALUES ('94', 'thanhlx', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'thanhlx@soict.hust.edu.vn', '1', 'thanhlx');
INSERT INTO `tblusers` VALUES ('95', 'thuannd', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'thuannd@soict.hust.edu.vn', '1', 'thuannd');
INSERT INTO `tblusers` VALUES ('96', 'thuanpv', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'thuanpv@soict.hust.edu.vn', '1', 'thuanpv');
INSERT INTO `tblusers` VALUES ('97', 'tiennd', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'tiennd@soict.hust.edu.vn', '1', 'tiennd');
INSERT INTO `tblusers` VALUES ('98', 'trangdtt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'trangdtt@soict.hust.edu.vn', '1', 'trangdtt');
INSERT INTO `tblusers` VALUES ('99', 'tranthuy', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'tranthuy@soict.hust.edu.vn', '1', 'tranthuy');
INSERT INTO `tblusers` VALUES ('100', 'vanvk', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'vannk@soict.hust.edu.vn', '1', 'vanvk');
INSERT INTO `tblusers` VALUES ('101', 'vinhtt1', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'vinhtt1@soict.hust.edu.vn', '1', 'vinhtt1');
INSERT INTO `tblusers` VALUES ('102', 'vuilb', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'vuilb@soict.hust.edu.vn', '1', 'vuilb');
INSERT INTO `tblusers` VALUES ('103', 'huongnt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'huongnt@soict.hust.edu.vn', '1', 'huongnt');
INSERT INTO `tblusers` VALUES ('104', 'trinhvt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'trinhvt@soict.hust.edu.vn', '1', 'trinhvt');
INSERT INTO `tblusers` VALUES ('105', 'anhpt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'anhpt@soict.hust.edu.vn', '1', 'anhpt');
INSERT INTO `tblusers` VALUES ('106', 'cuonglh', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'cuonglh@soict.hust.edu.vn', '1', 'cuonglh');
INSERT INTO `tblusers` VALUES ('107', 'dungtt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'dungtt@soict.hust.edu.vn', '1', 'dungtt');
INSERT INTO `tblusers` VALUES ('108', 'hapt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hapt@soict.hust.edu.vn', '1', 'hapt');
INSERT INTO `tblusers` VALUES ('109', 'hungd', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hungd@soict.hust.edu.vn', '1', 'hungd');
INSERT INTO `tblusers` VALUES ('110', 'hungna', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hungna@soict.hust.edu.vn', '1', 'hungna');
INSERT INTO `tblusers` VALUES ('111', 'khanhpd', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'khanhpd@soict.hust.edu.vn', '1', 'khanhpd');
INSERT INTO `tblusers` VALUES ('112', 'liempt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'liempt@soict.hust.edu.vn', '1', 'liempt');
INSERT INTO `tblusers` VALUES ('113', 'ngant', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'ngant@soict.hust.edu.vn', '1', 'ngant');
INSERT INTO `tblusers` VALUES ('114', 'trunglq', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'trunglq@soict.hust.edu.vn', '1', 'trunglq');
INSERT INTO `tblusers` VALUES ('115', 'vinhtt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'vinhtt@soict.hust.edu.vn', '1', 'vinhtt');
INSERT INTO `tblusers` VALUES ('116', 'phucta', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'phucta@soict.hust.edu.vn', '1', 'phucta');
INSERT INTO `tblusers` VALUES ('117', 'hoanna', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hoanna@soict.hust.edu.vn', '1', 'hoanna');
INSERT INTO `tblusers` VALUES ('118', 'lannth', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'lannth@soict.hust.edu.vn', '1', 'lannth');
INSERT INTO `tblusers` VALUES ('119', 'maibtq', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'maibtq@soict.hust.edu.vn', '1', 'maibtq');
INSERT INTO `tblusers` VALUES ('120', 'ngoctn', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'ngoctn@soict.hust.edu.vn', '1', 'ngoctn');
INSERT INTO `tblusers` VALUES ('121', 'toannv', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'toannv@soict.hust.edu.vn', '1', 'toannv');
INSERT INTO `tblusers` VALUES ('122', 'trunghq', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'trunghq@soict.hust.edu.vn', '1', 'trunghq');
INSERT INTO `tblusers` VALUES ('123', 'hoangph', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hoangph@soict.hust.edu.vn', '1', 'hoangph');
INSERT INTO `tblusers` VALUES ('124', 'haipv', 'e059d10e3b00345a8f3051f40f1d8b3b', 'salt-sequence', 'haipv@soict.hust.edu.vn', '1', 'haipv');
INSERT INTO `tblusers` VALUES ('125', 'hiepnv', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hiepnv@soict.hust.edu.vn', '1', 'hiepnv');
INSERT INTO `tblusers` VALUES ('126', 'trungtv', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'trungtv@soict.hust.edu.vn', '1', 'trungtv');
INSERT INTO `tblusers` VALUES ('127', 'tungbt', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'tungbt@soict.hust.edu.vn', '1', 'tungbt');
INSERT INTO `tblusers` VALUES ('128', 'trung.nguyenxuan', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'trung.nguyenxuan@hust.edu.vn', '1', 'trung.nguyenxuan');
INSERT INTO `tblusers` VALUES ('129', 'thao.luongthiphuong', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'thao.luongthiphuong@hust.edu.vn', '1', 'thao.luongthiphuong');
INSERT INTO `tblusers` VALUES ('130', 'doan.nguyenquoc', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'doan.nguyenquoc@hust.edu.vn', '1', 'doan.nguyenquoc');
INSERT INTO `tblusers` VALUES ('131', 'lan.hoangthi', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'lan.hoangthi@hust.edu.vn', '1', 'lan.hoangthi');
INSERT INTO `tblusers` VALUES ('132', 'thuy.nguyenthithu1', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'thuy.nguyenthithu1@hust.edu.vn', '1', 'thuy.nguyenthithu1');
INSERT INTO `tblusers` VALUES ('133', 'loi.hothi', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'loi.hothi@hust.edu.vn', '1', 'loi.hothi');
INSERT INTO `tblusers` VALUES ('134', 'hung.nguyenthanh1', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hung.nguyenthanh1@hust.edu.vn', '1', 'hung.nguyenthanh1');
INSERT INTO `tblusers` VALUES ('135', 'tuyen.tranthi', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'tuyen.tranthi@hust.edu.vn', '1', 'tuyen.tranthi');
INSERT INTO `tblusers` VALUES ('136', 'tu.nguyenthithanh', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'tu.nguyenthithanh@hust.edu.vn', '1', 'tu.nguyenthithanh');
INSERT INTO `tblusers` VALUES ('137', 'hung.nguyenhuy1', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hung.nguyenhuy1@hust.edu.vn', '1', 'hung.nguyenhuy1');
INSERT INTO `tblusers` VALUES ('138', 'hiep.hoangvan', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hiep.hoangvan@hust.edu.vn', '1', 'hiep.hoangvan');
INSERT INTO `tblusers` VALUES ('139', 'dung.tranthikim', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'dung.tranthikim@hust.edu.vn', '1', 'dung.tranthikim');
INSERT INTO `tblusers` VALUES ('140', 'linh.nguyenphamduy', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'linh.nguyenphamduy@hust.edu.vn', '1', 'linh.nguyenphamduy');
INSERT INTO `tblusers` VALUES ('141', 'le.hathicam', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'camle3110@gmail.com', '1', 'le.hathicam');
INSERT INTO `tblusers` VALUES ('142', 'vinh.builong', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'vinh.builong@hust.edu.vn', '1', 'vinh.builong');
INSERT INTO `tblusers` VALUES ('143', 'lam.tran', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'lam.tran@hust.edu.vn', '1', 'lam.tran');
INSERT INTO `tblusers` VALUES ('144', 'dong.nguyentien', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'dong.nguyentien@hust.edu.vn', '1', 'dong.nguyentien');
INSERT INTO `tblusers` VALUES ('145', 'thu.nguyenthi', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'thu.nguyenthi@hust.edu.vn', '1', 'thu.nguyenthi');
INSERT INTO `tblusers` VALUES ('146', 'duong.nguyenthuy', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'duong.nguyenthuy@hust.edu.vn', '1', 'duong.nguyenthuy');
INSERT INTO `tblusers` VALUES ('147', 'nam.lethibich', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'nam.lethibich@hust.edu.vn', '1', 'nam.lethibich');
INSERT INTO `tblusers` VALUES ('148', 'anh.buituan', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'anh.buituan@hust.edu.vn', '1', 'anh.buituan');
INSERT INTO `tblusers` VALUES ('149', 'lan.phungxuan', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'lan.phungxuan@hust.edu.vn', '1', 'lan.phungxuan');
INSERT INTO `tblusers` VALUES ('150', 'hieu.phanvan', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hieu.phanvan@hust.edu.vn', '1', 'hieu.phanvan');
INSERT INTO `tblusers` VALUES ('151', 'huy.vule', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'huy.vule@hust.edu.vn', '1', 'huy.vule');
INSERT INTO `tblusers` VALUES ('152', 'nam.legiang', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'nam.legiang@hust.edu.vn', '1', 'nam.legiang');
INSERT INTO `tblusers` VALUES ('153', 'quy.vudinh', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'quy.vudinh@hust.edu.vn', '1', 'quy.vudinh');
INSERT INTO `tblusers` VALUES ('154', 'huong.tranthithu', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'huong.tranthithu@hust.edu.vn', '1', 'huong.tranthithu');
INSERT INTO `tblusers` VALUES ('155', 'huy.vuquoc', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'huy.vuquoc@hust.edu.vn', '1', 'huy.vuquoc');
INSERT INTO `tblusers` VALUES ('156', 'he.ngovan', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'he.ngovan@hust.edu.vn', '1', 'he.ngovan');
INSERT INTO `tblusers` VALUES ('157', 'vinh.tranquang', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'vinh.tranquang@hust.edu.vn', '1', 'vinh.tranquang');
INSERT INTO `tblusers` VALUES ('158', 'quynh.phamthi', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'quynh.phamthi@hust.edu.vn', '1', 'quynh.phamthi');
INSERT INTO `tblusers` VALUES ('159', 'ha.dothithu', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'ha.dothithu@hust.edu.vn', '1', 'ha.dothithu');
INSERT INTO `tblusers` VALUES ('160', 'thuy.phungthi', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'thuy.phungthi@hust.edu.vn', '1', 'thuy.phungthi');
INSERT INTO `tblusers` VALUES ('161', 'anh.phamtuan2', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'anh.phamtuan2@hust.edu.vn', '1', 'anh.phamtuan2');
INSERT INTO `tblusers` VALUES ('162', 'hanh.nguyenthi', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hanh.nguyenthi@hust.edu.vn', '1', 'hanh.nguyenthi');
INSERT INTO `tblusers` VALUES ('163', 'thao.nguyenthi', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'thao.nguyenthi@hust.edu.vn', '1', 'thao.nguyenthi');
INSERT INTO `tblusers` VALUES ('164', 'tuan.hoangquoc', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'tuan.hoangquoc@hust.edu.vn', '1', 'tuan.hoangquoc');
INSERT INTO `tblusers` VALUES ('165', 'thuy.daothichinh', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'thuy.daothichinh@hust.edu.vn', '1', 'thuy.daothichinh');
INSERT INTO `tblusers` VALUES ('166', 'dinh.buiminh', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'dinh.buiminh@hust.edu.vn', '1', 'dinh.buiminh');
INSERT INTO `tblusers` VALUES ('167', 'khanh.bachquoc', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'khanh.bachquoc@hust.edu.vn', '1', 'khanh.bachquoc');
INSERT INTO `tblusers` VALUES ('168', 'huy.nguyenduc1', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'huy.nguyenduc1@hust.edu.vn', '1', 'huy.nguyenduc1');
INSERT INTO `tblusers` VALUES ('169', 'nam.daophuong', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'nam.daophuong@hust.edu.vn', '1', 'nam.daophuong');
INSERT INTO `tblusers` VALUES ('170', 'anh.nguyenvan1', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'anh.nguyenvan1@hust.edu.vn', '1', 'anh.nguyenvan1');
INSERT INTO `tblusers` VALUES ('171', 'thinh.daoquy', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'thinh.daoquy@hust.edu.vn', '1', 'thinh.daoquy');
INSERT INTO `tblusers` VALUES ('172', 'hanh.nguyenthinguyet', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hanh.nguyenthinguyet@hust.edu.vn', '1', 'hanh.nguyenthinguyet');
INSERT INTO `tblusers` VALUES ('173', 'huong.nguyenthanh3', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'huong.nguyenthanh3@hust.edu.vn', '1', 'huong.nguyenthanh3');
INSERT INTO `tblusers` VALUES ('174', 'phuong.vuhoang', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'phuong.vuhoang@hust.edu.vn', '1', 'phuong.vuhoang');
INSERT INTO `tblusers` VALUES ('175', 'phuong.phamviet', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'phuong.phamviet@hust.edu.vn', '1', 'phuong.phamviet');
INSERT INTO `tblusers` VALUES ('176', 'dung.hanhuy', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'dung.hanhuy@hust.edu.vn', '1', 'dung.hanhuy');
INSERT INTO `tblusers` VALUES ('177', 'thoa.nguyenthikim', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'thoa.nguyenthikim@hust.edu.vn', '1', 'thoa.nguyenthikim');
INSERT INTO `tblusers` VALUES ('178', 'dung.nguyenhoang', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'dung.nguyenhoang@hust.edu.vn', '1', 'dung.nguyenhoang');
INSERT INTO `tblusers` VALUES ('179', 'huong.truongthu', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'huong.truongthu@hust.edu.vn', '1', 'huong.truongthu');
INSERT INTO `tblusers` VALUES ('180', 'ngoc.phamphuc', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'ngoc.phamphuc@hust.edu.vn', '1', 'ngoc.phamphuc');
INSERT INTO `tblusers` VALUES ('181', 'trung.laihuuphuong', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'trung.laihuuphuong@hust.edu.vn', '1', 'trung.laihuuphuong');
INSERT INTO `tblusers` VALUES ('182', 'thanh.hantrong', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'thanh.hantrong@hust.edu.vn', '1', 'thanh.hantrong');
INSERT INTO `tblusers` VALUES ('183', 'vu.phanxuan', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'vu.phanxuan@hust.edu.vn', '1', 'vu.phanxuan');
INSERT INTO `tblusers` VALUES ('184', 'quang.phuongxuan', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'quang.phuongxuan@hust.edu.vn', '1', 'quang.phuongxuan');
INSERT INTO `tblusers` VALUES ('185', 'hien.vuthu', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hien.vuthu@hust.edu.vn', '1', 'hien.vuthu');
INSERT INTO `tblusers` VALUES ('186', 'toan.nguyenvan2', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'toan.nguyenvan2@hust.edu.vn', '1', 'toan.nguyenvan2');
INSERT INTO `tblusers` VALUES ('187', 'tuan.maianh', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'tuan.maianh@hust.edu.vn', '1', 'tuan.maianh');
INSERT INTO `tblusers` VALUES ('188', 'phung.hohuu', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'phung.hohuu@hust.edu.vn', '1', 'phung.hohuu');
INSERT INTO `tblusers` VALUES ('189', 'chuong.tavan', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'chuong.tavan@hust.edu.vn', '1', 'chuong.tavan');
INSERT INTO `tblusers` VALUES ('190', 'phuong.nguyenthilan', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'phuong.nguyenthilan@hust.edu.vn', '1', 'phuong.nguyenthilan');
INSERT INTO `tblusers` VALUES ('191', 'thuy.lybich', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'thuy.lybich@hust.edu.vn', '1', 'thuy.lybich');
INSERT INTO `tblusers` VALUES ('192', 'quang.nguyenduc', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'quang.nguyenduc@hust.edu.vn', '1', 'quang.nguyenduc');
INSERT INTO `tblusers` VALUES ('193', 'hien.nguyenthithu', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hien.nguyenthithu@hust.edu.vn', '1', 'hien.nguyenthithu');
INSERT INTO `tblusers` VALUES ('194', 'giang.nguyenthuchuong', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'giang.nguyenthuchuong@hust.edu.vn', '1', 'giang.nguyenthuchuong');
INSERT INTO `tblusers` VALUES ('195', 'huong.phamthithanh1', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'huong.phamthithanh1@hust.edu.vn', '1', 'huong.phamthithanh1');
INSERT INTO `tblusers` VALUES ('196', 'hang.nguyenthithuy', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hang.nguyenthithuy@hust.edu.vn', '1', 'hang.nguyenthithuy');
INSERT INTO `tblusers` VALUES ('197', 'nguyen.nguyendanh', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'nguyen.nguyendanh@hust.edu.vn', '1', 'nguyen.nguyendanh');
INSERT INTO `tblusers` VALUES ('198', 'giang.ngothu', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'giang.ngothu@hust.edu.vn', '1', 'giang.ngothu');
INSERT INTO `tblusers` VALUES ('199', 'duy.phamngoc', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'duy.phamngoc@hust.edu.vn', '1', 'duy.phamngoc');
INSERT INTO `tblusers` VALUES ('200', 'quang.buidang', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'quang.buidang@hust.edu.vn', '1', 'quang.buidang');
INSERT INTO `tblusers` VALUES ('201', 'anh.nguyentuan2', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'anh.nguyentuan2@hust.edu.vn', '1', 'anh.nguyentuan2');
INSERT INTO `tblusers` VALUES ('202', 'tram.lehuyen', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'tram.lehuyen@hust.edu.vn', '1', 'tram.lehuyen');
INSERT INTO `tblusers` VALUES ('203', 'thanh.nguyentrung', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'thanh.nguyentrung@hust.edu.vn', '1', 'thanh.nguyentrung');
INSERT INTO `tblusers` VALUES ('204', 'huyen.nguyenthithu', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'huyen.nguyenthithu@hust.edu.vn', '1', 'huyen.nguyenthithu');
INSERT INTO `tblusers` VALUES ('205', 'bac.nguyenquang', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'bac.nguyenquang@hust.edu.vn', '1', 'bac.nguyenquang');
INSERT INTO `tblusers` VALUES ('206', 'phuong.quachthi', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'phuong.quachthi@hust.edu.vn', '1', 'phuong.quachthi');
INSERT INTO `tblusers` VALUES ('207', 'hieu.nguyentrung', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hieu.nguyentrung@hust.edu.vn', '1', 'hieu.nguyentrung');
INSERT INTO `tblusers` VALUES ('208', 'mai.nguyenthituyet', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'mai.nguyenthituyet@hust.edu.vn', '1', 'mai.nguyenthituyet');
INSERT INTO `tblusers` VALUES ('209', 'hien.dinhthithu', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hien.dinhthithu@hust.edu.vn', '1', 'hien.dinhthithu');
INSERT INTO `tblusers` VALUES ('210', 'minh.vuthingoc', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'minh.vuthingoc@hust.edu.vn', '1', 'minh.vuthingoc');
INSERT INTO `tblusers` VALUES ('211', 'hoang.leminh', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hoang.leminh@hust.edu.vn', '1', 'hoang.leminh');
INSERT INTO `tblusers` VALUES ('212', 'diep.dothingoc', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'diep.dothingoc@hust.edu.vn', '1', 'diep.dothingoc');
INSERT INTO `tblusers` VALUES ('213', 'hai.tranthithanh1', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hai.tranthithanh1@hust.edu.vn', '1', 'hai.tranthithanh1');
INSERT INTO `tblusers` VALUES ('214', 'hai.vu', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hai.vu@hust.edu.vn', '1', 'hai.vu');
INSERT INTO `tblusers` VALUES ('215', 'giang.tranhuong', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'giang.tranhuong@hust.edu.vn', '1', 'giang.tranhuong');
INSERT INTO `tblusers` VALUES ('216', 'hoa.phamngocthai', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hoa.phamngocthai@hust.edu.vn', '1', 'hoa.phamngocthai');
INSERT INTO `tblusers` VALUES ('217', 'anh.phamhoai', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'anh.phamhoai@hust.edu.vn', '1', 'anh.phamhoai');
INSERT INTO `tblusers` VALUES ('218', 'huong.nguyenthithanh', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'huong.nguyenthithanh@hust.edu.vn', '1', 'huong.nguyenthithanh');
INSERT INTO `tblusers` VALUES ('219', 'hang.trinhthianh', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hang.trinhthianh@hust.edu.vn', '1', 'hang.trinhthianh');
INSERT INTO `tblusers` VALUES ('220', 'binh.nguyenmy', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'binh.nguyenmy@hust.edu.vn', '1', 'binh.nguyenmy');
INSERT INTO `tblusers` VALUES ('221', 'giang.nguyenthihuong', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'giang.nguyenthihuong@hust.edu.vn', '1', 'giang.nguyenthihuong');
INSERT INTO `tblusers` VALUES ('222', 'thanh.ngotu', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'thanh.ngotu@hust.edu.vn', '1', 'thanh.ngotu');
INSERT INTO `tblusers` VALUES ('223', 'long.nguyentien', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'long.nguyentien@hust.edu.vn', '1', 'long.nguyentien');
INSERT INTO `tblusers` VALUES ('224', 'hung.nguyenviet1', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hung.nguyenviet1@hust.edu.vn', '1', 'hung.nguyenviet1');
INSERT INTO `tblusers` VALUES ('225', 'vuong.phamhung', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'vuong.phamhung@hust.edu.vn', '1', 'vuong.phamhung');
INSERT INTO `tblusers` VALUES ('226', 'dung.nguyenhuu', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'dung.nguyenhuu@hust.edu.vn', '1', 'dung.nguyenhuu');
INSERT INTO `tblusers` VALUES ('227', 'kien.phamthe', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'kien.phamthe@hust.edu.vn', '1', 'kien.phamthe');
INSERT INTO `tblusers` VALUES ('228', 'lan.nguyenthi1', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'lan.nguyenthi1@hust.edu.vn', '1', 'lan.nguyenthi1');
INSERT INTO `tblusers` VALUES ('229', 'khoi.nguyenthi', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'khoi.nguyenthi@hust.edu.vn', '1', 'khoi.nguyenthi');
INSERT INTO `tblusers` VALUES ('230', 'minh.habinh', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'minh.habinh@hust.edu.vn', '1', 'minh.habinh');
INSERT INTO `tblusers` VALUES ('231', 'thang.tranngoc', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'thang.tranngoc@hust.edu.vn', '1', 'thang.tranngoc');
INSERT INTO `tblusers` VALUES ('232', 'toan.phivan', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'toan.phivan@hust.edu.vn', '1', 'toan.phivan');
INSERT INTO `tblusers` VALUES ('233', 'tho.doduc', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'tho.doduc@hust.edu.vn', '1', 'tho.doduc');
INSERT INTO `tblusers` VALUES ('234', 'nghi.nguyenthanh', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'nghi.nguyenthanh@hust.edu.vn', '1', 'nghi.nguyenthanh');
INSERT INTO `tblusers` VALUES ('235', 'phong.phamnam', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'phong.phamnam@hust.edu.vn', '1', 'phong.phamnam');
INSERT INTO `tblusers` VALUES ('236', 'san.luyenthi', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'san.luyenthi@hust.edu.vn', '1', 'san.luyenthi');
INSERT INTO `tblusers` VALUES ('237', 'quan.ngoduc', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'quan.ngoduc@hust.edu.vn', '1', 'quan.ngoduc');
INSERT INTO `tblusers` VALUES ('238', 'trang.nguyenthi', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'trang.nguyenthi@hust.edu.vn', '1', 'trang.nguyenthi');
INSERT INTO `tblusers` VALUES ('239', 'phuong.nguyenthanh', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'phuong.nguyenthanh@hust.edu.vn', '1', 'phuong.nguyenthanh');
INSERT INTO `tblusers` VALUES ('240', 'bac.luonghuu', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'bac.luonghuu@hust.edu.vn', '1', 'bac.luonghuu');
INSERT INTO `tblusers` VALUES ('241', 'cuong.lecao', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'cuong.lecao@hust.edu.vn', '1', 'cuong.lecao');
INSERT INTO `tblusers` VALUES ('242', 'anh.luuthilan', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'anh.luuthilan@hust.edu.vn', '1', 'anh.luuthilan');
INSERT INTO `tblusers` VALUES ('243', 'son.vuong', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'son.vuong@hust.edu.vn', '1', 'son.vuong');
INSERT INTO `tblusers` VALUES ('245', 'hatn.d', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'hello@yahoo.com', '1', 'hatn.d');
INSERT INTO `tblusers` VALUES ('246', 'ha.ck', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'incredibletran@gmail.com', '1', 'ha.ck');
INSERT INTO `tblusers` VALUES ('247', 'anthonytran', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'incredibletran@gmail.com', '1', 'anthonytran');
INSERT INTO `tblusers` VALUES ('248', 'anthony.tran', '25f9e794323b453885f5181f1b624d0b', 'salt-sequence', 'hello@yahoo.com', '0', 'anthony.tran');
INSERT INTO `tblusers` VALUES ('249', 'xxxxxxx', 'e10adc3949ba59abbe56e057f20f883e', 'salt-sequence', 'xxxx@gmail.com', '1', 'xxxxxxx');
INSERT INTO `tblusers` VALUES ('250', 'anthonyStark', '35c7c28ff64710aaa3dfe0106912025e', 'salt-sequence', 'anthonyStark@gmail.com', '1', 'anthonyStark');
INSERT INTO `tblusers` VALUES ('251', 'benmark', '4ba6cb13e221b38efc22aa5b853f6089', 'salt-sequence', 'benmark@yahoo.com', '1', 'benmark');
