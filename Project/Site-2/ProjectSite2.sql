clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;

/*********************************************
**************  DATA TABLE   *****************
*********************************************/



drop table Teamlist2 CASCADE CONSTRAINTS;
drop table Teamlist3 CASCADE CONSTRAINTS;
drop table PerformanceList21 CASCADE CONSTRAINTS;
drop table PerformanceList22 CASCADE CONSTRAINTS;
drop table PerformanceList31 CASCADE CONSTRAINTS;
drop table PerformanceList32 CASCADE CONSTRAINTS;
drop table RelegationBattle211 CASCADE CONSTRAINTS;
drop table RelegationBattle212 CASCADE CONSTRAINTS;
drop table RelegationBattle221 CASCADE CONSTRAINTS;
drop table RelegationBattle222 CASCADE CONSTRAINTS;
drop table RelegationBattle311 CASCADE CONSTRAINTS;
drop table RelegationBattle312 CASCADE CONSTRAINTS;
drop table RelegationBattle321 CASCADE CONSTRAINTS;
drop table RelegationBattle322 CASCADE CONSTRAINTS;




create table Teamlist2(
   teamID int,
   teamName VARCHAR2(50),
   country VARCHAR2(50),
   seasonID int,
   PRIMARY KEY (teamID));


create table Teamlist3(
   teamID int,
   teamName VARCHAR2(50),
   country VARCHAR2(50),
   seasonID int,
   PRIMARY KEY (teamID));


create table PerformanceList21(
   perID int,
   teamID int,
   win int,
   lost int,
   draw int,
   gf int,
   ga int,
   points int,
   PRIMARY KEY (perID),
   FOREIGN KEY (teamID) REFERENCES Teamlist2 (teamID));

create table PerformanceList22(
   perID int,
   teamID int,
   win int,
   lost int,
   draw int,
   gf int,
   ga int,
   points int,
   PRIMARY KEY (perID),
   FOREIGN KEY (teamID) REFERENCES Teamlist2 (teamID));


create table PerformanceList31(
   perID int,
   teamID int,
   win int,
   lost int,
   draw int,
   gf int,
   ga int,
   points int,
   PRIMARY KEY (perID),
   FOREIGN KEY (teamID) REFERENCES Teamlist3 (teamID));

create table PerformanceList32(
   perID int,
   teamID int,
   win int,
   lost int,
   draw int,
   gf int,
   ga int,
   points int,
   PRIMARY KEY (perID),
   FOREIGN KEY (teamID) REFERENCES Teamlist3 (teamID));



create table RelegationBattle211(
   relID int,
   perID int,
   rbStatus VARCHAR2(50),
   PRIMARY KEY (relID),
   FOREIGN KEY (perID) REFERENCES PerformanceList21 (perID));


create table RelegationBattle212(
   relID int,
   perID int,
   rbStatus VARCHAR2(50),
   PRIMARY KEY (relID),
   FOREIGN KEY (perID) REFERENCES PerformanceList21 (perID));


create table RelegationBattle221(
   relID int,
   perID int,
   rbStatus VARCHAR2(50),
   PRIMARY KEY (relID),
   FOREIGN KEY (perID) REFERENCES PerformanceList22 (perID));


create table RelegationBattle222(
   relID int,
   perID int,
   rbStatus VARCHAR2(50),
   PRIMARY KEY (relID),
   FOREIGN KEY (perID) REFERENCES PerformanceList22 (perID));



create table RelegationBattle311(
   relID int,
   perID int,
   rbStatus VARCHAR2(50),
   PRIMARY KEY (relID),
   FOREIGN KEY (perID) REFERENCES PerformanceList31 (perID));


create table RelegationBattle312(
   relID int,
   perID int,
   rbStatus VARCHAR2(50),
   PRIMARY KEY (relID),
   FOREIGN KEY (perID) REFERENCES PerformanceList31 (perID));


create table RelegationBattle321(
   relID int,
   perID int,
   rbStatus VARCHAR2(50),
   PRIMARY KEY (relID),
   FOREIGN KEY (perID) REFERENCES PerformanceList32 (perID));


create table RelegationBattle322(
   relID int,
   perID int,
   rbStatus VARCHAR2(50),
   PRIMARY KEY (relID),
   FOREIGN KEY (perID) REFERENCES PerformanceList32 (perID));



create or replace view siteRecordList as select 
recID,teamName,country,seasonID,win,lost,draw,gf,ga,points,predictedStatus
from RecordList@site1;

create or replace view siteTempResult as select 
teamID,resultValue from tempResult@site1;


insert into Teamlist2(teamID, teamName,country, seasonID) values (11,'Alaves','Spain ',2);
insert into Teamlist2(teamID, teamName,country, seasonID) values (5,'Elche','Spain ',2);
insert into Teamlist2(teamID, teamName,country, seasonID) values (36,'Southampton','England ',2);
insert into Teamlist2(teamID, teamName,country, seasonID) values (2,'Brighton ','England ',2);
insert into Teamlist2(teamID, teamName,country, seasonID) values (35,'Burnley','England ',2);
insert into Teamlist2(teamID, teamName,country, seasonID) values (31,'Huesca','Spain ',2);
insert into Teamlist2(teamID, teamName,country, seasonID) values (22,'Fulham','England ',2);
insert into Teamlist2(teamID, teamName,country, seasonID) values (16,'Valladodid','Spain ',2);
insert into Teamlist2(teamID, teamName,country, seasonID) values (8,'West Brom','England ',2);
insert into Teamlist2(teamID, teamName,country, seasonID) values (10,'Eibar','Spain ',2);
insert into Teamlist2(teamID, teamName,country, seasonID) values (18,'Getafe','Spain ',2);
insert into Teamlist2(teamID, teamName,country, seasonID) values (30,'Sheffield United','England ',2);


