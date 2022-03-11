clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;


/*********************************************
**************  DATA TABLE   *****************
*********************************************/



drop table Teamlist1 CASCADE CONSTRAINTS;
drop table PerformanceList11 CASCADE CONSTRAINTS;
drop table PerformanceList12 CASCADE CONSTRAINTS;
drop table RelegationBattle111 CASCADE CONSTRAINTS;
drop table RelegationBattle112 CASCADE CONSTRAINTS;
drop table RelegationBattle121 CASCADE CONSTRAINTS;
drop table RelegationBattle122 CASCADE CONSTRAINTS;
drop table tempResult CASCADE CONSTRAINTS;
drop table RecordList CASCADE CONSTRAINTS;




create table Teamlist1(
	teamID int,
	teamName VARCHAR2(50),
	country VARCHAR2(50),
	seasonID int,
	PRIMARY KEY (teamID));



create table PerformanceList11(
	perID int,
	teamID int,
	win int,
	lost int,
	draw int,
	gf int,
	ga int,
	points int,
	PRIMARY KEY (perID),
	FOREIGN KEY (teamID) REFERENCES Teamlist1 (teamID));

create table PerformanceList12(
	perID int,
	teamID int,
	win int,
	lost int,
	draw int,
	gf int,
	ga int,
	points int,
	PRIMARY KEY (perID),
	FOREIGN KEY (teamID) REFERENCES Teamlist1 (teamID));




create table RelegationBattle111(
	relID int,
	perID int,
	rbStatus VARCHAR2(50),
	PRIMARY KEY (relID),
	FOREIGN KEY (perID) REFERENCES PerformanceList11 (perID));


create table RelegationBattle112(
	relID int,
	perID int,
	rbStatus VARCHAR2(50),
	PRIMARY KEY (relID),
	FOREIGN KEY (perID) REFERENCES PerformanceList11 (perID));


create table RelegationBattle121(
	relID int,
	perID int,
	rbStatus VARCHAR2(50),
	PRIMARY KEY (relID),
	FOREIGN KEY (perID) REFERENCES PerformanceList12 (perID));


create table RelegationBattle122(
	relID int,
	perID int,
	rbStatus VARCHAR2(50),
	PRIMARY KEY (relID),
	FOREIGN KEY (perID) REFERENCES PerformanceList12 (perID));



create table tempResult(
	teamID int,
	resultValue number,
	PRIMARY KEY (teamID));

create table RecordList(
	recID int,
	teamName VARCHAR2(50),
	country VARCHAR2(50),
	seasonID int,
	win int,
	lost int,
	draw int,
	gf int,
	ga int,
	points int,
	predictedStatus VARCHAR2(50),
	PRIMARY KEY (recID));






insert into Teamlist1(teamID, teamName,country, seasonID) values (23,'Brighton','England ',1);
insert into Teamlist1(teamID, teamName,country, seasonID) values (19,'West Ham','England ',1);
insert into Teamlist1(teamID, teamName,country, seasonID) values (15,'Aston Villa','England ',1);
insert into Teamlist1(teamID, teamName,country, seasonID) values (33,'Real Betis','Spain ',1);
insert into Teamlist1(teamID, teamName,country, seasonID) values (4,'Alaves','Spain ',1);
insert into Teamlist1(teamID, teamName,country, seasonID) values (25,'Celta Vigo','Spain ',1);
insert into Teamlist1(teamID, teamName,country, seasonID) values (12,'Norwich City','England ',1);
insert into Teamlist1(teamID, teamName,country, seasonID) values (29,'Leganes','Spain ',1);
insert into Teamlist1(teamID, teamName,country, seasonID) values (7,'Mallorca','Spain ',1);
insert into Teamlist1(teamID, teamName,country, seasonID) values (14,'Bournemouth','England ',1);
insert into Teamlist1(teamID, teamName,country, seasonID) values (20,'Espanyol','Spain ',1);
insert into Teamlist1(teamID, teamName,country, seasonID) values (21,'Watford','England ',1);






