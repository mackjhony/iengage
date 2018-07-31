TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `main_agencylist_aft_upd` AFTER UPDATE ON `main_bgagencylist` FOR EACH ROW BEGIN\n					if(old.agencyname != new.agencyname) then\n					update main_bgchecks_summary set agencyname = new.agencyname,modifieddate = utc_timestamp() where agencyid = new.id and isactive = 1;\n					end if;\n				    END'
sql_modes=0
definers='root@localhost'
client_cs_names='utf8'
connection_cl_names='utf8_general_ci'
db_cl_names='utf32_general_ci'