insert into Teamlist3(teamID, teamName,country, seasonID) values (6,'Huddersfield','England ',3);
insert into Teamlist3(teamID, teamName,country, seasonID) values (13,'Levante','Spain ',3);
insert into Teamlist3(teamID, teamName,country, seasonID) values (24,'Fulham','England ',3);
insert into Teamlist3(teamID, teamName,country, seasonID) values (17,'Cardiff City','England ',3);
insert into Teamlist3(teamID, teamName,country, seasonID) values (27,'Valladolid','Spain ',3);
insert into Teamlist3(teamID, teamName,country, seasonID) values (1,'Celta Vigo','Spain ',3);
insert into Teamlist3(teamID, teamName,country, seasonID) values (32,'Brighton ','England ',3);
insert into Teamlist3(teamID, teamName,country, seasonID) values (34,'Southampton','England ',3);
insert into Teamlist3(teamID, teamName,country, seasonID) values (3,'Girona','Spain ',3);
insert into Teamlist3(teamID, teamName,country, seasonID) values (26,'Huesca','Spain ',3);
insert into Teamlist3(teamID, teamName,country, seasonID) values (9,'Rayo Vallecano','Spain ',3);
insert into Teamlist3(teamID, teamName,country, seasonID) values (28,'Burnley','England ',3);



insert into PerformanceList21(perID, teamID,win, lost,draw,gf,ga,points) values (23,16,5,16,17,34,57,31);
insert into PerformanceList21(perID, teamID,win, lost,draw,gf,ga,points) values (10,22,5,13,20,27,53,28);
insert into PerformanceList21(perID, teamID,win, lost,draw,gf,ga,points) values (11,8,5,11,22,35,76,26);
insert into PerformanceList21(perID, teamID,win, lost,draw,gf,ga,points) values (12,30,7,2,29,20,63,23);
insert into PerformanceList21(perID, teamID,win, lost,draw,gf,ga,points) values (22,31,7,13,18,34,53,34);
insert into PerformanceList21(perID, teamID,win, lost,draw,gf,ga,points) values (24,10,6,12,20,29,52,30);


insert into PerformanceList22(perID, teamID,win, lost,draw,gf,ga,points) values (7,36,12,7,19,47,68,43);
insert into PerformanceList22(perID, teamID,win, lost,draw,gf,ga,points) values (8,2,9,14,15,40,47,41);
insert into PerformanceList22(perID, teamID,win, lost,draw,gf,ga,points) values (9,35,10,9,19,33,55,39);
insert into PerformanceList22(perID, teamID,win, lost,draw,gf,ga,points) values (19,18,9,11,18,28,43,38);
insert into PerformanceList22(perID, teamID,win, lost,draw,gf,ga,points) values (21,5,8,12,18,34,55,36);
insert into PerformanceList22(perID, teamID,win, lost,draw,gf,ga,points) values (20,11,9,11,18,36,57,38);



insert into PerformanceList31(perID, teamID,win, lost,draw,gf,ga,points) values (28,17,10,4,23,34,69,34);
insert into PerformanceList31(perID, teamID,win, lost,draw,gf,ga,points) values (30,6,3,7,28,22,76,16);
insert into PerformanceList31(perID, teamID,win, lost,draw,gf,ga,points) values (35,26,7,12,19,43,65,33);
insert into PerformanceList31(perID, teamID,win, lost,draw,gf,ga,points) values (36,9,8,8,22,41,70,32);
insert into PerformanceList31(perID, teamID,win, lost,draw,gf,ga,points) values (29,24,7,5,26,34,81,26);

insert into PerformanceList32(perID, teamID,win, lost,draw,gf,ga,points) values (25,28,11,7,20,45,68,40);
insert into PerformanceList32(perID, teamID,win, lost,draw,gf,ga,points) values (26,34,9,12,17,45,65,39);
insert into PerformanceList32(perID, teamID,win, lost,draw,gf,ga,points) values (27,32,9,9,20,35,60,36);
insert into PerformanceList32(perID, teamID,win, lost,draw,gf,ga,points) values (31,13,11,11,16,59,66,44);
insert into PerformanceList32(perID, teamID,win, lost,draw,gf,ga,points) values (32,27,10,11,17,32,51,41);
insert into PerformanceList32(perID, teamID,win, lost,draw,gf,ga,points) values (33,1,10,11,17,53,62,41);
insert into PerformanceList32(perID, teamID,win, lost,draw,gf,ga,points) values (34,3,9,10,19,37,53,37);


insert into RelegationBattle211(relID, perID,rbStatus) values (8,23,'Yes');
insert into RelegationBattle211(relID, perID,rbStatus) values (21,10,'Yes');
insert into RelegationBattle211(relID, perID,rbStatus) values (28,11,'Yes');
insert into RelegationBattle211(relID, perID,rbStatus) values (24,12,'Yes');
insert into RelegationBattle211(relID, perID,rbStatus) values (7,22,'Yes');
insert into RelegationBattle211(relID, perID,rbStatus) values (9,24,'Yes');