insert into PerformanceList11(perID, teamID,win, lost,draw,gf,ga,points) values (4,14,9,7,22,40,65,34);
insert into PerformanceList11(perID, teamID,win, lost,draw,gf,ga,points) values (5,21,8,10,20,36,64,34);
insert into PerformanceList11(perID, teamID,win, lost,draw,gf,ga,points) values (6,12,5,6,27,26,75,21);
insert into PerformanceList11(perID, teamID,win, lost,draw,gf,ga,points) values (17,7,9,6,23,40,65,33);
insert into PerformanceList11(perID, teamID,win, lost,draw,gf,ga,points) values (18,20,5,10,23,27,58,25);



insert into PerformanceList12(perID, teamID,win, lost,draw,gf,ga,points) values (2,19,10,9,19,49,62,39);
insert into PerformanceList12(perID, teamID,win, lost,draw,gf,ga,points) values (1,23,9,14,15,39,54,41);
insert into PerformanceList12(perID, teamID,win, lost,draw,gf,ga,points) values (3,15,9,8,21,41,67,35);
insert into PerformanceList12(perID, teamID,win, lost,draw,gf,ga,points) values (13,33,10,11,17,48,6,41);
insert into PerformanceList12(perID, teamID,win, lost,draw,gf,ga,points) values (14,4,10,9,19,34,59,39);
insert into PerformanceList12(perID, teamID,win, lost,draw,gf,ga,points) values (15,25,7,16,15,37,49,37);
insert into PerformanceList12(perID, teamID,win, lost,draw,gf,ga,points) values (16,29,8,12,18,30,51,36);




insert into RelegationBattle111(relID, perID,rbStatus) values (11,4,'Yes');
insert into RelegationBattle111(relID, perID,rbStatus) values (27,18,'Yes');
insert into RelegationBattle111(relID, perID,rbStatus) values (12,17,'Yes');
insert into RelegationBattle111(relID, perID,rbStatus) values (13,6,'Yes');
insert into RelegationBattle111(relID, perID,rbStatus) values (33,5,'Yes');


insert into RelegationBattle121(relID, perID,rbStatus) values (14,16,'Yes');

insert into RelegationBattle122(relID, perID,rbStatus) values (4,1,'No');
insert into RelegationBattle122(relID, perID,rbStatus) values (19,2,'No');
insert into RelegationBattle122(relID, perID,rbStatus) values (34,13,'No');
insert into RelegationBattle122(relID, perID,rbStatus) values (18,3,'No');
insert into RelegationBattle122(relID, perID,rbStatus) values (35,15,'No');
insert into RelegationBattle122(relID, perID,rbStatus) values (20,14,'No');



insert into RecordList(recID, teamName,country, seasonID,win,lost,draw,gf,ga,points,predictedStatus) values (1,'Brighton','England ',1,10,9,19,49,62,39,'No');
insert into RecordList(recID, teamName,country, seasonID,win,lost,draw,gf,ga,points,predictedStatus) values (2,'Getafe','Spain ',2,9,14,15,40,47,41,'No');
insert into RecordList(recID, teamName,country, seasonID,win,lost,draw,gf,ga,points,predictedStatus) values (3,'Huesca','Spain ',3,8,12,18,30,51,36,'Yes');





/*********************************************
**************  Trigger  *****************
*********************************************/

create or replace trigger triggerResult
after insert
on tempResult
for each row

BEGIN
    DBMS_OUTPUT.PUT_LINE('Inserted On TempResult Table.');
End;
/

create or replace trigger triggerRecordListUpdate
after update
of recID
on RecordList

DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('Record List has been Updated');
End;
/

create or replace trigger triggerRecordListInsert
after insert
on RecordList

DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('New row has been inserted into Record List.');
End;
/


/*********************************************
**************  Package Head   *****************
*********************************************/

-------------  Function  --------------



create or replace package mypackFunction AS

    function Relegation1(perID  in RelegationBattle111.perID  %TYPE)
	return number;

	function Relegation2(perID  in RelegationBattle111.perID  %TYPE)
	return number;

	function Relegation3(perID  in RelegationBattle111.perID  %TYPE)
	return number;

    function Relegation4(perID  in RelegationBattle111.perID  %TYPE)
	return number;

	function Relegation5(perID  in RelegationBattle111.perID  %TYPE)
	return number;

	function Relegation6(perID  in RelegationBattle111.perID  %TYPE)
	return number;

    function findingStatus(teamID in Teamlist1.teamID %TYPE,Status in varchar2)
	return number;

