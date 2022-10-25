-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 20, 2022 at 02:34 PM
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
-- Database: `ritsoftV4`
--

-- --------------------------------------------------------

--
-- Table structure for table `mrd_accreditation_assesment_tool`
--

CREATE TABLE `mrd_accreditation_assesment_tool` (
  `tool_id` varchar(30) NOT NULL,
  `class_id` varchar(30) NOT NULL,
  `subject_id` varchar(30) NOT NULL,
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
  `categoryName` varchar(30) NOT NULL,
  `categoryType` varchar(30) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_accreditation_assesment_tool_details`
--

CREATE TABLE `mrd_accreditation_assesment_tool_details` (
  `toolDetailId` varchar(30) NOT NULL,
  `toolId` varchar(30) NOT NULL,
  `questionNo` int(11) NOT NULL,
  `mappedCo` varchar(30) NOT NULL,
  `maxMark` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_accreditation_co_level`
--

CREATE TABLE `mrd_accreditation_co_level` (
  `co_level_id` varchar(30) NOT NULL,
  `level_one` varchar(30) NOT NULL,
  `level_two` varchar(30) NOT NULL,
  `level_three` varchar(30) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_application`
--

CREATE TABLE `mrd_application` (
  `serviceName` varchar(30) NOT NULL,
  `sectionName` varchar(30) NOT NULL,
  `sectionHeadpen` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_award`
--

CREATE TABLE `mrd_award` (
  `awardHolderID` varchar(30) NOT NULL,
  `awardTitle` varchar(100) NOT NULL,
  `awardType` varchar(100) NOT NULL,
  `awardName` varchar(100) NOT NULL,
  `awardYear` varchar(100) NOT NULL,
  `awardRemarks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_class`
--

CREATE TABLE `mrd_class` (
  `classID` varchar(100) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `semBegin` date NOT NULL,
  `semEnd` date NOT NULL,
  `classAcademicYear` varchar(100) NOT NULL,
  `classMaleNo` int(11) NOT NULL,
  `classFemaleNo` int(11) NOT NULL,
  `classTransNo` int(11) NOT NULL,
  `classGenNo` int(11) NOT NULL,
  `classSCno` int(11) NOT NULL,
  `classSTno` int(11) NOT NULL,
  `classOBCno` int(11) NOT NULL,
  `classOECno` int(11) NOT NULL,
  `classMuslimNo` int(11) NOT NULL,
  `classLatinNo` int(11) NOT NULL,
  `classECSno` int(11) NOT NULL,
  `classPHYno` int(11) NOT NULL,
  `classGroupMail` varchar(100) NOT NULL,
  `classRemarks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_copo_correlation`
--

CREATE TABLE `mrd_copo_correlation` (
  `copo_id` varchar(20) NOT NULL,
  `co_id` varchar(30) NOT NULL,
  `po1` varchar(100) NOT NULL,
  `po2` varchar(100) NOT NULL,
  `po3` varchar(100) NOT NULL,
  `po4` varchar(100) NOT NULL,
  `po5` varchar(100) NOT NULL,
  `po6` varchar(100) NOT NULL,
  `po7` varchar(100) NOT NULL,
  `po8` varchar(100) NOT NULL,
  `po9` varchar(100) NOT NULL,
  `po10` varchar(100) NOT NULL,
  `po11` varchar(100) NOT NULL,
  `po12` varchar(100) NOT NULL,
  `pso1` varchar(100) NOT NULL,
  `pso2` varchar(100) NOT NULL,
  `pso3` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_course`
--

CREATE TABLE `mrd_course` (
  `c_id` varchar(30) NOT NULL,
  `cName` varchar(20) NOT NULL,
  `cProgramid` varchar(15) NOT NULL,
  `credits` int(10) NOT NULL,
  `internalPass` varchar(20) NOT NULL,
  `internalTotal` int(10) NOT NULL,
  `externalPass` varchar(15) NOT NULL,
  `externalTotal` int(10) NOT NULL,
  `offerDeptid` varchar(30) NOT NULL,
  `type1` varchar(15) NOT NULL,
  `courseRemarks` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_courseplan`
--

CREATE TABLE `mrd_courseplan` (
  `planPen` varchar(30) NOT NULL,
  `planCid` varchar(30) NOT NULL,
  `planOffertime` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(20) NOT NULL,
  `planBatch` varchar(20) NOT NULL,
  `planTopic` varchar(30) NOT NULL,
  `plaLink1` varchar(30) NOT NULL,
  `planLink2` varchar(30) NOT NULL,
  `planRemarks` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_course_outcome`
--

CREATE TABLE `mrd_course_outcome` (
  `co_id` varchar(30) NOT NULL,
  `subject_id` varchar(30) NOT NULL,
  `co_code` varchar(30) NOT NULL,
  `co_description` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_department`
--

CREATE TABLE `mrd_department` (
  `deptID` varchar(30) NOT NULL,
  `deptName` varchar(25) NOT NULL,
  `deptEmail` varchar(25) NOT NULL,
  `deptPhno` varchar(20) NOT NULL,
  `hodPen` varchar(20) NOT NULL,
  `deptRemarks` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_feedback`
--

CREATE TABLE `mrd_feedback` (
  `feedBackNo` int(10) NOT NULL,
  `feedBackDate` date NOT NULL,
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
  `hostelName` varchar(30) NOT NULL,
  `totalBed` int(30) NOT NULL,
  `warden1Pen` varchar(30) NOT NULL,
  `warden2Pen` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_hostel_application`
--

CREATE TABLE `mrd_hostel_application` (
  `hostelStakeholderID` varchar(30) NOT NULL,
  `hostelApplicationDate` date NOT NULL,
  `applicationHostelName` varchar(30) NOT NULL,
  `hostelAdvisorComment` varchar(30) NOT NULL,
  `hostelHodComment` varchar(30) NOT NULL,
  `hostelWardenComment` varchar(30) NOT NULL,
  `hostelPrincipalComment` varchar(30) NOT NULL,
  `hostelQuota` varchar(30) NOT NULL,
  `prio1` varchar(30) NOT NULL,
  `prio2a` varchar(30) NOT NULL,
  `prio2b` varchar(30) NOT NULL,
  `prio2c` varchar(30) NOT NULL,
  `prio2d` varchar(30) NOT NULL,
  `prio2e` varchar(30) NOT NULL,
  `prio2f` varchar(30) NOT NULL,
  `distanceMetric` varchar(30) NOT NULL,
  `rankMetric` varchar(30) NOT NULL,
  `hostelRank` varchar(30) NOT NULL,
  `hostelRemarks` varchar(30) NOT NULL,
  `hostelStatus` varchar(30) NOT NULL,
  `hostelApprovedDate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_lecture_lab`
--

CREATE TABLE `mrd_lecture_lab` (
  `lecturePen` varchar(15) NOT NULL,
  `lectureCid` varchar(30) NOT NULL,
  `lectureOffertime` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(10) NOT NULL,
  `lectureBatch` varchar(15) NOT NULL,
  `batchString` varchar(20) NOT NULL,
  `dutyLeaveString` varchar(15) NOT NULL,
  `absenteeString` varchar(15) NOT NULL,
  `topicsTaught` varchar(20) NOT NULL,
  `webLink1` varchar(25) NOT NULL,
  `webLink2` varchar(25) NOT NULL,
  `lectureRemarks` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_login`
--

CREATE TABLE `mrd_login` (
  `user_id` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL,
  `hash` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_notification`
--

CREATE TABLE `mrd_notification` (
  `notiNumber` int(11) NOT NULL,
  `notiDate` date NOT NULL,
  `content` varchar(255) NOT NULL,
  `toWhom` varchar(100) NOT NULL,
  `byWhom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_parent`
--

CREATE TABLE `mrd_parent` (
  `parentAadhar` varchar(15) NOT NULL,
  `studAdmissionNo` varchar(100) NOT NULL,
  `parentName` varchar(30) NOT NULL,
  `relation` varchar(30) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `parentIncome` varchar(20) NOT NULL,
  `parentEmail` varchar(100) NOT NULL,
  `parentMobilePhno` varchar(12) NOT NULL,
  `parentLandPhno` varchar(12) NOT NULL,
  `parentAddress` varchar(200) NOT NULL,
  `parentPoffice` varchar(100) NOT NULL,
  `parentPincode` varchar(10) NOT NULL,
  `parentGps` int(11) NOT NULL,
  `parentRemarks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_prof_course`
--

CREATE TABLE `mrd_prof_course` (
  `profPen` varchar(30) NOT NULL,
  `profCid` varchar(30) NOT NULL,
  `offerTime` varchar(15) NOT NULL,
  `profCourseBegin` varchar(15) NOT NULL,
  `profCourseEnd` varchar(15) NOT NULL,
  `profCourseRemarks` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_program`
--

CREATE TABLE `mrd_program` (
  `programID` varchar(30) NOT NULL,
  `programName` varchar(100) NOT NULL,
  `programCategory` varchar(100) NOT NULL,
  `specName` varchar(100) NOT NULL,
  `programDeparmentID` varchar(30) NOT NULL,
  `intake` int(11) NOT NULL,
  `genNo` int(11) NOT NULL,
  `obcNo` int(11) NOT NULL,
  `oecNo` int(11) NOT NULL,
  `muslimNo` int(11) NOT NULL,
  `scNo` int(11) NOT NULL,
  `stNo` int(11) NOT NULL,
  `latinNo` int(11) NOT NULL,
  `ecsNo` int(11) NOT NULL,
  `phyNo` int(11) NOT NULL,
  `no_of_semesters` int(11) NOT NULL,
  `order1` int(11) NOT NULL,
  `orderDate1` date NOT NULL,
  `order2` int(11) NOT NULL,
  `orderDate2` date NOT NULL,
  `order3` int(11) NOT NULL,
  `orderDate3` date NOT NULL,
  `startDate` date NOT NULL,
  `programRemarks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_program_admission`
--

CREATE TABLE `mrd_program_admission` (
  `admProgramID` varchar(30) NOT NULL,
  `academicYear` varchar(100) NOT NULL,
  `admGen` int(11) NOT NULL,
  `admObc` int(11) NOT NULL,
  `admOec` int(11) NOT NULL,
  `admMuslim` int(11) NOT NULL,
  `admSc` int(11) NOT NULL,
  `admSt` int(11) NOT NULL,
  `admLc` int(11) NOT NULL,
  `admEcs` int(11) NOT NULL,
  `admTotal` int(11) NOT NULL,
  `admRemarks` varchar(100) NOT NULL
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
  `pubStakeholderID` varchar(30) NOT NULL,
  `pubTitle` varchar(30) NOT NULL,
  `pubType` varchar(30) NOT NULL,
  `pubName` varchar(30) NOT NULL,
  `pageNo` varchar(30) NOT NULL,
  `volume` varchar(30) NOT NULL,
  `issue` varchar(30) NOT NULL,
  `month` varchar(30) NOT NULL,
  `year` varchar(30) NOT NULL,
  `pubRemarks` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_staffer`
--

CREATE TABLE `mrd_staffer` (
  `pen` varchar(20) NOT NULL,
  `stafferName` varchar(30) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `dateServiceEntry` varchar(100) NOT NULL,
  `datePresentPosition` varchar(100) NOT NULL,
  `dateJoined` date NOT NULL,
  `dateRelieved` date NOT NULL,
  `nameLastworked` varchar(100) NOT NULL,
  `teachingExperience` varchar(100) NOT NULL,
  `industrialExperience` varchar(100) NOT NULL,
  `areas_of_interest` varchar(200) NOT NULL,
  `research_and_develop` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `link1` varchar(20) NOT NULL,
  `link2` varchar(20) NOT NULL,
  `stafferDisciaction` varchar(30) NOT NULL,
  `recruitmentExamName` varchar(200) NOT NULL,
  `recruitmentRank` int(11) NOT NULL,
  `stafferQuota` varchar(100) NOT NULL,
  `stafferUGname` varchar(100) NOT NULL,
  `stafferUGinstitute` varchar(200) NOT NULL,
  `stafferUGuniversity` varchar(200) NOT NULL,
  `stafferUGscore` int(11) NOT NULL,
  `stafferPGname` varchar(100) NOT NULL,
  `stafferpPGinstitute` varchar(200) NOT NULL,
  `stafferPGuniversity` varchar(200) NOT NULL,
  `stafferPGscore` int(11) NOT NULL,
  `stafferPhdTitle` varchar(100) NOT NULL,
  `stafferPhdDiscipline` varchar(200) NOT NULL,
  `stafferPhdInstitute` varchar(200) NOT NULL,
  `stafferPhdUniversity` varchar(200) NOT NULL,
  `stafferGate` int(11) NOT NULL,
  `stafferJrf` int(11) NOT NULL,
  `stafferNet` int(11) NOT NULL,
  `stafferAdditionalQuali` varchar(200) NOT NULL,
  `stafferDob` date NOT NULL,
  `stafferGender` varchar(10) NOT NULL,
  `stafferReligion` varchar(100) NOT NULL,
  `stafferCaste` varchar(100) NOT NULL,
  `stafferSc` tinyint(1) NOT NULL,
  `stafferSt` tinyint(1) NOT NULL,
  `stafferObc` tinyint(1) NOT NULL,
  `stafferOec` tinyint(1) NOT NULL,
  `stafferMuslim` tinyint(1) NOT NULL,
  `stafferBpl` tinyint(1) NOT NULL,
  `stafferBlood` varchar(10) NOT NULL,
  `stafferImage` varchar(10) NOT NULL,
  `stafferImageStatus` varchar(30) NOT NULL,
  `stafferAddress1` varchar(200) NOT NULL,
  `stafferPoffice1` varchar(100) NOT NULL,
  `stafferDistrict1` varchar(100) NOT NULL,
  `stafferState1` varchar(100) NOT NULL,
  `stafferPincode1` int(11) NOT NULL,
  `stafferGps1` int(11) NOT NULL,
  `stafferAddress2` varchar(200) NOT NULL,
  `stafferPoffice2` varchar(100) NOT NULL,
  `stafferDistrict2` varchar(100) NOT NULL,
  `stafferState2` varchar(100) NOT NULL,
  `stafferPincode2` varchar(10) NOT NULL,
  `stafferGps2` int(11) NOT NULL,
  `stafferMobilePhno` varchar(12) NOT NULL,
  `stafferLandPhno` varchar(12) NOT NULL,
  `stafferEmail` varchar(100) NOT NULL,
  `stafferRitEmail` varchar(100) NOT NULL,
  `stafferAadhar` varchar(15) NOT NULL,
  `stafferPan` varchar(100) NOT NULL,
  `stafferPassport` varchar(30) NOT NULL,
  `stafferBankac` varchar(100) NOT NULL,
  `stafferBankname` varchar(100) NOT NULL,
  `stafferBankbranch` varchar(100) NOT NULL,
  `stafferIfsc` varchar(100) NOT NULL,
  `stafferRemarks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_stakeholder_application`
--

CREATE TABLE `mrd_stakeholder_application` (
  `serviceNo` int(20) NOT NULL,
  `applicationStakeholderID` varchar(30) NOT NULL,
  `applicationDate` date NOT NULL,
  `applicationServiceName` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `content` varchar(30) NOT NULL,
  `advisorComment` varchar(30) NOT NULL,
  `hodComment` varchar(30) NOT NULL,
  `principalComment` varchar(30) NOT NULL,
  `applicationRemarks` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `applicationApprovedDate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_student`
--

CREATE TABLE `mrd_student` (
  `admissionNo` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `programID` varchar(20) NOT NULL,
  `admissionType` varchar(100) NOT NULL,
  `entrySem` varchar(10) NOT NULL,
  `exitSem` varchar(10) NOT NULL,
  `year_of_admission` varchar(10) NOT NULL,
  `date_of_admission` date NOT NULL,
  `advisor1pen` varchar(100) NOT NULL,
  `advisor2pen` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `sgpa` float NOT NULL,
  `disciaction` varchar(15) NOT NULL,
  `entranceName` varchar(200) NOT NULL,
  `entranceScore` int(11) NOT NULL,
  `entrancerank` int(11) NOT NULL,
  `quota` varchar(100) NOT NULL,
  `school1` varchar(200) NOT NULL,
  `regno1` varchar(10) NOT NULL,
  `board1` varchar(200) NOT NULL,
  `score1` int(11) NOT NULL,
  `total1` int(11) NOT NULL,
  `grade1` varchar(10) NOT NULL,
  `percentage1` float NOT NULL,
  `noChance1` int(11) NOT NULL,
  `school2` varchar(200) NOT NULL,
  `regno2` int(11) NOT NULL,
  `board2` varchar(200) NOT NULL,
  `phyScore2` int(11) NOT NULL,
  `cheScore2` int(11) NOT NULL,
  `mathScore2` int(11) NOT NULL,
  `score2` int(11) NOT NULL,
  `total2` int(11) NOT NULL,
  `grade2` varchar(10) NOT NULL,
  `percentage2` float NOT NULL,
  `noChance2` int(11) NOT NULL,
  `ugName` varchar(200) NOT NULL,
  `ugInstitute` varchar(200) NOT NULL,
  `ugUniversity` varchar(200) NOT NULL,
  `ugScore` int(11) NOT NULL,
  `totalUGscore` int(11) NOT NULL,
  `ugCgpa` float NOT NULL,
  `ugPercentage` float NOT NULL,
  `pgName` varchar(100) NOT NULL,
  `pgInstitute` varchar(200) NOT NULL,
  `pgUniversity` varchar(200) NOT NULL,
  `pgScore` int(11) NOT NULL,
  `totalPGscore` int(11) NOT NULL,
  `pgCgpa` float NOT NULL,
  `pgPercentage` float NOT NULL,
  `gate` int(11) NOT NULL,
  `jrf` int(11) NOT NULL,
  `net` int(11) NOT NULL,
  `additionalQuali` varchar(200) NOT NULL,
  `nameLastStudied` varchar(200) NOT NULL,
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
  `imageStatus` varchar(100) NOT NULL,
  `address1` varchar(200) NOT NULL,
  `poffice1` varchar(100) NOT NULL,
  `district1` varchar(100) NOT NULL,
  `state1` varchar(100) NOT NULL,
  `pincode1` varchar(10) NOT NULL,
  `gps1` int(11) NOT NULL,
  `address2` varchar(200) NOT NULL,
  `poffice2` varchar(100) NOT NULL,
  `district2` varchar(100) NOT NULL,
  `state2` varchar(100) NOT NULL,
  `pincode2` varchar(10) NOT NULL,
  `gps2` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ritemail` varchar(100) NOT NULL,
  `mobilephno` varchar(12) NOT NULL,
  `landphno` varchar(12) NOT NULL,
  `aadhar` varchar(15) NOT NULL,
  `pan` varchar(25) NOT NULL,
  `passport` varchar(15) NOT NULL,
  `bankac` varchar(100) NOT NULL,
  `bankName` varchar(100) NOT NULL,
  `bankBranch` varchar(100) NOT NULL,
  `ifsc` varchar(100) NOT NULL,
  `remarks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_stud_class`
--

CREATE TABLE `mrd_stud_class` (
  `studAdmissionNo` varchar(30) NOT NULL,
  `wef` varchar(10) NOT NULL,
  `studClassId` varchar(30) NOT NULL,
  `rollNo` int(11) NOT NULL,
  `registrationStatus` varchar(50) NOT NULL,
  `studClassRemarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_stud_course`
--

CREATE TABLE `mrd_stud_course` (
  `studCourseAdmissionno` varchar(30) NOT NULL,
  `studCourseProfpen` varchar(15) NOT NULL,
  `studCourseID` varchar(30) NOT NULL,
  `studCourseOfferttime` varchar(15) NOT NULL,
  `enrolmentDate` date NOT NULL,
  `batchID` varchar(30) NOT NULL,
  `testScore1` int(10) NOT NULL,
  `testScore2` int(10) NOT NULL,
  `assignmentscore` int(10) NOT NULL,
  `internalMark` int(10) NOT NULL,
  `interanlMarkApprovedDate` date NOT NULL,
  `internalMarkComment` varchar(25) NOT NULL,
  `externalMark` int(10) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `studCourseRemarks` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_stud_feedback`
--

CREATE TABLE `mrd_stud_feedback` (
  `studFeedbackAdmissionno` varchar(15) NOT NULL,
  `toWhomPen` varchar(15) NOT NULL,
  `forCid` varchar(30) NOT NULL,
  `inOffertime` varchar(15) NOT NULL,
  `studFeedbackno` varchar(15) NOT NULL,
  `qs1Mark` varchar(15) NOT NULL,
  `qs2Mark` varchar(15) NOT NULL,
  `qs3Mark` varchar(15) NOT NULL,
  `qs4Mark` varchar(15) NOT NULL,
  `qs5Mark` varchar(15) NOT NULL,
  `qs6Mark` varchar(15) NOT NULL,
  `qs7Mark` varchar(15) NOT NULL,
  `qs8Mark` varchar(15) NOT NULL,
  `qs9Mark` varchar(15) NOT NULL,
  `qs10Mark` varchar(15) NOT NULL,
  `qs11Mark` varchar(15) NOT NULL,
  `qs12Mark` varchar(15) NOT NULL,
  `indexMark` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mrd_user_role_mapping`
--

CREATE TABLE `mrd_user_role_mapping` (
  `roleHolderId` varchar(30) NOT NULL,
  `role` varchar(50) NOT NULL,
  `roleDate` date NOT NULL,
  `roleRemarks` varchar(200) NOT NULL
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
  ADD PRIMARY KEY (`toolDetailId`),
  ADD KEY `mapped_co` (`mappedCo`),
  ADD KEY `toolId` (`toolId`);

--
-- Indexes for table `mrd_accreditation_co_level`
--
ALTER TABLE `mrd_accreditation_co_level`
  ADD PRIMARY KEY (`co_level_id`);

--
-- Indexes for table `mrd_application`
--
ALTER TABLE `mrd_application`
  ADD PRIMARY KEY (`serviceName`);

--
-- Indexes for table `mrd_award`
--
ALTER TABLE `mrd_award`
  ADD PRIMARY KEY (`awardTitle`,`awardHolderID`) USING BTREE;

--
-- Indexes for table `mrd_class`
--
ALTER TABLE `mrd_class`
  ADD PRIMARY KEY (`classID`,`semester`);

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
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `mrd_courseplan`
--
ALTER TABLE `mrd_courseplan`
  ADD PRIMARY KEY (`planPen`,`planCid`,`planOffertime`);

--
-- Indexes for table `mrd_course_outcome`
--
ALTER TABLE `mrd_course_outcome`
  ADD PRIMARY KEY (`co_id`);

--
-- Indexes for table `mrd_department`
--
ALTER TABLE `mrd_department`
  ADD PRIMARY KEY (`deptID`);

--
-- Indexes for table `mrd_feedback`
--
ALTER TABLE `mrd_feedback`
  ADD PRIMARY KEY (`feedBackNo`);

--
-- Indexes for table `mrd_hostel`
--
ALTER TABLE `mrd_hostel`
  ADD PRIMARY KEY (`hostelName`);

--
-- Indexes for table `mrd_hostel_application`
--
ALTER TABLE `mrd_hostel_application`
  ADD PRIMARY KEY (`hostelStakeholderID`,`hostelApplicationDate`);

--
-- Indexes for table `mrd_lecture_lab`
--
ALTER TABLE `mrd_lecture_lab`
  ADD PRIMARY KEY (`lecturePen`,`lectureCid`,`lectureOffertime`);

--
-- Indexes for table `mrd_login`
--
ALTER TABLE `mrd_login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `mrd_notification`
--
ALTER TABLE `mrd_notification`
  ADD PRIMARY KEY (`notiNumber`,`notiDate`);

--
-- Indexes for table `mrd_parent`
--
ALTER TABLE `mrd_parent`
  ADD PRIMARY KEY (`parentAadhar`,`studAdmissionNo`);

--
-- Indexes for table `mrd_prof_course`
--
ALTER TABLE `mrd_prof_course`
  ADD PRIMARY KEY (`profPen`,`profCid`,`offerTime`);

--
-- Indexes for table `mrd_program`
--
ALTER TABLE `mrd_program`
  ADD PRIMARY KEY (`programID`);

--
-- Indexes for table `mrd_program_admission`
--
ALTER TABLE `mrd_program_admission`
  ADD PRIMARY KEY (`admProgramID`,`academicYear`);

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
  ADD PRIMARY KEY (`pubStakeholderID`,`pubTitle`);

--
-- Indexes for table `mrd_staffer`
--
ALTER TABLE `mrd_staffer`
  ADD PRIMARY KEY (`pen`);

--
-- Indexes for table `mrd_stakeholder_application`
--
ALTER TABLE `mrd_stakeholder_application`
  ADD PRIMARY KEY (`serviceNo`);

--
-- Indexes for table `mrd_student`
--
ALTER TABLE `mrd_student`
  ADD PRIMARY KEY (`admissionNo`);

--
-- Indexes for table `mrd_stud_class`
--
ALTER TABLE `mrd_stud_class`
  ADD PRIMARY KEY (`studAdmissionNo`,`wef`);

--
-- Indexes for table `mrd_stud_course`
--
ALTER TABLE `mrd_stud_course`
  ADD PRIMARY KEY (`studCourseAdmissionno`,`studCourseProfpen`,`studCourseID`,`studCourseOfferttime`);

--
-- Indexes for table `mrd_stud_feedback`
--
ALTER TABLE `mrd_stud_feedback`
  ADD PRIMARY KEY (`studFeedbackAdmissionno`,`toWhomPen`,`forCid`,`inOffertime`,`studFeedbackno`);

--
-- Indexes for table `mrd_user_role_mapping`
--
ALTER TABLE `mrd_user_role_mapping`
  ADD PRIMARY KEY (`roleHolderId`,`role`);

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
  ADD CONSTRAINT `mrd_accreditation_assesment_tool_details_ibfk_1` FOREIGN KEY (`mappedCo`) REFERENCES `mrd_course_outcome` (`co_id`),
  ADD CONSTRAINT `mrd_accreditation_assesment_tool_details_ibfk_2` FOREIGN KEY (`toolId`) REFERENCES `mrd_accreditation_assesment_tool` (`tool_id`);

--
-- Constraints for table `mrd_copo_correlation`
--
ALTER TABLE `mrd_copo_correlation`
  ADD CONSTRAINT `mrd_copo_correlation_ibfk_1` FOREIGN KEY (`co_id`) REFERENCES `mrd_course_outcome` (`co_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
