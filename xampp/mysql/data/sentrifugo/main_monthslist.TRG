TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `main_monthlist_aftr_upd` AFTER UPDATE ON `main_monthslist` FOR EACH ROW BEGIN\n			        declare calmonth_name varchar(200);\n			        select month_name into calmonth_name from tbl_months where monthid = new.month_id;\n			        UPDATE main_leavemanagement_summary lm SET lm.cal_startmonthname = calmonth_name, lm.modifieddate = utc_timestamp() \n			        WHERE (lm.cal_startmonth = new.month_id AND lm.isactive=1);\n			    	END'
sql_modes=0
definers='root@localhost'
client_cs_names='utf8'
connection_cl_names='utf8_general_ci'
db_cl_names='utf32_general_ci'