End mypackFunction;
/



-------------  Procerdure  --------------

create or replace package mypackProcedure AS

  	procedure finding(Status in varchar2,resultStatus out varchar2);

	procedure relegatedBothAll(winId in PerformanceList11.win%TYPE,lostId in PerformanceList11.lost%TYPE,
	draw in PerformanceList11.draw%TYPE,gf in PerformanceList11.gf%TYPE,ga in PerformanceList11.ga%TYPE,
	points in PerformanceList11.points%TYPE,resStatus out varchar2);


	procedure relegatedBothSeason(winId in PerformanceList11.win%TYPE,lostId in PerformanceList11.lost%TYPE,
	draw in PerformanceList11.draw%TYPE,
	gf in PerformanceList11.gf%TYPE,ga in PerformanceList11.ga%TYPE,points in PerformanceList11.points%TYPE,
	seasonID Teamlist1.seasonID %TYPE,
	resStatus out varchar2);

    procedure relegatedCountryAll(winId in PerformanceList11.win%TYPE,lostId in PerformanceList11.lost%TYPE,
	draw in PerformanceList11.draw%TYPE,
	gf in PerformanceList11.gf%TYPE,ga in PerformanceList11.ga%TYPE,points in PerformanceList11.points%TYPE,
	countryName Teamlist1.country %TYPE,
	resStatus out varchar2);

	procedure relegatedCountrySeason(winId in PerformanceList11.win%TYPE,lostId in PerformanceList11.lost%TYPE,
	draw in PerformanceList11.draw%TYPE,
	gf in PerformanceList11.gf%TYPE,ga in PerformanceList11.ga%TYPE,points in PerformanceList11.points%TYPE,
	countryName Teamlist1.country %TYPE,
	seasonID Teamlist1.seasonID %TYPE,resStatus out varchar2);

	procedure insertTeam1(teamID in Teamlist1.teamID %TYPE,winId in PerformanceList11.win%TYPE,lostId in PerformanceList11.lost%TYPE,
	draw in PerformanceList11.draw%TYPE,
	gf in PerformanceList11.gf%TYPE,ga in PerformanceList11.ga%TYPE,points in PerformanceList11.points%TYPE,
	rbStatus in RelegationBattle111.rbStatus%TYPE);

	procedure insertTeam2(teamID in Teamlist1.teamID %TYPE,winId in PerformanceList11.win%TYPE,
	lostId in PerformanceList11.lost%TYPE,draw in PerformanceList11.draw%TYPE,
	gf in PerformanceList11.gf%TYPE,ga in PerformanceList11.ga%TYPE,points in PerformanceList11.points%TYPE,
	rbStatus in RelegationBattle111.rbStatus%TYPE);

	procedure insertTeam3(teamID in Teamlist1.teamID %TYPE,winId in PerformanceList11.win%TYPE,
	lostId in PerformanceList11.lost%TYPE,draw in PerformanceList11.draw%TYPE,
	gf in PerformanceList11.gf%TYPE,ga in PerformanceList11.ga%TYPE,points in PerformanceList11.points%TYPE,
	rbStatus in RelegationBattle111.rbStatus%TYPE);

	procedure UpdateRecornd(recIDUpdate  in RecordList.recID%TYPE,teamNameUpdate in RecordList.teamName%TYPE,
	countryUpdate  in RecordList.country%TYPE,
	seasonIDUpdate  in RecordList.seasonID%TYPE,winUpdate in RecordList.win%TYPE,lostUpdate in RecordList.lost%TYPE,
	drawUpdate  in RecordList.draw%TYPE,gfUpdate in RecordList.gf%TYPE,gaUpdate in RecordList.ga%TYPE,
	pointsUpdate in RecordList.points%TYPE,predictedStatusUpdate in RecordList.predictedStatus%TYPE);


End mypackProcedure;
/



/*********************************************
**************  Package Body   *****************
*********************************************/

    -------------  Function  --------------


