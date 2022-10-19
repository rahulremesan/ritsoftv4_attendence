-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 12, 2022 at 02:53 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ritsoftv4`
--

-- --------------------------------------------------------

--
-- Table structure for table `mrd_accreditation_assesment_tool`
--

CREATE TABLE `mrd_accreditation_assesment_tool` (
  `tool_id` varchar(30) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subjectid` int(11) NOT NULL,
  `category_id` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `no_of_questions` int(11) NOT NULL,
  `weightage` int(11) NOT NULL,
  `target_percentage` float NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_accreditation_assesment_tool_category`
--

CREATE TABLE `mrd_accreditation_assesment_tool_category` (
  `ass_category_id` varchar(30) NOT NULL,
  `category_name` varchar(30) NOT NULL,
  `category_type` varchar(30) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_accreditation_assesment_tool_details`
--

CREATE TABLE `mrd_accreditation_assesment_tool_details` (
  `tool_detail_id` int(11) NOT NULL,
  `tool_id` int(11) NOT NULL,
  `question_no` int(11) NOT NULL,
  `mapped_co` varchar(30) NOT NULL,
  `max_mark` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_accreditation_co_level`
--

CREATE TABLE `mrd_accreditation_co_level` (
  `co_level_id` varchar(30) NOT NULL,
  `level_one` int(11) NOT NULL,
  `level_two` int(11) NOT NULL,
  `level_three` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_application`
--

CREATE TABLE `mrd_application` (
  `servicename` varchar(30) NOT NULL,
  `sectionname` varchar(30) NOT NULL,
  `sectionheadpen` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_award`
--

CREATE TABLE `mrd_award` (
  `awardholderid` varchar(30) NOT NULL,
  `awardtitle` varchar(100) NOT NULL,
  `awardtype` varchar(100) NOT NULL,
  `awardname` varchar(100) NOT NULL,
  `awardyear` int(11) NOT NULL,
  `awardremarks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_class`
--

CREATE TABLE `mrd_class` (
  `classid` varchar(100) NOT NULL,
  `semester` int(11) NOT NULL,
  `sembegin` date NOT NULL,
  `semend` date NOT NULL,
  `classacademicyear` int(11) NOT NULL,
  `classmaleno` int(11) NOT NULL,
  `classfemaleno` int(11) NOT NULL,
  `classtransno` int(11) NOT NULL,
  `classgenno` int(11) NOT NULL,
  `classscno` int(11) NOT NULL,
  `classstno` int(11) NOT NULL,
  `classobcno` int(11) NOT NULL,
  `classoecno` int(11) NOT NULL,
  `classmuslimno` int(11) NOT NULL,
  `classlatinno` int(11) NOT NULL,
  `classecsno` int(11) NOT NULL,
  `classphyno` int(11) NOT NULL,
  `classgroupmail` varchar(100) NOT NULL,
  `classremarks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_copo_correlation`
--

CREATE TABLE `mrd_copo_correlation` (
  `copo_id` int(11) NOT NULL,
  `co_id` varchar(30) NOT NULL,
  `po1` int(11) NOT NULL,
  `po2` int(11) NOT NULL,
  `po3` int(11) NOT NULL,
  `po4` int(11) NOT NULL,
  `po5` int(11) NOT NULL,
  `po6` int(11) NOT NULL,
  `po7` int(11) NOT NULL,
  `po8` int(11) NOT NULL,
  `po9` int(11) NOT NULL,
  `po10` int(11) NOT NULL,
  `po11` int(11) NOT NULL,
  `po12` int(11) NOT NULL,
  `pso1` int(11) NOT NULL,
  `pso2` int(11) NOT NULL,
  `pso3` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_course`
--

CREATE TABLE `mrd_course` (
  `cid` int(10) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `cprogramid` varchar(15) NOT NULL,
  `credits` int(10) NOT NULL,
  `internalpass` varchar(20) NOT NULL,
  `internaltotal` int(10) NOT NULL,
  `externalpass` varchar(15) NOT NULL,
  `externaltotal` int(10) NOT NULL,
  `offerdeptid` int(10) NOT NULL,
  `type1` varchar(15) NOT NULL,
  `courseremarks` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_courseplan`
--

CREATE TABLE `mrd_courseplan` (
  `planpen` varchar(30) NOT NULL,
  `plancid` int(10) NOT NULL,
  `planoffertime` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(20) NOT NULL,
  `planbatch` varchar(20) NOT NULL,
  `plantopic` varchar(30) NOT NULL,
  `planlink1` varchar(30) NOT NULL,
  `planlink2` varchar(30) NOT NULL,
  `planremarks` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_course_outcome`
--

CREATE TABLE `mrd_course_outcome` (
  `co_id` varchar(30) NOT NULL,
  `subject_id` varchar(30) NOT NULL,
  `co_code` int(11) NOT NULL,
  `co_description` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_department`
--

CREATE TABLE `mrd_department` (
  `deptid` int(11) NOT NULL,
  `deptname` varchar(25) NOT NULL,
  `deptemail` varchar(25) NOT NULL,
  `deptphno` varchar(20) NOT NULL,
  `hodpen` varchar(20) NOT NULL,
  `deptremarks` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_feedback`
--

CREATE TABLE `mrd_feedback` (
  `feedbackno` int(10) NOT NULL,
  `feedbackdate` date NOT NULL,
  `qs1` varchar(50) NOT NULL,
  `qs2` varchar(50) NOT NULL,
  `qs3` varchar(50) NOT NULL,
  `qs4` varchar(50) NOT NULL,
  `qs5` varchar(50) NOT NULL,
  `qs6` varchar(50) NOT NULL,
  `qs7` varchar(50) NOT NULL,
  `qs8` varchar(50) NOT NULL,
  `qs9` varchar(50) NOT NULL,
  `qs10` varchar(50) NOT NULL,
  `qs11` varchar(50) NOT NULL,
  `qs12` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_hostel`
--

CREATE TABLE `mrd_hostel` (
  `hostelname` varchar(30) NOT NULL,
  `totalbed` int(30) NOT NULL,
  `warden1pen` varchar(30) NOT NULL,
  `warden2pen` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_hostel_application`
--

CREATE TABLE `mrd_hostel_application` (
  `hostelstakeholderid` int(20) NOT NULL,
  `hostelapplicationdate` date NOT NULL,
  `applicationhostelname` varchar(30) NOT NULL,
  `hosteladvisorcomment` varchar(30) NOT NULL,
  `hostelhodcomment` varchar(30) NOT NULL,
  `hostelwardencomment` varchar(30) NOT NULL,
  `hostelprincipalcomment` varchar(30) NOT NULL,
  `hostelquota` varchar(30) NOT NULL,
  `prio1` varchar(30) NOT NULL,
  `prio2a` varchar(30) NOT NULL,
  `prio2b` varchar(30) NOT NULL,
  `prio2c` varchar(30) NOT NULL,
  `prio2d` varchar(30) NOT NULL,
  `prio2e` varchar(30) NOT NULL,
  `prio2f` varchar(30) NOT NULL,
  `distancemetric` varchar(30) NOT NULL,
  `rankmetric` varchar(30) NOT NULL,
  `hostelrank` varchar(30) NOT NULL,
  `hostelremarks` varchar(30) NOT NULL,
  `hostelstatus` varchar(30) NOT NULL,
  `hostelapproveddate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_lecture_lab`
--

CREATE TABLE `mrd_lecture_lab` (
  `lecturepen` varchar(15) NOT NULL,
  `lecturecid` int(10) NOT NULL,
  `lectureoffertime` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(10) NOT NULL,
  `lecturebatch` varchar(15) NOT NULL,
  `batchstring` varchar(20) NOT NULL,
  `dutyleavestring` varchar(15) NOT NULL,
  `absenteestring` varchar(15) NOT NULL,
  `topicstaught` varchar(20) NOT NULL,
  `weblink1` varchar(25) NOT NULL,
  `weblink2` varchar(25) NOT NULL,
  `lectureremarks` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_login`
--

CREATE TABLE `mrd_login` (
  `userid` int(11) NOT NULL,
  `password` varchar(15) NOT NULL,
  `hash` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_notification`
--

CREATE TABLE `mrd_notification` (
  `notinumber` int(11) NOT NULL,
  `notidate` date NOT NULL,
  `content` varchar(255) NOT NULL,
  `towhom` varchar(100) NOT NULL,
  `bywhom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_parent`
--

CREATE TABLE `mrd_parent` (
  `parentaadhar` int(15) NOT NULL,
  `studadmissionno` varchar(100) NOT NULL,
  `parentname` varchar(30) NOT NULL,
  `relation` varchar(30) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `parentincome` int(11) NOT NULL,
  `parentemail` varchar(100) NOT NULL,
  `parentmobilephno` int(11) NOT NULL,
  `parentlandphno` int(11) NOT NULL,
  `parentaddress` varchar(200) NOT NULL,
  `parentpoffice` varchar(100) NOT NULL,
  `parentpincode` int(11) NOT NULL,
  `parentgps` int(11) NOT NULL,
  `parentremarks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_prof_course`
--

CREATE TABLE `mrd_prof_course` (
  `profpen` int(10) NOT NULL,
  `profcid` int(10) NOT NULL,
  `offertime` varchar(15) NOT NULL,
  `profcoursebegin` varchar(15) NOT NULL,
  `profcourseend` varchar(15) NOT NULL,
  `profcourseremarks` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_program`
--

CREATE TABLE `mrd_program` (
  `programid` varchar(30) NOT NULL,
  `programname` varchar(100) NOT NULL,
  `programcategory` varchar(100) NOT NULL,
  `specname` varchar(100) NOT NULL,
  `programdeparmentid` int(11) NOT NULL,
  `intake` int(11) NOT NULL,
  `genno` int(11) NOT NULL,
  `obcno` int(11) NOT NULL,
  `oecno` int(11) NOT NULL,
  `muslimno` int(11) NOT NULL,
  `scno` int(11) NOT NULL,
  `stno` int(11) NOT NULL,
  `latinno` int(11) NOT NULL,
  `ecsno` int(11) NOT NULL,
  `phyno` int(11) NOT NULL,
  `noofsemesters` int(11) NOT NULL,
  `order1` int(11) NOT NULL,
  `orderdate1` date NOT NULL,
  `order2` int(11) NOT NULL,
  `orderdate2` date NOT NULL,
  `order3` int(11) NOT NULL,
  `orderdate3` date NOT NULL,
  `startdate` date NOT NULL,
  `programremarks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_program_admission`
--

CREATE TABLE `mrd_program_admission` (
  `admprogramid` int(11) NOT NULL,
  `academicyear` int(11) NOT NULL,
  `admgen` int(11) NOT NULL,
  `admobc` int(11) NOT NULL,
  `admoec` int(11) NOT NULL,
  `admmuslim` int(11) NOT NULL,
  `admsc` int(11) NOT NULL,
  `admst` int(11) NOT NULL,
  `admlc` int(11) NOT NULL,
  `admecs` int(11) NOT NULL,
  `admtotal` int(11) NOT NULL,
  `admremarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_program_outcome`
--

CREATE TABLE `mrd_program_outcome` (
  `po_id` varchar(30) NOT NULL,
  `po_code` varchar(30) NOT NULL,
  `po_title` varchar(30) NOT NULL,
  `po_description` varchar(200) NOT NULL,
  `dept_name` varchar(100) NOT NULL,
  `ug_pg` varchar(20) NOT NULL,
  `po_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_program_specific_outcome`
--

CREATE TABLE `mrd_program_specific_outcome` (
  `pso_id` varchar(30) NOT NULL,
  `pso_code` varchar(30) NOT NULL,
  `pso_title` varchar(30) NOT NULL,
  `pso_description` varchar(100) NOT NULL,
  `dept_name` varchar(30) NOT NULL,
  `pso_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_publication_patent`
--

CREATE TABLE `mrd_publication_patent` (
  `pubstakeholderid` int(20) NOT NULL,
  `pubtitle` varchar(30) NOT NULL,
  `pubtype` varchar(30) NOT NULL,
  `pubname` varchar(30) NOT NULL,
  `pageno` varchar(30) NOT NULL,
  `volume` varchar(30) NOT NULL,
  `issue` varchar(30) NOT NULL,
  `month` varchar(30) NOT NULL,
  `year` varchar(30) NOT NULL,
  `pubremarks` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_staffer`
--

CREATE TABLE `mrd_staffer` (
  `pen` int(11) NOT NULL,
  `staffername` varchar(30) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `dateserviceentry` int(11) NOT NULL,
  `datepresentposition` varchar(100) NOT NULL,
  `datejoined` date NOT NULL,
  `daterelieved` date NOT NULL,
  `namelastworked` varchar(100) NOT NULL,
  `teachingexperience` varchar(100) NOT NULL,
  `industrialexperience` varchar(100) NOT NULL,
  `areasofinterest` varchar(200) NOT NULL,
  `researchandevelop` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `link1` int(11) NOT NULL,
  `link2` int(11) NOT NULL,
  `stafferdisciaction` int(11) NOT NULL,
  `recruitmentexamname` varchar(200) NOT NULL,
  `recruitmentrank` int(11) NOT NULL,
  `stafferquota` varchar(100) NOT NULL,
  `stafferugname` varchar(100) NOT NULL,
  `stafferuginstitute` varchar(200) NOT NULL,
  `stafferuguniversity` varchar(200) NOT NULL,
  `stafferugscore` int(11) NOT NULL,
  `stafferpgname` varchar(100) NOT NULL,
  `stafferpginstitute` varchar(200) NOT NULL,
  `stafferpguniversity` varchar(200) NOT NULL,
  `stafferpgscore` int(11) NOT NULL,
  `stafferphdtitle` varchar(100) NOT NULL,
  `stafferphddiscipline` varchar(200) NOT NULL,
  `stafferphdinstitute` varchar(200) NOT NULL,
  `stafferphduniversity` varchar(200) NOT NULL,
  `staffergate` int(11) NOT NULL,
  `stafferjrf` int(11) NOT NULL,
  `staffernet` int(11) NOT NULL,
  `stafferadditionalquali` varchar(200) NOT NULL,
  `stafferdob` date NOT NULL,
  `staffergender` varchar(10) NOT NULL,
  `stafferreligion` varchar(100) NOT NULL,
  `staffercaste` varchar(100) NOT NULL,
  `staffersc` tinyint(1) NOT NULL,
  `stafferst` tinyint(1) NOT NULL,
  `stafferobc` tinyint(1) NOT NULL,
  `stafferoec` tinyint(1) NOT NULL,
  `staffermuslim` tinyint(1) NOT NULL,
  `stafferbpl` tinyint(1) NOT NULL,
  `stafferblood` varchar(10) NOT NULL,
  `stafferimage` varchar(10) NOT NULL,
  `stafferimage_status` varchar(30) NOT NULL,
  `stafferaddress1` varchar(200) NOT NULL,
  `stafferpoffice1` varchar(100) NOT NULL,
  `stafferdistrict1` varchar(100) NOT NULL,
  `stafferstate1` varchar(100) NOT NULL,
  `stafferpincode1` int(11) NOT NULL,
  `staffergps1` int(11) NOT NULL,
  `stafferaddress2` varchar(200) NOT NULL,
  `stafferpoffice2` varchar(100) NOT NULL,
  `stafferdistrict2` varchar(100) NOT NULL,
  `stafferstate2` varchar(100) NOT NULL,
  `stafferpincode2` int(11) NOT NULL,
  `staffergps2` int(11) NOT NULL,
  `staffermobilephno` int(11) NOT NULL,
  `stafferlandphno` int(11) NOT NULL,
  `stafferemail` varchar(100) NOT NULL,
  `stafferritemail` varchar(100) NOT NULL,
  `stafferaadhar` int(15) NOT NULL,
  `stafferpan` varchar(100) NOT NULL,
  `stafferpassport` int(11) NOT NULL,
  `stafferbankac` varchar(100) NOT NULL,
  `stafferbankname` varchar(100) NOT NULL,
  `stafferbankbranch` varchar(100) NOT NULL,
  `stafferifsc` varchar(100) NOT NULL,
  `stafferremarks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_stakeholder_application`
--

CREATE TABLE `mrd_stakeholder_application` (
  `serviceno` int(20) NOT NULL,
  `applicationstakeholderid` int(20) NOT NULL,
  `applicationdate` date NOT NULL,
  `applicationservicename` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `content` varchar(30) NOT NULL,
  `advisorcomment` varchar(30) NOT NULL,
  `hodcomment` varchar(30) NOT NULL,
  `principalcomment` varchar(30) NOT NULL,
  `applicationremarks` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `applicationapproveddate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_student`
--

CREATE TABLE `mrd_student` (
  `admissionno` varchar(100) NOT NULL,
  `name` varchar(30) NOT NULL,
  `programid` varchar(20) NOT NULL,
  `admissiontype` varchar(100) NOT NULL,
  `entrysem` int(10) NOT NULL,
  `exitsem` int(10) NOT NULL,
  `yearofadmission` int(20) NOT NULL,
  `dateofadmission` date NOT NULL,
  `advisor1pen` varchar(100) NOT NULL,
  `advisor2pen` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `sgpa` float NOT NULL,
  `disciaction` int(11) NOT NULL,
  `entrancename` varchar(200) NOT NULL,
  `entrancescore` int(11) NOT NULL,
  `entrancerank` int(11) NOT NULL,
  `quota` varchar(100) NOT NULL,
  `school1` varchar(200) NOT NULL,
  `regno1` int(11) NOT NULL,
  `board1` varchar(200) NOT NULL,
  `score1` int(11) NOT NULL,
  `total1` int(11) NOT NULL,
  `grade1` varchar(10) NOT NULL,
  `percentage1` float NOT NULL,
  `nochance1` int(11) NOT NULL,
  `school2` varchar(200) NOT NULL,
  `regno2` int(11) NOT NULL,
  `board2` varchar(200) NOT NULL,
  `physcore2` int(11) NOT NULL,
  `chescore2` int(11) NOT NULL,
  `mathscore2` int(11) NOT NULL,
  `score2` int(11) NOT NULL,
  `total2` int(11) NOT NULL,
  `grade2` int(11) NOT NULL,
  `percentage2` float NOT NULL,
  `nochance2` int(11) NOT NULL,
  `ugname` varchar(200) NOT NULL,
  `uginstitute` varchar(200) NOT NULL,
  `uguniversity` varchar(200) NOT NULL,
  `ugscore` int(11) NOT NULL,
  `totalugscore` int(11) NOT NULL,
  `ugcgpa` int(11) NOT NULL,
  `ugpercentage` int(11) NOT NULL,
  `pgname` varchar(100) NOT NULL,
  `pginstitute` varchar(200) NOT NULL,
  `pguniversity` varchar(200) NOT NULL,
  `pgscore` int(11) NOT NULL,
  `totalpgscore` int(11) NOT NULL,
  `pgcgpa` float NOT NULL,
  `pgpercentage` float NOT NULL,
  `gate` int(11) NOT NULL,
  `jrf` int(11) NOT NULL,
  `net` int(11) NOT NULL,
  `additionalquali` varchar(200) NOT NULL,
  `namelaststudied` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `caste` varchar(100) NOT NULL,
  `sc` tinyint(1) NOT NULL,
  `st` tinyint(1) NOT NULL,
  `obc` tinyint(1) NOT NULL,
  `oec` tinyint(1) NOT NULL,
  `muslim` tinyint(1) NOT NULL,
  `ecs` int(11) NOT NULL,
  `ph` tinyint(1) NOT NULL,
  `bpl` tinyint(1) NOT NULL,
  `blood` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `imagestatus` varchar(100) NOT NULL,
  `address1` varchar(200) NOT NULL,
  `poffice1` varchar(100) NOT NULL,
  `district1` varchar(100) NOT NULL,
  `state1` varchar(100) NOT NULL,
  `pincode1` int(11) NOT NULL,
  `gps1` int(11) NOT NULL,
  `address2` varchar(200) NOT NULL,
  `poffice2` varchar(100) NOT NULL,
  `district2` varchar(100) NOT NULL,
  `state2` varchar(100) NOT NULL,
  `pincode2` int(11) NOT NULL,
  `gps2` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ritemail` varchar(100) NOT NULL,
  `mobilephno` int(11) NOT NULL,
  `landphno` int(11) NOT NULL,
  `aadhar` int(15) NOT NULL,
  `pan` varchar(25) NOT NULL,
  `passport` int(11) NOT NULL,
  `bankac` varchar(100) NOT NULL,
  `bankname` varchar(100) NOT NULL,
  `bankbranch` varchar(100) NOT NULL,
  `ifsc` varchar(100) NOT NULL,
  `remarks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_stud_class`
--

CREATE TABLE `mrd_stud_class` (
  `studadmissionno` int(11) NOT NULL,
  `wef` int(11) NOT NULL,
  `studclassid` varchar(30) NOT NULL,
  `rollno` int(11) NOT NULL,
  `registrationstatus` varchar(50) NOT NULL,
  `studclassremarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_stud_course`
--

CREATE TABLE `mrd_stud_course` (
  `studcourseadmissionno` int(10) NOT NULL,
  `studcourseprofpen` varchar(15) NOT NULL,
  `studcoursecid` int(10) NOT NULL,
  `studcourseofferttime` varchar(15) NOT NULL,
  `enrolmentdate` date NOT NULL,
  `batchid` int(10) NOT NULL,
  `testscore1` int(10) NOT NULL,
  `testscore2` int(10) NOT NULL,
  `assignmentscore` int(10) NOT NULL,
  `internalmark` int(10) NOT NULL,
  `interanlmarkapproveddate` date NOT NULL,
  `internalmarkcomment` varchar(25) NOT NULL,
  `externalmark` int(10) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `studcourseremarks` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_stud_feedback`
--

CREATE TABLE `mrd_stud_feedback` (
  `studfeedbackadmissionno` varchar(15) NOT NULL,
  `towhompen` varchar(15) NOT NULL,
  `forcid` int(10) NOT NULL,
  `inoffertime` varchar(15) NOT NULL,
  `studfeedbackno` varchar(15) NOT NULL,
  `qs1mark` varchar(15) NOT NULL,
  `qs2mark` varchar(15) NOT NULL,
  `qs3mark` varchar(15) NOT NULL,
  `qs4mark` varchar(15) NOT NULL,
  `qs5mark` varchar(15) NOT NULL,
  `qs6mark` varchar(15) NOT NULL,
  `qs7mark` varchar(15) NOT NULL,
  `qs8mark` varchar(15) NOT NULL,
  `qs9mark` varchar(15) NOT NULL,
  `qs10mark` varchar(15) NOT NULL,
  `qs11mark` varchar(15) NOT NULL,
  `qs12mark` varchar(15) NOT NULL,
  `indexmark` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_user_role_mapping`
--

CREATE TABLE `mrd_user_role_mapping` (
  `roleholderid` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `reoledate` date NOT NULL,
  `roleremarks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mrd_accreditation_assesment_tool`
--
ALTER TABLE `mrd_accreditation_assesment_tool`
  ADD PRIMARY KEY (`tool_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `mrd_accreditation_assesment_tool_category`
--
ALTER TABLE `mrd_accreditation_assesment_tool_category`
  ADD PRIMARY KEY (`ass_category_id`);

--
-- Indexes for table `mrd_accreditation_assesment_tool_details`
--
ALTER TABLE `mrd_accreditation_assesment_tool_details`
  ADD PRIMARY KEY (`tool_detail_id`),
  ADD KEY `mapped_co` (`mapped_co`);

--
-- Indexes for table `mrd_accreditation_co_level`
--
ALTER TABLE `mrd_accreditation_co_level`
  ADD PRIMARY KEY (`co_level_id`);

--
-- Indexes for table `mrd_application`
--
ALTER TABLE `mrd_application`
  ADD PRIMARY KEY (`servicename`);

--
-- Indexes for table `mrd_award`
--
ALTER TABLE `mrd_award`
  ADD PRIMARY KEY (`awardtitle`,`awardholderid`) USING BTREE;

--
-- Indexes for table `mrd_class`
--
ALTER TABLE `mrd_class`
  ADD PRIMARY KEY (`classid`,`semester`);

--
-- Indexes for table `mrd_copo_correlation`
--
ALTER TABLE `mrd_copo_correlation`
  ADD PRIMARY KEY (`copo_id`),
  ADD KEY `co_id` (`co_id`);

--
-- Indexes for table `mrd_course`
--
ALTER TABLE `mrd_course`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `mrd_courseplan`
--
ALTER TABLE `mrd_courseplan`
  ADD PRIMARY KEY (`planpen`,`plancid`,`planoffertime`);

--
-- Indexes for table `mrd_course_outcome`
--
ALTER TABLE `mrd_course_outcome`
  ADD PRIMARY KEY (`co_id`);

--
-- Indexes for table `mrd_department`
--
ALTER TABLE `mrd_department`
  ADD PRIMARY KEY (`deptid`);

--
-- Indexes for table `mrd_feedback`
--
ALTER TABLE `mrd_feedback`
  ADD PRIMARY KEY (`feedbackno`);

--
-- Indexes for table `mrd_hostel`
--
ALTER TABLE `mrd_hostel`
  ADD PRIMARY KEY (`hostelname`);

--
-- Indexes for table `mrd_hostel_application`
--
ALTER TABLE `mrd_hostel_application`
  ADD PRIMARY KEY (`hostelstakeholderid`,`hostelapplicationdate`);

--
-- Indexes for table `mrd_lecture_lab`
--
ALTER TABLE `mrd_lecture_lab`
  ADD PRIMARY KEY (`lecturepen`,`lecturecid`,`lectureoffertime`);

--
-- Indexes for table `mrd_login`
--
ALTER TABLE `mrd_login`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `mrd_notification`
--
ALTER TABLE `mrd_notification`
  ADD PRIMARY KEY (`notinumber`,`notidate`);

--
-- Indexes for table `mrd_parent`
--
ALTER TABLE `mrd_parent`
  ADD PRIMARY KEY (`parentaadhar`,`studadmissionno`);

--
-- Indexes for table `mrd_prof_course`
--
ALTER TABLE `mrd_prof_course`
  ADD PRIMARY KEY (`profpen`,`profcid`,`offertime`);

--
-- Indexes for table `mrd_program`
--
ALTER TABLE `mrd_program`
  ADD PRIMARY KEY (`programid`);

--
-- Indexes for table `mrd_program_admission`
--
ALTER TABLE `mrd_program_admission`
  ADD PRIMARY KEY (`admprogramid`,`academicyear`);

--
-- Indexes for table `mrd_program_outcome`
--
ALTER TABLE `mrd_program_outcome`
  ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `mrd_program_specific_outcome`
--
ALTER TABLE `mrd_program_specific_outcome`
  ADD PRIMARY KEY (`pso_id`);

--
-- Indexes for table `mrd_publication_patent`
--
ALTER TABLE `mrd_publication_patent`
  ADD PRIMARY KEY (`pubstakeholderid`,`pubtitle`);

--
-- Indexes for table `mrd_staffer`
--
ALTER TABLE `mrd_staffer`
  ADD PRIMARY KEY (`pen`);

--
-- Indexes for table `mrd_stakeholder_application`
--
ALTER TABLE `mrd_stakeholder_application`
  ADD PRIMARY KEY (`serviceno`);

--
-- Indexes for table `mrd_student`
--
ALTER TABLE `mrd_student`
  ADD PRIMARY KEY (`admissionno`);

--
-- Indexes for table `mrd_stud_class`
--
ALTER TABLE `mrd_stud_class`
  ADD PRIMARY KEY (`studadmissionno`,`wef`);

--
-- Indexes for table `mrd_stud_course`
--
ALTER TABLE `mrd_stud_course`
  ADD PRIMARY KEY (`studcourseadmissionno`,`studcourseprofpen`,`studcoursecid`,`studcourseofferttime`);

--
-- Indexes for table `mrd_stud_feedback`
--
ALTER TABLE `mrd_stud_feedback`
  ADD PRIMARY KEY (`studfeedbackadmissionno`,`towhompen`,`forcid`,`inoffertime`,`studfeedbackno`);

--
-- Indexes for table `mrd_user_role_mapping`
--
ALTER TABLE `mrd_user_role_mapping`
  ADD PRIMARY KEY (`roleholderid`,`role`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mrd_accreditation_assesment_tool`
--
ALTER TABLE `mrd_accreditation_assesment_tool`
  ADD CONSTRAINT `mrd_accreditation_assesment_tool_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `mrd_accreditation_assesment_tool_category` (`ass_category_id`);

--
-- Constraints for table `mrd_accreditation_assesment_tool_details`
--
ALTER TABLE `mrd_accreditation_assesment_tool_details`
  ADD CONSTRAINT `mrd_accreditation_assesment_tool_details_ibfk_1` FOREIGN KEY (`mapped_co`) REFERENCES `mrd_course_outcome` (`co_id`);

--
-- Constraints for table `mrd_copo_correlation`
--
ALTER TABLE `mrd_copo_correlation`
  ADD CONSTRAINT `mrd_copo_correlation_ibfk_1` FOREIGN KEY (`co_id`) REFERENCES `mrd_course_outcome` (`co_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