insert into RelegationBattle222(relID, perID,rbStatus) values (6,7,'No');
insert into RelegationBattle222(relID, perID,rbStatus) values (32,8,'No');
insert into RelegationBattle222(relID, perID,rbStatus) values (36,9,'No');
insert into RelegationBattle222(relID, perID,rbStatus) values (10,21,'No');
insert into RelegationBattle222(relID, perID,rbStatus) values (5,20,'No');
insert into RelegationBattle222(relID, perID,rbStatus) values (22,19,'No');



insert into RelegationBattle311(relID, perID,rbStatus) values (26,28,'Yes');
insert into RelegationBattle311(relID, perID,rbStatus) values (3,30,'Yes');
insert into RelegationBattle311(relID, perID,rbStatus) values (16,35,'Yes');
insert into RelegationBattle311(relID, perID,rbStatus) values (1,36,'Yes');
insert into RelegationBattle311(relID, perID,rbStatus) values (15,29,'Yes');



insert into RelegationBattle321(relID, perID,rbStatus) values (31,34,'Yes');


insert into RelegationBattle322(relID, perID,rbStatus) values (2,25,'No');
insert into RelegationBattle322(relID, perID,rbStatus) values (17,26,'No');
insert into RelegationBattle322(relID, perID,rbStatus) values (29,27,'No');
insert into RelegationBattle322(relID, perID,rbStatus) values (30,32,'No');
insert into RelegationBattle322(relID, perID,rbStatus) values (25,31,'No');
insert into RelegationBattle322(relID, perID,rbStatus) values (23,33,'No');



/*********************************************
**************  Trigger  *****************
*********************************************/


CREATE OR REPLACE TRIGGER triggerResult1
    INSTEAD OF INSERT ON siteTempResult
    FOR EACH ROW
DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('Inserted On TempResult Table.');
END;
/

CREATE OR REPLACE TRIGGER triggerRecordListUpdate
    INSTEAD OF update ON siteRecordList
    FOR EACH ROW
DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('Record List has been Updated.');
END;
/

CREATE OR REPLACE TRIGGER triggerRecordListInsert
    INSTEAD OF INSERT ON siteRecordList
    FOR EACH ROW
DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('New row has been inserted into Record List.');
END;
/


/*********************************************
**************  Package Head   *****************
*********************************************/


-------------  Function  --------------
create or replace package mypackFunction AS
    
   function Relegation1(perID  in RelegationBattle211.perID  %TYPE)
   return number;

   function Relegation2(perID  in RelegationBattle211.perID  %TYPE)
   return number;

   function Relegation3(perID  in RelegationBattle211.perID  %TYPE)
   return number;

   function Relegation4(perID  in RelegationBattle211.perID  %TYPE)
   return number;

   function Relegation5(perID  in RelegationBattle211.perID  %TYPE)
   return number;

   function Relegation6(perID  in RelegationBattle211.perID  %TYPE)
   return number;

    function findingStatus(teamID in Teamlist2.teamID %TYPE,Status in varchar2)
   return number;
   
End mypackFunction;
/

 -------------  Procerdure  --------------
create or replace package mypackProcedure AS

    procedure finding(Status in varchar2,resultStatus out varchar2);

   procedure relegatedBothAll(winId in PerformanceList11.win@site1%TYPE,lostId in PerformanceList11.lost@site1%TYPE,
   draw in PerformanceList11.draw@site1%TYPE,gf in PerformanceList11.gf@site1%TYPE,
   ga in PerformanceList11.ga@site1%TYPE,
   points in PerformanceList11.points@site1%TYPE,resStatus out varchar2);


   procedure relegatedBothSeason(winId in PerformanceList11.win@site1%TYPE,
   lostId in PerformanceList11.lost@site1%TYPE,draw in PerformanceList11.draw@site1%TYPE,
   gf in PerformanceList11.gf@site1%TYPE,ga in PerformanceList11.ga@site1%TYPE,
   points in PerformanceList11.points@site1%TYPE,seasonID Teamlist1.seasonID@site1 %TYPE,
   resStatus out varchar2);

    procedure relegatedCountryAll(winId in PerformanceList11.win@site1%TYPE,
   lostId in PerformanceList11.lost@site1%TYPE,
   draw in PerformanceList11.draw@site1%TYPE,
   gf in PerformanceList11.gf@site1%TYPE,ga in PerformanceList11.ga@site1%TYPE,
   points in PerformanceList11.points@site1%TYPE,countryName Teamlist1.country@site1%TYPE,
   resStatus out varchar2);

   procedure relegatedCountrySeason(winId in PerformanceList11.win@site1%TYPE,
   lostId in PerformanceList11.lost@site1%TYPE,
   draw in PerformanceList11.draw@site1%TYPE,gf in PerformanceList11.gf@site1%TYPE,
   ga in PerformanceList11.ga@site1%TYPE,points in PerformanceList11.points@site1%TYPE,
   countryName Teamlist1.country@site1 %TYPE,
   seasonID Teamlist1.seasonID@site1 %TYPE,resStatus out varchar2);

   procedure insertTeam1(teamID in Teamlist1.teamID@site1%TYPE,winId in PerformanceList11.win@site1%TYPE,
   lostId in PerformanceList11.lost@site1%TYPE,draw in PerformanceList11.draw@site1%TYPE,
   gf in PerformanceList11.gf@site1%TYPE,ga in PerformanceList11.ga@site1%TYPE,
   points in PerformanceList11.points@site1%TYPE,rbStatus in RelegationBattle111.rbStatus@site1%TYPE);

   procedure insertTeam2(teamID in Teamlist1.teamID@site1%TYPE,winId in PerformanceList11.win@site1%TYPE,
   lostId in PerformanceList11.lost@site1%TYPE,draw in PerformanceList11.draw@site1%TYPE,
   gf in PerformanceList11.gf@site1%TYPE,ga in PerformanceList11.ga@site1%TYPE,
   points in PerformanceList11.points@site1%TYPE,rbStatus in RelegationBattle111.rbStatus@site1%TYPE);

   procedure insertTeam3(teamID in Teamlist1.teamID@site1%TYPE,winId in PerformanceList11.win@site1%TYPE,
   lostId in PerformanceList11.lost@site1%TYPE,draw in PerformanceList11.draw@site1%TYPE,
   gf in PerformanceList11.gf@site1%TYPE,ga in PerformanceList11.ga@site1%TYPE,
   points in PerformanceList11.points@site1%TYPE,rbStatus in RelegationBattle111.rbStatus@site1%TYPE);
   
   procedure UpdateRecornd(recIDUpdate  in RecordList.recID@site1%TYPE,
   teamNameUpdate in RecordList.teamName@site1%TYPE,countryUpdate  in RecordList.country@site1%TYPE,
   seasonIDUpdate  in RecordList.seasonID@site1%TYPE,winUpdate in RecordList.win@site1%TYPE,
   lostUpdate in RecordList.lost@site1%TYPE,
   drawUpdate  in RecordList.draw@site1%TYPE,gfUpdate in RecordList.gf@site1%TYPE,
   gaUpdate in RecordList.ga@site1%TYPE,
   pointsUpdate in RecordList.points@site1%TYPE,predictedStatusUpdate in RecordList.predictedStatus@site1%TYPE);
   

