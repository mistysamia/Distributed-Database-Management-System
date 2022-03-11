
drop database link site2;

create database link site2
 connect to system identified by "Rafi420Islam"
 using '(DESCRIPTION =
       (ADDRESS_LIST =
         (ADDRESS = (PROTOCOL = TCP)
		 (HOST = 192.168.0.231)
		 (PORT = 1621))
       )
       (CONNECT_DATA =
         (SID = XE)
       )
     )'
;  
