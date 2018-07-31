TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `main_employeeleavetypes_aft_upd` AFTER UPDATE ON `main_employeeleavetypes` FOR EACH ROW BEGIN\n				     update main_leaverequest_summary ls set ls.leavetype_name = new.leavetype,ls.modifieddate = utc_timestamp() \n				     where ls.leavetypeid = new.id and ls.isactive = 1;\n				    END'
sql_modes=0
definers='root@localhost'
client_cs_names='utf8'
connection_cl_names='utf8_general_ci'
db_cl_names='utf32_general_ci'