End mypackProcedure;
/


/*********************************************
**************  Package Body   *****************
*********************************************/

   -------------  Function  --------------
   
create or replace package body mypackFunction AS  
   function Relegation1(perID  in RelegationBattle211.perID  %TYPE)
    return number
    is
    BEGIN
        for R IN (select * from RelegationBattle111@site1) LOOP
            if perID=R.perID THEN
             return 1;
          End if;
       End loop;

      for R IN (select * from RelegationBattle112@site1) LOOP
            if perID=R.perID THEN
             return 0;
          End if;
       End loop;
    End Relegation1;

   function Relegation2(perID  in RelegationBattle211.perID   %TYPE)
    return number
    is
    BEGIN
        for R IN (select * from RelegationBattle121@site1) LOOP
            if perID=R.perID THEN
             return 1;
          End if;
       End loop;

      for R IN (select * from RelegationBattle122@site1) LOOP
            if perID=R.perID THEN
             return 0;
          End if;
       End loop;
    End Relegation2;

   function Relegation3(perID  in RelegationBattle211.perID   %TYPE)
    return number
    is
    BEGIN
        for R IN (select * from RelegationBattle211) LOOP
            if perID=R.perID THEN
             return 1;
          End if;
       End loop;

      for R IN (select * from RelegationBattle212) LOOP
            if perID=R.perID THEN
             return 0;
          End if;
       End loop;
    End Relegation3;

   function Relegation4(perID  in RelegationBattle211.perID   %TYPE)
    return number
    is
    BEGIN
        for R IN (select * from RelegationBattle221) LOOP
            if perID=R.perID THEN
             return 1;
          End if;
       End loop;

      for R IN (select * from RelegationBattle222) LOOP
            if perID=R.perID THEN
             return 0;
          End if;
       End loop;
    End Relegation4;

   function Relegation5(perID  in RelegationBattle211.perID   %TYPE)
    return number
    is
    BEGIN
        for R IN (select * from RelegationBattle311) LOOP
            if perID=R.perID THEN
             return 1;
          End if;
       End loop;

      for R IN (select * from RelegationBattle312) LOOP
            if perID=R.perID THEN
             return 0;
          End if;
       End loop;
    End Relegation5;

   function Relegation6(perID  in RelegationBattle211.perID   %TYPE)
    return number
    is
    BEGIN
        for R IN (select * from RelegationBattle321) LOOP
            if perID=R.perID THEN
             return 1;
          End if;
       End loop;

      for R IN (select * from RelegationBattle322) LOOP
            if perID=R.perID THEN
             return 0;
          End if;
       End loop;
    End Relegation6;


    function findingStatus(teamID in Teamlist2.teamID %TYPE,Status in varchar2)
    return number
    is
   countTimes number:=0;
   seasonID Teamlist1.seasonID@site1 %TYPE:=-1;
   perID PerformanceList21.perID%TYPE;
   points PerformanceList21.points%TYPE;
   flag number:=0;

    BEGIN
       if Status='Both' or Status='1' then
            for R IN (select * from Teamlist1@site1) LOOP
                if teamID=R.teamID THEN
                select perID,points into perID,points from (
                 select perID,points from PerformanceList11@site1 where PerformanceList11.teamID=R.teamID
                union
                    select perID,points from PerformanceList12@site1 where PerformanceList12.teamID=R.teamID);

                 if points<35 then
                     flag := mypackFunction.Relegation1(perID);
                    else
                        flag := mypackFunction.Relegation2(perID);
                 end if;
                return flag;
              End if;
           End loop;
      End if;

      if Status='Both' or Status='2' then
            for R IN (select * from Teamlist2) LOOP
                if teamID=R.teamID THEN
                select perID,points into perID,points from (
                 select perID,points from PerformanceList21 where PerformanceList21.teamID=R.teamID
                union
                    select perID,points from PerformanceList22 where PerformanceList22.teamID=R.teamID);

                 if points<35 then
                     flag := mypackFunction.Relegation3(perID);
                    else
                        flag := mypackFunction.Relegation4(perID);
                 end if;
                return flag;
              End if;
           End loop;
      End if;

      if Status='Both' or Status='3' then
            for R IN (select * from Teamlist3) LOOP
                if teamID=R.teamID THEN
                select perID,points into perID,points from (
                 select perID,points from PerformanceList31 where PerformanceList31.teamID=R.teamID
                union
                    select perID,points from PerformanceList32 where PerformanceList32.teamID=R.teamID);

                 if points<35 then
                     flag := mypackFunction.Relegation5(perID);
                    else
                        flag := mypackFunction.Relegation6(perID);
                 end if;
                return flag;
              End if;
           End loop;
      End if;

    End findingStatus;
   
   