create or replace package body mypackFunction AS

    function Relegation1(perID  in RelegationBattle111.perID  %TYPE)
    return number
    is
    BEGIN
        for R IN (select * from RelegationBattle111) LOOP
            if perID=R.perID THEN
			    return 1;
		    End if;
	    End loop;

		for R IN (select * from RelegationBattle112) LOOP
            if perID=R.perID THEN
			    return 0;
		    End if;
	    End loop;
    End Relegation1;

	function Relegation2(perID  in RelegationBattle111.perID  %TYPE)
    return number
    is
    BEGIN
        for R IN (select * from RelegationBattle121) LOOP
            if perID=R.perID THEN
			    return 1;
		    End if;
	    End loop;

		for R IN (select * from RelegationBattle122) LOOP
            if perID=R.perID THEN
			    return 0;
		    End if;
	    End loop;
    End Relegation2;

	function Relegation3(perID  in RelegationBattle111.perID  %TYPE)
    return number
    is
    BEGIN
        for R IN (select * from RelegationBattle211@site2) LOOP
            if perID=R.perID THEN
			    return 1;
		    End if;
	    End loop;

		for R IN (select * from RelegationBattle212@site2) LOOP
            if perID=R.perID THEN
			    return 0;
		    End if;
	    End loop;
    End Relegation3;

	function Relegation4(perID  in RelegationBattle111.perID  %TYPE)
    return number
    is
    BEGIN
        for R IN (select * from RelegationBattle221@site2) LOOP
            if perID=R.perID THEN
			    return 1;
		    End if;
	    End loop;

		for R IN (select * from RelegationBattle222@site2) LOOP
            if perID=R.perID THEN
			    return 0;
		    End if;
	    End loop;
    End Relegation4;

	function Relegation5(perID  in RelegationBattle111.perID  %TYPE)
    return number
    is
    BEGIN
        for R IN (select * from RelegationBattle311@site2) LOOP
            if perID=R.perID THEN
			    return 1;
		    End if;
	    End loop;

		for R IN (select * from RelegationBattle312@site2) LOOP
            if perID=R.perID THEN
			    return 0;
		    End if;
	    End loop;
    End Relegation5;

	function Relegation6(perID  in RelegationBattle111.perID  %TYPE)
    return number
    is
    BEGIN
        for R IN (select * from RelegationBattle321@site2) LOOP
            if perID=R.perID THEN
			    return 1;
		    End if;
	    End loop;

		for R IN (select * from RelegationBattle322@site2) LOOP
            if perID=R.perID THEN
			    return 0;
		    End if;
	    End loop;
    End Relegation6;



    function findingStatus(teamID in Teamlist1.teamID %TYPE,Status in varchar2)
    return number
    is
	countTimes number:=0;
	seasonID Teamlist1.seasonID %TYPE:=-1;
	perID PerformanceList11.perID%TYPE;
	points PerformanceList11.points%TYPE;
	flag number:=0;

    BEGIN
	    if Status='Both' or Status='1' then
            for R IN (select * from Teamlist1) LOOP
                if teamID=R.teamID THEN
				    select perID,points into perID,points from (
			        select perID,points from PerformanceList11 where PerformanceList11.teamID=R.teamID
				    union
                    select perID,points from PerformanceList12 where PerformanceList12.teamID=R.teamID);

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
            for R IN (select * from Teamlist2@site2) LOOP

                if teamID=R.teamID THEN
				    select perID,points into perID,points from (
			        select perID,points from PerformanceList21@site2 where PerformanceList21.teamID@site2=R.teamID
				    union
                    select perID,points from PerformanceList22@site2 where PerformanceList22.teamID@site2=R.teamID);


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
            for R IN (select * from Teamlist3@site2) LOOP
                if teamID=R.teamID THEN
				    select perID,points into perID,points from (
			        select perID,points from PerformanceList31@site2 where PerformanceList31.teamID@site2=R.teamID
				    union
                    select perID,points from PerformanceList32@site2 where PerformanceList32.teamID@site2=R.teamID);

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
	    select count(*) into kthRoot from tempResult;
		kthRoot:=CEIL(SQRT(kthRoot));

		if mod(kthRoot,2)=0  then
		    if kthRoot>0 then
		        kthRoot:=kthRoot-1;
			else
			    kthRoot:=kthRoot+1;
			End if;
	    End if;

        for R IN (select * from tempResult order by resultValue asc) LOOP
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


    procedure relegatedBothAll(winId in PerformanceList11.win%TYPE,lostId in PerformanceList11.lost%TYPE,
	draw in PerformanceList11.draw%TYPE,gf in PerformanceList11.gf%TYPE,ga in PerformanceList11.ga%TYPE,
	points in PerformanceList11.points%TYPE,resStatus out varchar2)
    is
	flag number:=0;
	rootVal number :=0;
	resultStatus varchar2(20);
    BEGIN

	    for R IN (select * from PerformanceList11 union select * from PerformanceList12 union
                  select * from PerformanceList21@site2 union select * from PerformanceList22@site2 union
                  select * from PerformanceList31@site2 union select * from PerformanceList32@site2) LOOP

				rootVal:=POWER((R.win-winId),2)+POWER((R.lost-lostId),2)+POWER((R.draw-draw),2)+POWER((R.gf-gf),2)+POWER((R.ga-ga),2)+POWER((R.points-points),2);

				insert into tempResult values (R.teamID,SQRT(rootVal));
		End loop;
	    mypackProcedure.finding('Both',resultStatus);
	    resStatus:=resultStatus;
    End relegatedBothAll;



	procedure relegatedBothSeason(winId in PerformanceList11.win%TYPE,lostId in PerformanceList11.lost%TYPE,draw in PerformanceList11.draw%TYPE,
	gf in PerformanceList11.gf%TYPE,ga in PerformanceList11.ga%TYPE,points in PerformanceList11.points%TYPE,seasonID Teamlist1.seasonID %TYPE,
	resStatus out varchar2)
    is
	flag number:=0;
	rootVal number :=0;
	resultStatus varchar2(20);
    BEGIN

		if seasonID=1 then
	            for R IN (select * from (select * from PerformanceList11 union select * from PerformanceList12)
				NATURAL  join Teamlist1 ) LOOP

		            rootVal:=POWER((R.win-winId),2)+POWER((R.lost-lostId),2)+POWER((R.draw-draw),2)+POWER((R.gf-gf),2)+POWER((R.ga-ga),2)+POWER((R.points-points),2);
			        insert into tempResult values (R.teamID,SQRT(rootVal));

		        End loop;
		End  if;

		if seasonID=2 then
	            for R IN (select * from (select * from PerformanceList21@site2 union select * from PerformanceList22@site2)
				NATURAL  join Teamlist2@site2 ) LOOP

		            rootVal:=POWER((R.win-winId),2)+POWER((R.lost-lostId),2)+POWER((R.draw-draw),2)+POWER((R.gf-gf),2)+POWER((R.ga-ga),2)+POWER((R.points-points),2);
			        insert into tempResult values (R.teamID,SQRT(rootVal));

		        End loop;
		End  if;

		if seasonID=3 then
	            for R IN (select * from (select * from PerformanceList31@site2 union select * from PerformanceList32@site2)
				NATURAL  join Teamlist3@site2 ) LOOP

		            rootVal:=POWER((R.win-winId),2)+POWER((R.lost-lostId),2)+POWER((R.draw-draw),2)+POWER((R.gf-gf),2)+POWER((R.ga-ga),2)+POWER((R.points-points),2);
			        insert into tempResult values (R.teamID,SQRT(rootVal));

		        End loop;
		End  if;
	    mypackProcedure.finding(TO_CHAR(seasonID),resultStatus);
		resStatus:=resultStatus;

    End relegatedBothSeason;


	procedure relegatedCountryAll(winId in PerformanceList11.win%TYPE,lostId in PerformanceList11.lost%TYPE,
	draw in PerformanceList11.draw%TYPE,
	gf in PerformanceList11.gf%TYPE,ga in PerformanceList11.ga%TYPE,points in PerformanceList11.points%TYPE,
	countryName Teamlist1.country %TYPE,
	resStatus out varchar2)
    is
	flag number:=0;
	rootVal number :=0;
	resultStatus varchar2(20);
    BEGIN

	    for R IN
	   ((select * from (select * from PerformanceList11 union select * from PerformanceList12) NATURAL  join Teamlist1
	     where Teamlist1.country=countryName) union
        (select * from (select * from PerformanceList21@site2 union select * from PerformanceList22@site2) NATURAL  join Teamlist2@site2
		where Teamlist2.country=countryName) union
        (select * from (select * from PerformanceList31@site2 union select * from PerformanceList32@site2) NATURAL  join Teamlist3@site2
		where Teamlist3.country=countryName) ) LOOP

			rootVal:=POWER((R.win-winId),2)+POWER((R.lost-lostId),2)+POWER((R.draw-draw),2)+POWER((R.gf-gf),2)+POWER((R.ga-ga),2)+POWER((R.points-points),2);
			insert into tempResult values (R.teamID,SQRT(rootVal));

		End loop;
	    mypackProcedure.finding('Both',resultStatus);
	    resStatus:=resultStatus;
    End relegatedCountryAll;


	procedure relegatedCountrySeason(winId in PerformanceList11.win%TYPE,lostId in PerformanceList11.lost%TYPE,
	draw in PerformanceList11.draw%TYPE,
	gf in PerformanceList11.gf%TYPE,ga in PerformanceList11.ga%TYPE,points in PerformanceList11.points%TYPE,
	countryName Teamlist1.country %TYPE,
	seasonID Teamlist1.seasonID %TYPE,resStatus out varchar2)
    is
	flag number:=0;
	rootVal number :=0;
	kthRoot number;
	resultStatus varchar2(20);
    BEGIN

	    if seasonID=1 then
	            for R IN (select * from (select * from PerformanceList11 union select * from PerformanceList12)
				NATURAL  join Teamlist1 where Teamlist1.country=countryName) LOOP

		            rootVal:=POWER((R.win-winId),2)+POWER((R.lost-lostId),2)+POWER((R.draw-draw),2)+POWER((R.gf-gf),2)+POWER((R.ga-ga),2)+POWER((R.points-points),2);
			        insert into tempResult values (R.teamID,SQRT(rootVal));

		        End loop;
		End  if;

		if seasonID=2 then
	            for R IN (select * from (select * from PerformanceList21@site2 union select * from PerformanceList22@site2)
				NATURAL  join Teamlist2@site2 where Teamlist2.country=countryName) LOOP

		            rootVal:=POWER((R.win-winId),2)+POWER((R.lost-lostId),2)+POWER((R.draw-draw),2)+POWER((R.gf-gf),2)+POWER((R.ga-ga),2)+POWER((R.points-points),2);
			        insert into tempResult values (R.teamID,SQRT(rootVal));

		        End loop;
		End  if;

		if seasonID=3 then
	            for R IN (select * from (select * from PerformanceList31@site2 union select * from PerformanceList32@site2)
				NATURAL  join Teamlist3@site2 where Teamlist3.country=countryName) LOOP

		            rootVal:=POWER((R.win-winId),2)+POWER((R.lost-lostId),2)+POWER((R.draw-draw),2)+POWER((R.gf-gf),2)+POWER((R.ga-ga),2)+POWER((R.points-points),2);
			        insert into tempResult values (R.teamID,SQRT(rootVal));

		        End loop;
		End  if;
	    mypackProcedure.finding(TO_CHAR(seasonID),resultStatus);
		resStatus:=resultStatus;
    End relegatedCountrySeason;



	procedure insertTeam1(teamID in Teamlist1.teamID %TYPE,winId in PerformanceList11.win%TYPE,
	lostId in PerformanceList11.lost%TYPE,draw in PerformanceList11.draw%TYPE,
	gf in PerformanceList11.gf%TYPE,ga in PerformanceList11.ga%TYPE,
	points in PerformanceList11.points%TYPE,rbStatus in RelegationBattle111.rbStatus%TYPE)
	is

	perID PerformanceList11.perID%TYPE;
	relID RelegationBattle111.relID%TYPE;
    BEGIN
	    perID:=teamID;
		relID:=teamID;
	    if points<35 then
	            insert into PerformanceList11 values(perID,teamID,winId,lostId,draw,gf,ga,points);
				if 'YES'=UPPER(rbStatus) then
				    insert into RelegationBattle111 values(relID,perID,'Yes');
				else
				    insert into RelegationBattle112 values(relID,perID,'No');
				End if;
		else
	            insert into PerformanceList12 values(perID,teamID,winId,lostId,draw,gf,ga,points);
				if 'YES'=UPPER(rbStatus) then
				    insert into RelegationBattle121 values(relID,perID,'Yes');
				else
				    insert into RelegationBattle122 values(relID,perID,'No');
				End if;
		End  if;
    End insertTeam1;


	procedure insertTeam2(teamID in Teamlist1.teamID %TYPE,winId in PerformanceList11.win%TYPE,
	lostId in PerformanceList11.lost%TYPE,draw in PerformanceList11.draw%TYPE,
	gf in PerformanceList11.gf%TYPE,ga in PerformanceList11.ga%TYPE,
	points in PerformanceList11.points%TYPE,rbStatus in RelegationBattle111.rbStatus%TYPE)
	is

	perID PerformanceList11.perID%TYPE;
	relID RelegationBattle111.relID%TYPE;
    BEGIN
        perID:=teamID;
		relID:=teamID;
	    if points<35 then
	            insert into PerformanceList21@site2 values(perID,teamID,winId,lostId,draw,gf,ga,points);
				if 'YES'=UPPER(rbStatus) then
				    insert into RelegationBattle211@site2 values(relID,perID,'Yes');
				else
				    insert into RelegationBattle212@site2 values(relID,perID,'No');
				End if;
		else
	            insert into PerformanceList22@site2 values(perID,teamID,winId,lostId,draw,gf,ga,points);
				if 'YES'=UPPER(rbStatus) then
				    insert into RelegationBattle221@site2 values(relID,perID,'Yes');
				else
				    insert into RelegationBattle222@site2 values(relID,perID,'No');
				End if;
		End  if;
    End insertTeam2;

	procedure insertTeam3(teamID in Teamlist1.teamID %TYPE,winId in PerformanceList11.win%TYPE,
	lostId in PerformanceList11.lost%TYPE,draw in PerformanceList11.draw%TYPE,
	gf in PerformanceList11.gf%TYPE,ga in PerformanceList11.ga%TYPE,
	points in PerformanceList11.points%TYPE,rbStatus in RelegationBattle111.rbStatus%TYPE)
	is

	perID PerformanceList11.perID%TYPE;
	relID RelegationBattle111.relID%TYPE;
    BEGIN
        perID:=teamID;
		relID:=teamID;
	    if points<35 then
	            insert into PerformanceList31@site2 values(perID,teamID,winId,lostId,draw,gf,ga,points);
				if 'YES'=UPPER(rbStatus) then
				    insert into RelegationBattle311@site2 values(relID,perID,'Yes');
				else
				    insert into RelegationBattle312@site2 values(relID,perID,'No');
				End if;
		else
	            insert into PerformanceList32@site2 values(perID,teamID,winId,lostId,draw,gf,ga,points);
				if 'YES'=UPPER(rbStatus) then
				    insert into RelegationBattle321@site2 values(relID,perID,'Yes');
				else
				    insert into RelegationBattle322@site2 values(relID,perID,'No');
				End if;
		End  if;
    End insertTeam3;

   procedure UpdateRecornd(recIDUpdate  in RecordList.recID%TYPE,teamNameUpdate in RecordList.teamName%TYPE,countryUpdate  in RecordList.country%TYPE,
	seasonIDUpdate  in RecordList.seasonID%TYPE,winUpdate in RecordList.win%TYPE,lostUpdate in RecordList.lost%TYPE,
	drawUpdate  in RecordList.draw%TYPE,gfUpdate in RecordList.gf%TYPE,gaUpdate in RecordList.ga%TYPE,
	pointsUpdate in RecordList.points%TYPE,predictedStatusUpdate in RecordList.predictedStatus%TYPE)
    is

	Error Exception;
	recID RecordList.recID%TYPE;
    BEGIN
	    select recID into recID from RecordList where recID=recIDUpdate;
		update RecordList set teamName=teamNameUpdate,country=countryUpdate,seasonID=seasonIDUpdate,
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
	rbStatus RelegationBattle111.rbStatus%TYPE:='&relegationStatus';
	recIDUpdate RecordList.recID%TYPE:=&recIDUpdate;
	teamName Teamlist1.teamName%TYPE := '&teamname';
	countryname Teamlist1.country%TYPE := '&countryname';
	teamID Teamlist1.teamID%TYPE;
    seasonID Teamlist1.seasonID%TYPE := &seasonID;
	winID PerformanceList11.win%TYPE := &winID;
	drawID PerformanceList11.draw%TYPE := &drawID;
	lostID PerformanceList11.lost%TYPE := &lostID;
	gfID PerformanceList11.gf%TYPE := &gfID;
	gaID PerformanceList11.ga%TYPE := &gaID;
	pointsID PerformanceList11.points%TYPE := &pointsID;
    recID RecordList.recID%TYPE;
    resultStatus varchar2(20);


	Error Exception;
	ErrorOption Exception;

