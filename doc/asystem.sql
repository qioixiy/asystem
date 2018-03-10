-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 11, 2018 at 03:50 AM
-- Server version: 5.7.21-0ubuntu0.17.10.1
-- PHP Version: 7.1.11-0ubuntu0.17.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `dyn_info`
--

CREATE TABLE `dyn_info` (
  `id` int(11) NOT NULL COMMENT '键值',
  `student_id` int(11) NOT NULL COMMENT '地点',
  `nfc_tag` varchar(20) NOT NULL COMMENT 'nfc tag信息',
  `geo` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL COMMENT '记录数据的类型',
  `create_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='课程管理表';

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `id` int(11) NOT NULL COMMENT 'id',
  `name` varchar(10) NOT NULL COMMENT '用户名',
  `password` varchar(20) DEFAULT NULL COMMENT '密码',
  `number` varchar(10) NOT NULL COMMENT '编号：管理员的编号',
  `email` varchar(20) NOT NULL DEFAULT 'a@b.com' COMMENT '联系方式:email',
  `telphone` varchar(11) NOT NULL COMMENT '联系方式:telphone'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员对应的表';

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`id`, `name`, `password`, `number`, `email`, `telphone`) VALUES
(1, 'admin', 'password', '001', 'a@b.com', '12300000000');

-- --------------------------------------------------------

--
-- Table structure for table `nfc_tag`
--

CREATE TABLE `nfc_tag` (
  `id` int(11) NOT NULL,
  `tag` varchar(100) CHARACTER SET utf8 NOT NULL,
  `define` varchar(1024) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `nfc_tag`
--

INSERT INTO `nfc_tag` (`id`, `tag`, `define`) VALUES
(12, 'BD1B5276', '图书馆'),
(13, '5F5912A7', '教室'),
(14, '5DB25276', '实验室');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL COMMENT 'id',
  `name` varchar(10) NOT NULL COMMENT '用户名',
  `password` varchar(20) DEFAULT NULL COMMENT '密码',
  `number` varchar(20) NOT NULL COMMENT '编号：学生的学号',
  `email` varchar(20) NOT NULL DEFAULT 'a@b.com' COMMENT '联系方式:email',
  `telphone` varchar(11) NOT NULL COMMENT '联系方式:telphone'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户表包括老师、学生、及其他';

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `password`, `number`, `email`, `telphone`) VALUES
(27, '李四', '123456', '03742013027', '３94842501@qq.com', '18074128086');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL COMMENT '用户id',
  `name` varchar(10) NOT NULL COMMENT '用户名',
  `password` varchar(20) DEFAULT NULL COMMENT '密码',
  `number` varchar(20) DEFAULT NULL COMMENT '编号：老师的编号',
  `email` varchar(20) DEFAULT 'a@b.com' COMMENT '联系方式:email',
  `telphone` varchar(11) DEFAULT NULL COMMENT '联系方式:telphone'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户表包括老师、学生、及其他';

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `password`, `number`, `email`, `telphone`) VALUES
(1, '老王', '123', '1', 'laowang@sina.com', '13968262678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dyn_info`
--
ALTER TABLE `dyn_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nfc_tag`
--
ALTER TABLE `nfc_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dyn_info`
--
ALTER TABLE `dyn_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '键值', AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nfc_tag`
--
ALTER TABLE `nfc_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id', AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