End mypackFunction;
/

 -------------  Procerdure  --------------
create or replace package body mypackProcedure AS

    procedure finding(Status in varchar2,resultStatus out varchar2)
    is
   countTimes number:=0;
   flag number:=0;
   yesCount number :=0;
   noCount number:=0;
   kthRoot number:=0;
    BEGIN
       select count(*) into kthRoot from tempResult@site1;
      kthRoot:=CEIL(SQRT(kthRoot));

      if mod(kthRoot,2)=0  then
          if kthRoot>0 then 
              kthRoot:=kthRoot-1;
         else
             kthRoot:=kthRoot+1;
         End if;
       End if;
      
        for R IN (select * from tempResult@site1 order by resultValue asc) LOOP
            if countTimes<kthRoot THEN
             flag := mypackFunction.findingStatus(R.teamID,Status);
            countTimes:=countTimes+1;
            if flag=1 then
               yesCount:=yesCount+1;
            else
               noCount:=noCount+1;
            end if;
         else
             exit;
          End if;
       End loop;

      if yesCount>noCount then
          DBMS_OUTPUT.PUT_LINE(' This team will be Relegated. ');
         resultStatus:='Yes';
      else
          DBMS_OUTPUT.PUT_LINE(' This team will not be Relegated. ');
         resultStatus:='No';
      end if;
    End finding;

    procedure relegatedBothAll(winId in PerformanceList11.win@site1%TYPE,lostId in PerformanceList11.lost@site1%TYPE,
   draw in PerformanceList11.draw@site1%TYPE,gf in PerformanceList11.gf@site1%TYPE,
   ga in PerformanceList11.ga@site1%TYPE,
   points in PerformanceList11.points@site1%TYPE,resStatus out varchar2)
    is
   flag number:=0;
   rootVal number :=0;
   resultStatus varchar2(20);
    BEGIN

       for R IN (select * from PerformanceList11@site1 union select * from PerformanceList12@site1 union
                  select * from PerformanceList21 union select * from PerformanceList22 union
                  select * from PerformanceList31 union select * from PerformanceList32) LOOP

            rootVal:=POWER((R.win-winId),2)+POWER((R.lost-lostId),2)+POWER((R.draw-draw),2)+POWER((R.gf-gf),2)+POWER((R.ga-ga),2)+POWER((R.points-points),2);
            insert into siteTempResult values (R.teamID,SQRT(rootVal));
      End loop;
       mypackProcedure.finding('Both',resultStatus);
       resStatus:=resultStatus;
    End relegatedBothAll;



   procedure relegatedBothSeason(winId in PerformanceList11.win@site1%TYPE,
   lostId in PerformanceList11.lost@site1%TYPE,draw in PerformanceList11.draw@site1%TYPE,
   gf in PerformanceList11.gf@site1%TYPE,ga in PerformanceList11.ga@site1%TYPE,
   points in PerformanceList11.points@site1%TYPE,seasonID Teamlist1.seasonID@site1 %TYPE,
   resStatus out varchar2)
    is
   flag number:=0;
   rootVal number :=0;
   resultStatus varchar2(20);
    BEGIN

      if seasonID=1 then
               for R IN (select * from (select * from PerformanceList11@site1 union 
            select * from PerformanceList12@site1) NATURAL  join Teamlist1@site1 ) LOOP

                  rootVal:=POWER((R.win-winId),2)+POWER((R.lost-lostId),2)+POWER((R.draw-draw),2)+POWER((R.gf-gf),2)+POWER((R.ga-ga),2)+POWER((R.points-points),2);
                 insert into siteTempResult values (R.teamID,SQRT(rootVal));

              End loop;
      End  if;

      if seasonID=2 then
               for R IN (select * from (select * from PerformanceList21 union 
            select * from PerformanceList22) NATURAL  join Teamlist2 ) LOOP

                  rootVal:=POWER((R.win-winId),2)+POWER((R.lost-lostId),2)+POWER((R.draw-draw),2)+POWER((R.gf-gf),2)+POWER((R.ga-ga),2)+POWER((R.points-points),2);
                 insert into siteTempResult values (R.teamID,SQRT(rootVal));

              End loop;
      End  if;

      if seasonID=3 then
               for R IN (select * from (select * from PerformanceList31 union 
            select * from PerformanceList32) NATURAL  join Teamlist3 ) LOOP

                  rootVal:=POWER((R.win-winId),2)+POWER((R.lost-lostId),2)+POWER((R.draw-draw),2)+POWER((R.gf-gf),2)+POWER((R.ga-ga),2)+POWER((R.points-points),2);
                 insert into siteTempResult values (R.teamID,SQRT(rootVal));

              End loop;
      End  if;
       mypackProcedure.finding(TO_CHAR(seasonID),resultStatus);
      resStatus:=resultStatus;
    End relegatedBothSeason;

   procedure relegatedCountryAll(winId in PerformanceList11.win@site1%TYPE,
   lostId in PerformanceList11.lost@site1%TYPE,
   draw in PerformanceList11.draw@site1%TYPE,
   gf in PerformanceList11.gf@site1%TYPE,ga in PerformanceList11.ga@site1%TYPE,
   points in PerformanceList11.points@site1%TYPE,countryName Teamlist1.country@site1%TYPE,
   resStatus out varchar2)
    is
   flag number:=0;
   rootVal number :=0;
   resultStatus varchar2(20);
    BEGIN

       for R IN
      ((select * from (select * from PerformanceList11@site1 union select * from PerformanceList12@site1) 
        NATURAL  join Teamlist1@site1 where Teamlist1.country=countryName) union
        (select * from (select * from PerformanceList21 union select * from PerformanceList22) 
      NATURAL  join Teamlist2 where Teamlist2.country=countryName) union
        (select * from (select * from PerformanceList31 union select * from PerformanceList32) 
      NATURAL  join Teamlist3 where Teamlist3.country=countryName) ) LOOP

         rootVal:=POWER((R.win-winId),2)+POWER((R.lost-lostId),2)+POWER((R.draw-draw),2)+POWER((R.gf-gf),2)+POWER((R.ga-ga),2)+POWER((R.points-points),2);
         insert into siteTempResult values (R.teamID,SQRT(rootVal));

      End loop;
       mypackProcedure.finding('Both',resultStatus);
       resStatus:=resultStatus;
    End relegatedCountryAll;


   procedure relegatedCountrySeason(winId in PerformanceList11.win@site1%TYPE,
   lostId in PerformanceList11.lost@site1%TYPE,
   draw in PerformanceList11.draw@site1%TYPE,gf in PerformanceList11.gf@site1%TYPE,
   ga in PerformanceList11.ga@site1%TYPE,points in PerformanceList11.points@site1%TYPE,
   countryName Teamlist1.country@site1 %TYPE,
   seasonID Teamlist1.seasonID@site1 %TYPE,resStatus out varchar2)
    is
   flag number:=0;
   rootVal number :=0;
   kthRoot number;
   resultStatus varchar2(20);
    BEGIN

       if seasonID=1 then
               for R IN (select * from (select * from PerformanceList11@site1 
            union select * from PerformanceList12@site1) NATURAL  join Teamlist1@site1 
            where Teamlist1.country=countryName) LOOP

                  rootVal:=POWER((R.win-winId),2)+POWER((R.lost-lostId),2)+POWER((R.draw-draw),2)+POWER((R.gf-gf),2)+POWER((R.ga-ga),2)+POWER((R.points-points),2);
                 insert into siteTempResult values (R.teamID,SQRT(rootVal));

              End loop;
      End  if;

      if seasonID=2 then
               for R IN (select * from (select * from PerformanceList21
            union select * from PerformanceList22) NATURAL  join Teamlist2 
            where Teamlist2.country=countryName) LOOP

                  rootVal:=POWER((R.win-winId),2)+POWER((R.lost-lostId),2)+POWER((R.draw-draw),2)+POWER((R.gf-gf),2)+POWER((R.ga-ga),2)+POWER((R.points-points),2);
                 insert into siteTempResult values (R.teamID,SQRT(rootVal));

              End loop;
      End  if;

      if seasonID=3 then
               for R IN (select * from (select * from PerformanceList31 
            union select * from PerformanceList32) NATURAL  join Teamlist3 
            where Teamlist3.country=countryName) LOOP

                  rootVal:=POWER((R.win-winId),2)+POWER((R.lost-lostId),2)+POWER((R.draw-draw),2)+POWER((R.gf-gf),2)+POWER((R.ga-ga),2)+POWER((R.points-points),2);
                 insert into siteTempResult values (R.teamID,SQRT(rootVal));

              End loop;
      End  if;
       mypackProcedure.finding(TO_CHAR(seasonID),resultStatus);
      resStatus:=resultStatus;
    End relegatedCountrySeason;



   procedure insertTeam1(teamID in Teamlist1.teamID@site1%TYPE,winId in PerformanceList11.win@site1%TYPE,
   lostId in PerformanceList11.lost@site1%TYPE,draw in PerformanceList11.draw@site1%TYPE,
   gf in PerformanceList11.gf@site1%TYPE,ga in PerformanceList11.ga@site1%TYPE,
   points in PerformanceList11.points@site1%TYPE,rbStatus in RelegationBattle111.rbStatus@site1%TYPE)
   is

   perID PerformanceList11.perID@site1%TYPE;
   relID RelegationBattle111.relID@site1%TYPE;
    BEGIN
       perID:=teamID;
      relID:=teamID;
       if points<35 then
               insert into PerformanceList11@site1 values(perID,teamID,winId,lostId,draw,gf,ga,points);
            if 'YES'=UPPER(rbStatus) then
                insert into RelegationBattle111@site1 values(relID,perID,'Yes');
            else
                insert into RelegationBattle112@site1 values(relID,perID,'No');
            End if;
      else
               insert into PerformanceList12@site1 values(perID,teamID,winId,lostId,draw,gf,ga,points);
            if 'YES'=UPPER(rbStatus) then
                insert into RelegationBattle121@site1 values(relID,perID,'Yes');
            else
                insert into RelegationBattle122@site1 values(relID,perID,'No');
            End if;
      End  if;
    End insertTeam1;


   procedure insertTeam2(teamID in Teamlist1.teamID@site1%TYPE,winId in PerformanceList11.win@site1%TYPE,
   lostId in PerformanceList11.lost@site1%TYPE,draw in PerformanceList11.draw@site1%TYPE,
   gf in PerformanceList11.gf@site1%TYPE,ga in PerformanceList11.ga@site1%TYPE,
   points in PerformanceList11.points@site1%TYPE,rbStatus in RelegationBattle111.rbStatus@site1%TYPE)
   is

   perID PerformanceList11.perID@site1%TYPE;
   relID RelegationBattle111.relID@site1%TYPE;
    BEGIN
        perID:=teamID;
      relID:=teamID;
       if points<35 then
               insert into PerformanceList21 values(perID,teamID,winId,lostId,draw,gf,ga,points);
            if 'YES'=UPPER(rbStatus) then
                insert into RelegationBattle211 values(relID,perID,'Yes');
            else
                insert into RelegationBattle212 values(relID,perID,'No');
            End if;
      else
               insert into PerformanceList22 values(perID,teamID,winId,lostId,draw,gf,ga,points);
            if 'YES'=UPPER(rbStatus) then
                insert into RelegationBattle221 values(relID,perID,'Yes');
            else
                insert into RelegationBattle222 values(relID,perID,'No');
            End if;
      End  if;
    End insertTeam2;

   procedure insertTeam3(teamID in Teamlist1.teamID@site1%TYPE,winId in PerformanceList11.win@site1%TYPE,
   lostId in PerformanceList11.lost@site1%TYPE,draw in PerformanceList11.draw@site1%TYPE,
   gf in PerformanceList11.gf@site1%TYPE,ga in PerformanceList11.ga@site1%TYPE,
   points in PerformanceList11.points@site1%TYPE,rbStatus in RelegationBattle111.rbStatus@site1%TYPE)
   is

   perID PerformanceList11.perID@site1%TYPE;
   relID RelegationBattle111.relID@site1%TYPE;
    BEGIN
        perID:=teamID;
      relID:=teamID;
       if points<35 then
               insert into PerformanceList31 values(perID,teamID,winId,lostId,draw,gf,ga,points);
            if 'YES'=UPPER(rbStatus) then
                insert into RelegationBattle311 values(relID,perID,'Yes');
            else
                insert into RelegationBattle312 values(relID,perID,'No');
            End if;
      else
               insert into PerformanceList32 values(perID,teamID,winId,lostId,draw,gf,ga,points);
            if 'YES'=UPPER(rbStatus) then
                insert into RelegationBattle321 values(relID,perID,'Yes');
            else
                insert into RelegationBattle322 values(relID,perID,'No');
            End if;
      End  if;
    End insertTeam3;

    procedure UpdateRecornd(recIDUpdate  in RecordList.recID@site1%TYPE,
   teamNameUpdate in RecordList.teamName@site1%TYPE,countryUpdate  in RecordList.country@site1%TYPE,
   seasonIDUpdate  in RecordList.seasonID@site1%TYPE,winUpdate in RecordList.win@site1%TYPE,
   lostUpdate in RecordList.lost@site1%TYPE,
   drawUpdate  in RecordList.draw@site1%TYPE,gfUpdate in RecordList.gf@site1%TYPE,
   gaUpdate in RecordList.ga@site1%TYPE,
   pointsUpdate in RecordList.points@site1%TYPE,predictedStatusUpdate in RecordList.predictedStatus@site1%TYPE)
    is
   
   Error Exception;
   recID RecordList.recID@site1%TYPE;
    BEGIN
       select recID into recID from RecordList@site1 where recID=recIDUpdate;
      update siteRecordList set teamName=teamNameUpdate,country=countryUpdate,seasonID=seasonIDUpdate,
      win=winUpdate,lost=lostUpdate,draw=drawUpdate,gf=gfUpdate,
      ga=gaUpdate,points=pointsUpdate,predictedStatus=predictedStatusUpdate where recID=recIDUpdate;
   EXCEPTION
       when No_data_found then
           DBMS_OUTPUT.PUT_LINE('Invalid Record List ID to update.');
         
    End UpdateRecornd;