BEGIN
    If ((seasonID<=0 or seasonID>3)or winID<=0 or drawID<=0 or lostID<=0 or gfID<=0 or  gaID<=0 or pointsID<=0 or recIDUpdate<0)   then
	    raise Error;
	end if;
	If (('SEARCH'!=UPPER(operationType) and 'INSERT'!=UPPER(operationType) and 'UPDATE'!=UPPER(operationType) and 'HISTORY'!=UPPER(operationType)) and
	    ('ENGLAND'!=UPPER(countrywise) and 'SPAIN'!=UPPER(countrywise) and 'BOTH'!=UPPER(countrywise) and 'NONE'!=UPPER(countrywise)) and
		('1'!=UPPER(seasonwise) and '2'!=UPPER(seasonwise) and '3'!=UPPER(seasonwise) and 'ALL'!=UPPER(seasonwise) and 'NONE'!=UPPER(seasonwise)) and
		('YES'!=UPPER(rbStatus) and 'NO'!=UPPER(rbStatus) and 'NONE'!=UPPER(rbStatus))) then
	    raise ErrorOption;
	end if;
	If ('ENGLAND'!=UPPER(countryname) and 'SPAIN'!=UPPER(countryname)) then
	    raise Error;
	end if;


	if UPPER(operationType)='SEARCH' then
	    select count(recID) into recID from RecordList;
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
		        mypackProcedure.relegatedCountrySeason(winID,drawID,lostID,gfID,gaID,pointsID,countrywise,seasonwise,resultStatus);
		    End if;
		End  if;
		insert into RecordList values(recID,teamName,countryname,seasonID,winID,lostID,drawID,gfID,gaID,pointsID,resultStatus) ;
	Elsif UPPER(operationType)='INSERT' then
	    select count(teamID) into teamID from (select * from Teamlist1 union select * from Teamlist2@site2 union select * from Teamlist3@site2);
		teamID:=teamID+1;
	    if seasonID=1 then
			insert into Teamlist1 values(teamID,teamName,countryname,seasonID);
			mypackProcedure.insertTeam1(teamID,winID,lostID,drawID,gfID,gaID,pointsID,rbStatus);
		Elsif seasonID=2 then
			insert into Teamlist2@site2 values(teamID,teamName,countryname,seasonID);
			mypackProcedure.insertTeam2(teamID,winID,lostID,drawID,gfID,gaID,pointsID,rbStatus);
		Else
			insert into Teamlist3@site2 values(teamID,teamName,countryname,seasonID);
			mypackProcedure.insertTeam3(teamID,winID,lostID,drawID,gfID,gaID,pointsID,rbStatus);
		End if;
	Elsif UPPER(operationType)='UPDATE' then
	    if recIDUpdate<1 then
		    raise ErrorOption;
		end if;
	    mypackProcedure.UpdateRecornd(recIDUpdate,teamName,countryname,seasonID,winID,lostID,drawID,gfID,gaID,pointsID,rbStatus);
	ELSE
	    for R IN (select * from RecordList) LOOP
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

--select * from RecordList;

/*
select * from RecordList;
select * from PerformanceList21;
select * from RelegationBattle211;
*/

commit;
