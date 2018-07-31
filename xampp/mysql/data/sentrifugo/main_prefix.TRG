TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `main_prefix_aft_upd` AFTER UPDATE ON `main_prefix` FOR EACH ROW BEGIN\n				    if old.prefix != new.prefix then \n				    begin \n				      update main_employees_summary set prefix_name = new.prefix,modifieddate = utc_timestamp() where isactive = 1 and prefix_id = new.id;\n				    end;\n				    end if;\n				    END'
sql_modes=0
definers='root@localhost'
client_cs_names='utf8'
connection_cl_names='utf8_general_ci'
db_cl_names='utf32_general_ci'