End mypackProcedure;
/






Accept X  char prompt "(Search/Insert/Update/History)|(England/Spain/Both/None)|(1/2/3/All/None)|(Yes/No/None)|(0/ID):"

DECLARE
    operationType varchar2(100):='&operationType';
   countrywise varchar2(100):='&countrywise';
   seasonwise varchar2(100):='&seasonwise';
   rbStatus RelegationBattle211.rbStatus%TYPE:='&relegationStatus';
   recIDUpdate RecordList.recID@site1%TYPE:=&recIDUpdate;
   teamName Teamlist1.teamName@site1%TYPE := '&teamname';
   countryname Teamlist1.country@site1%TYPE := '&countryname';
   teamID Teamlist1.teamID@site1%TYPE;
    seasonID Teamlist1.seasonID@site1%TYPE := &seasonID;
   winID PerformanceList11.win@site1%TYPE := &winID;
   drawID PerformanceList21.draw%TYPE := &drawID;
   lostID PerformanceList21.lost%TYPE := &lostID;
   gfID PerformanceList21.gf%TYPE := &gfID;
   gaID PerformanceList21.ga%TYPE := &gaID;
   pointsID PerformanceList21.points%TYPE := &pointsID;
    recID RecordList.recID@site1%TYPE;
    resultStatus varchar2(20);

   
   Error Exception;
   ErrorOption Exception;

