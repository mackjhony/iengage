TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `main_countries_aft_upd` AFTER UPDATE ON `main_countries` FOR EACH ROW BEGIN
sql_modes=0
definers='root@localhost'
client_cs_names='utf8'
connection_cl_names='utf8_general_ci'
db_cl_names='utf32_general_ci'