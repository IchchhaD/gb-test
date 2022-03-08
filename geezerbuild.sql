SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `geezerbuild` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `geezerbuild`;

CREATE TABLE `assignments` (
  `id` int(10) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `assignment_name` varchar(250) NOT NULL,
  `assignment_desc` text NOT NULL,
  `date_created` date NOT NULL,
  `date_submit` date NOT NULL,
  `teacher` varchar(250) NOT NULL,
  `stu_regno` int(10) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `assignments` (`id`, `subject`, `assignment_name`, `assignment_desc`, `date_created`, `date_submit`, `teacher`, `stu_regno`, `status`) VALUES
(1, 'Langauge Arts', 'Spelling - Chapter 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2022-03-07', '2022-03-14', 'Ms. Durga Maharjan', 10102, 'new'),
(2, 'Langauge Arts', 'Spelling - Chapter 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2022-03-08', '2022-03-15', 'Ms. Durga Maharjan', 10102, 'new');

CREATE TABLE `grades` (
  `id` int(10) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `section` varchar(1) NOT NULL,
  `num_students` int(3) NOT NULL,
  `classteacher` varchar(250) NOT NULL,
  `block` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `grades` (`id`, `grade`, `section`, `num_students`, `classteacher`, `block`) VALUES
(1, 'I', 'A', 18, 'Sample Name 1', 'Primary School'),
(2, 'I', 'B', 18, 'Sample Name 2', 'Primary School'),
(3, 'I', 'C', 18, 'Sample Name 3', 'Primary School'),
(4, 'I', 'D', 18, 'Sample Name 4', 'Primary School'),
(5, 'II', 'A', 20, 'Sample Name 5', 'Primary School'),
(6, 'II', 'B', 20, 'Sample Name 6', 'Primary School'),
(7, 'II', 'C', 20, 'Sample Name 7', 'Primary School'),
(8, 'II', 'D', 20, 'Sample Name 8', 'Primary School'),
(9, 'II', 'E', 20, 'Sample Name 9', 'Primary School'),
(10, 'II', 'F', 20, 'Sample Name 10', 'Primary School'),
(11, 'III', 'A', 22, 'Sample Name 11', 'Primary School'),
(12, 'III', 'B', 22, 'Sample Name 12', 'Primary School'),
(13, 'III', 'C', 22, 'Sample Name 13', 'Primary School'),
(14, 'III', 'D', 22, 'Sample Name 14', 'Primary School'),
(15, 'III', 'E', 22, 'Sample Name 15', 'Primary School'),
(16, 'III', 'F', 22, 'Sample Name 16', 'Primary School'),
(17, 'IV', 'A', 28, 'Sample Name 17', 'Primary School'),
(18, 'IV', 'B', 28, 'Sample Name 18', 'Primary School'),
(19, 'IV', 'C', 28, 'Sample Name 19', 'Primary School'),
(20, 'IV', 'D', 28, 'Sample Name 20', 'Primary School'),
(21, 'IV', 'E', 28, 'Sample Name 21', 'Primary School'),
(22, 'IV', 'F', 28, 'Sample Name 22', 'Primary School'),
(23, 'V', 'A', 28, 'Sample Name 23', 'Primary School'),
(24, 'V', 'B', 28, 'Sample Name 24', 'Primary School'),
(25, 'V', 'C', 28, 'Sample Name 25', 'Primary School'),
(26, 'V', 'D', 28, 'Sample Name 26', 'Primary School'),
(27, 'V', 'E', 28, 'Sample Name 27', 'Primary School'),
(28, 'V', 'F', 28, 'Sample Name 28', 'Primary School'),
(29, 'VI', 'A', 28, 'Sample Name 29', 'Middle School'),
(30, 'VI', 'B', 28, 'Sample Name 30', 'Middle School'),
(31, 'VI', 'C', 28, 'Sample Name 31', 'Middle School'),
(32, 'VI', 'D', 28, 'Sample Name 32', 'Middle School'),
(33, 'VI', 'E', 28, 'Sample Name 33', 'Middle School'),
(34, 'VI', 'F', 28, 'Sample Name 34', 'Middle School'),
(35, 'VI', 'G', 28, 'Sample Name 35', 'Middle School'),
(36, 'VII', 'A', 28, 'Sample Name 36', 'Middle School'),
(37, 'VII', 'B', 28, 'Sample Name 37', 'Middle School'),
(38, 'VII', 'C', 28, 'Sample Name 38', 'Middle School'),
(39, 'VII', 'D', 28, 'Sample Name 39', 'Middle School'),
(40, 'VII', 'E', 28, 'Sample Name 40', 'Middle School'),
(41, 'VII', 'F', 28, 'Sample Name 41', 'Middle School'),
(42, 'VII', 'G', 28, 'Sample Name 42', 'Middle School'),
(43, 'VIII', 'A', 32, 'Sample Name 43', 'Middle School'),
(44, 'VIII', 'B', 32, 'Sample Name 44', 'Middle School'),
(45, 'VIII', 'C', 32, 'Sample Name 45', 'Middle School'),
(46, 'VIII', 'D', 32, 'Sample Name 46', 'Middle School'),
(47, 'VIII', 'E', 32, 'Sample Name 47', 'Middle School'),
(48, 'VIII', 'F', 32, 'Sample Name 48', 'Middle School'),
(49, 'VIII', 'G', 32, 'Sample Name 49', 'Middle School'),
(50, 'IX', 'A', 32, 'Sample Name 50', 'Secondary School'),
(51, 'IX', 'B', 32, 'Sample Name 51', 'Secondary School'),
(52, 'IX', 'C', 32, 'Sample Name 52', 'Secondary School'),
(53, 'IX', 'D', 32, 'Sample Name 53', 'Secondary School'),
(54, 'IX', 'E', 32, 'Sample Name 54', 'Secondary School'),
(55, 'IX', 'F', 32, 'Sample Name 55', 'Secondary School'),
(56, 'IX', 'G', 32, 'Sample Name 56', 'Secondary School'),
(57, 'X', 'A', 32, 'Sample Name 57', 'Secondary School'),
(58, 'X', 'B', 32, 'Sample Name 58', 'Secondary School'),
(59, 'X', 'C', 32, 'Sample Name 59', 'Secondary School'),
(60, 'X', 'D', 32, 'Sample Name 60', 'Secondary School'),
(61, 'X', 'E', 32, 'Sample Name 61', 'Secondary School'),
(62, 'X', 'F', 32, 'Sample Name 62', 'Secondary School'),
(63, 'X', 'G', 32, 'Sample Name 63', 'Secondary School');

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `studentdetails` (
  `id` int(10) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `garde` varchar(5) NOT NULL,
  `section` varchar(1) NOT NULL,
  `rollno` int(2) NOT NULL,
  `regno` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `studentdetails` (`id`, `fullname`, `garde`, `section`, `rollno`, `regno`) VALUES
(1, 'Sample Student 1', 'II', 'A', 8, 10102),
(2, 'Sample Student 2', 'VI', 'B', 12, 14545),
(3, 'Sample Student 3', 'X', 'D', 28, 9842);

CREATE TABLE `subjects` (
  `id` int(10) NOT NULL,
  `sub_name` varchar(100) NOT NULL,
  `grade_id` int(10) NOT NULL,
  `teach_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `subjects` (`id`, `sub_name`, `grade_id`, `teach_id`) VALUES
(1, 'Language Arts', 5, 1),
(2, 'Computer Science', 30, 2),
(3, 'Science', 60, 3);

CREATE TABLE `teacherdetails` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `subject` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `teacherdetails` (`id`, `name`, `subject`) VALUES
(1, 'Ms. Durga Maharjan', 'Language Arts'),
(2, 'Ms. Jarina Manadhar', 'Computer Science'),
(3, 'Mr. Sulaksha Purna Shrestha', 'Science');

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `regno` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `regno`) VALUES
(1, 'Sample Student', 'student.10102@gems.edu.np', NULL, '$2y$10$hXpEy17Kmt6Uy4a1io6wu.IeclLZhfan695BNee.s375N1ZR5gq5a', NULL, '2022-03-07 23:18:57', '2022-03-07 23:18:57', 10102);


ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stu_regno` (`stu_regno`),
  ADD KEY `sub_id` (`subject`),
  ADD KEY `teach_id` (`teacher`);

ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `studentdetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `regno` (`regno`);

ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grade_id` (`grade_id`),
  ADD KEY `teach_id` (`teach_id`);

ALTER TABLE `teacherdetails`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `assignments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `studentdetails`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `subjects`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`stu_regno`) REFERENCES `studentdetails` (`regno`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `subjects_ibfk_2` FOREIGN KEY (`teach_id`) REFERENCES `teacherdetails` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
