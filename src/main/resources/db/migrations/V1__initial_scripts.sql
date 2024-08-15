


CREATE TABLE IF NOT EXISTS `sm_entity_type` (
  `entity_type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key of the table\n',
  `entity_type` varchar(20) NOT NULL COMMENT 'pre defined entity used\n',
  PRIMARY KEY (`entity_type_id`),
  UNIQUE KEY `entity_type_idx` (`entity_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


INSERT INTO `sm_entity_type` (`entity_type_id`, `entity_type`) VALUES
	(2, 'ASP');
INSERT INTO `sm_entity_type` (`entity_type_id`, `entity_type`) VALUES
	(7, 'BRANCH');
INSERT INTO `sm_entity_type` (`entity_type_id`, `entity_type`) VALUES
	(5, 'COMPANY');
INSERT INTO `sm_entity_type` (`entity_type_id`, `entity_type`) VALUES
	(8, 'CUSTOMER');
INSERT INTO `sm_entity_type` (`entity_type_id`, `entity_type`) VALUES
	(4, 'GROUP');
INSERT INTO `sm_entity_type` (`entity_type_id`, `entity_type`) VALUES
	(1, 'GSP');
INSERT INTO `sm_entity_type` (`entity_type_id`, `entity_type`) VALUES
	(6, 'LOCATION');
INSERT INTO `sm_entity_type` (`entity_type_id`, `entity_type`) VALUES
	(3, 'TRP');
INSERT INTO `sm_entity_type` (`entity_type_id`, `entity_type`) VALUES
	(9, 'VENDOR');

CREATE TABLE IF NOT EXISTS `sm_menu_type` (
  `menu_type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key of the menu ENGINE table\n',
  `menu_type` varchar(25) DEFAULT NULL COMMENT 'menu ENGINE predefined in the table',
  PRIMARY KEY (`menu_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='pre defined menu ENGINE in the table';


INSERT INTO `sm_menu_type` (`menu_type_id`, `menu_type`) VALUES
	(1, 'Side Menu');
INSERT INTO `sm_menu_type` (`menu_type_id`, `menu_type`) VALUES
	(2, 'Top Menu');
INSERT INTO `sm_menu_type` (`menu_type_id`, `menu_type`) VALUES
	(3, 'Reports');
INSERT INTO `sm_menu_type` (`menu_type_id`, `menu_type`) VALUES
	(4, 'Action Links');


CREATE TABLE IF NOT EXISTS `sm_state_master` (
  `state_master_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key of the state master table',
  `state_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'state name ',
  `state_code` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'state code defined ',
  PRIMARY KEY (`state_master_id`),
  KEY `state_code` (`state_code`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='state code  master\n';


INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(1, 'Andaman and Nicobar Islands', '35');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(2, 'Andhra Pradesh (OLD)', '28');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(3, 'Arunachal Pradesh', '12');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(4, 'Assam', '18');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(5, 'Bihar', '10');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(6, 'Chandigarh', '04');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(7, 'Chhattisgarh', '22');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(8, 'Dadra and Nagar Haveli', '26');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(9, 'Daman and Diu', '25');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(10, 'Delhi', '07');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(11, 'Goa', '30');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(12, 'Gujarat', '24');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(13, 'Haryana', '06');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(14, 'Himachal Pradesh', '02');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(15, 'Jammu and Kashmir', '01');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(16, 'Jharkhand', '20');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(17, 'Karnataka', '29');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(19, 'Kerala', '32');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(20, 'Lakshadweep', '31');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(21, 'Madhya Pradesh', '23');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(22, 'Maharashtra', '27');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(23, 'Manipur', '14');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(24, 'Meghalaya', '17');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(25, 'Mizoram', '15');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(26, 'Nagaland', '13');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(29, 'Odisha', '21');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(31, 'Pondicherry', '34');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(32, 'Punjab', '03');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(33, 'Rajasthan', '08');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(34, 'Sikkim', '11');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(35, 'Tamil Nadu', '33');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(36, 'Telangana', '36');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(37, 'Tripura', '16');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(38, 'Uttar Pradesh', '09');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(39, 'Uttarakhand', '05');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(40, 'Andhra Pradesh', '37');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(41, 'West Bengal', '19');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(43, 'OTHER TERRITORY', '97');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(44, 'OTHER COUNTRY', '96');
INSERT INTO `sm_state_master` (`state_master_id`, `state_name`, `state_code`) VALUES
	(45, 'LADAKH', '38');


CREATE TABLE IF NOT EXISTS `sm_user_type` (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key of the table\n',
  `user_type` varchar(25) DEFAULT NULL COMMENT 'user ENGINE predefined in the table',
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='user ENGINE defined in the table';


INSERT INTO `sm_user_type` (`user_type_id`, `user_type`) VALUES
	(1, 'GSP ');
INSERT INTO `sm_user_type` (`user_type_id`, `user_type`) VALUES
	(2, 'ASP ');
INSERT INTO `sm_user_type` (`user_type_id`, `user_type`) VALUES
	(3, 'TRP');
INSERT INTO `sm_user_type` (`user_type_id`, `user_type`) VALUES
	(4, 'CLIENT');
INSERT INTO `sm_user_type` (`user_type_id`, `user_type`) VALUES
	(5, 'CUSTOMER');
INSERT INTO `sm_user_type` (`user_type_id`, `user_type`) VALUES
	(6, 'VENDOR');
	
