
drop database link site1;

create database link site1
 connect to system identified by "12345"
 using '(DESCRIPTION =
       (ADDRESS_LIST =
         (ADDRESS = (PROTOCOL = TCP)
		 (HOST = 192.168.0.149)
		 (PORT = 1622))
       )
       (CONNECT_DATA =
         (SID = XE)
       )
     )'
;  