BEGIN
    If ((seasonID<=0 or seasonID>3)or winID<=0 or drawID<=0 or lostID<=0 or gfID<=0 or  gaID<=0 
   or pointsID<=0 or recIDUpdate<0)   then
       raise Error;
   end if;
   If (('SEARCH'!=UPPER(operationType) and 'INSERT'!=UPPER(operationType) and 
   'UPDATE'!=UPPER(operationType) and 'HISTORY'!=UPPER(operationType)) and
       ('ENGLAND'!=UPPER(countrywise) and 'SPAIN'!=UPPER(countrywise) and 
      'BOTH'!=UPPER(countrywise) and 'NONE'!=UPPER(countrywise)) and
      ('1'!=UPPER(seasonwise) and '2'!=UPPER(seasonwise) and 
      '3'!=UPPER(seasonwise) and 'ALL'!=UPPER(seasonwise) and 'NONE'!=UPPER(seasonwise)) and
      ('YES'!=UPPER(rbStatus) and 'NO'!=UPPER(rbStatus) and 'NONE'!=UPPER(rbStatus))) then
       raise ErrorOption;
   end if;
   If ('ENGLAND'!=UPPER(countryname) and 'SPAIN'!=UPPER(countryname)) then
       raise Error;
   end if;
   

   if UPPER(operationType)='SEARCH' then
       select count(recID) into recID from RecordList@site1;
       recID:=recID+1;
       if UPPER(countrywise)='BOTH' then
        if UPPER(seasonwise)='ALL' then
              mypackProcedure.relegatedBothAll(winID,drawID,lostID,gfID,gaID,pointsID,resultStatus);
          elsif UPPER(seasonwise)='1' or UPPER(seasonwise)='2' or UPPER(seasonwise)='3'  then
              mypackProcedure.relegatedBothSeason(winID,drawID,lostID,gfID,gaID,pointsID,seasonwise,resultStatus);
          End if;
      elsif UPPER(countrywise)='SPAIN' or UPPER(countrywise)='ENGLAND' then
          if UPPER(seasonwise)='ALL' then
              mypackProcedure.relegatedCountryAll(winID,drawID,lostID,gfID,gaID,pointsID,countrywise,resultStatus);
          elsif UPPER(seasonwise)='1' or UPPER(seasonwise)='2' or UPPER(seasonwise)='3'  then
              mypackProcedure.relegatedCountrySeason(winID,drawID,lostID,gfID,gaID,pointsID,
            countrywise,seasonwise,resultStatus);
          End if;
      End  if;
      insert into siteRecordList values(recID,teamName,countryname,
      seasonID,winID,lostID,drawID,gfID,gaID,pointsID,resultStatus) ;
   Elsif UPPER(operationType)='INSERT' then
       select count(teamID) into teamID from (select * from Teamlist1@site1 
      union select * from Teamlist2 union select * from Teamlist3);
      teamID:=teamID+1;
       if seasonID=1 then
         insert into Teamlist1@site1 values(teamID,teamName,countryname,seasonID);
         mypackProcedure.insertTeam1(teamID,winID,lostID,drawID,gfID,gaID,pointsID,rbStatus);
      Elsif seasonID=2 then
         insert into Teamlist2 values(teamID,teamName,countryname,seasonID);
         mypackProcedure.insertTeam2(teamID,winID,lostID,drawID,gfID,gaID,pointsID,rbStatus);
      Else
         insert into Teamlist3 values(teamID,teamName,countryname,seasonID);
         mypackProcedure.insertTeam3(teamID,winID,lostID,drawID,gfID,gaID,pointsID,rbStatus);
      End if;
   Elsif UPPER(operationType)='UPDATE' then
       if recIDUpdate<1 then
          raise ErrorOption;
      end if;
       mypackProcedure.UpdateRecornd(recIDUpdate,teamName,countryname,seasonID,winID,lostID,drawID,gfID,gaID,pointsID,rbStatus);
   ELSE
       for R IN (select * from RecordList@site1) LOOP
         DBMS_OUTPUT.PUT_LINE('History Details :');
         DBMS_OUTPUT.PUT_LINE(R.recID||' '||R.teamName||' '||R.country||' '||R.seasonID||' '||R.win||' '||R.lost||' '||
         R.draw||' '||R.gf||' '||R.ga||' '||R.points||' '||R.predictedStatus);
      End loop;
   end if;

EXCEPTION
    when Error THEN
       DBMS_OUTPUT.PUT_LINE('Invalid Input.');
   when ErrorOption THEN
       DBMS_OUTPUT.PUT_LINE('Choose Options Accordingly.');

END;
/

--select * from siteRecordList;

/*
select * from RecordList;
select * from PerformanceList21;
select * from RelegationBattle211;
*/

commit;
