create database mytunes;
use mytunes;
CREATE TABLE cds(
      cd_id varchar(450) primary key not null, --cd unique id
      title text NOT NULL, --title of CD
      artist text NOT NULL, --artist whose CD it is or "various artists"
      producer text default NULL,
      year integer,
      contributor text --student number who contributed the data
      );
CREATE TABLE songs(
      song_id integer primary key identity(1,1) not null, --auto incrementing key
      title text NOT NULL, --title of song
      composer text NOT NULL, --person or persons who wrote the song
      cd_id text NOT NULL, --cd this song appears on
      track integer NOT NULL, --track number of the song on CD
      contributor text --student number who contributed the data
      );

--delete any previous data contributed by the same contributor
Delete FROM cds WHERE Convert(varchar,contributor)='198788905';
Delete FROM songs WHERE Convert(varchar,contributor)='198788905';

--insert CD1 info
Insert INTO cds VALUES ('198788905CD1', 'Return', 'IKON', 'B.I',2018,'198788905');

--insert CD1 songs
Insert INTO songs (title,composer,cd_id,track,contributor) 
VALUES ('Love Scenario', 'B.I,Bobby', '198788905CD1',1,'198788905');

Insert INTO songs (title,composer,cd_id,track,contributor) 
VALUES ('Beautiful', 'B.I,Bobby', '198788905CD1',2,'198788905');

Insert INTO songs (title,composer,cd_id,track,contributor) 
VALUES ('One and Only', 'B.I', '198788905CD1',3,'198788905');

Insert INTO songs (title,composer,cd_id,track,contributor) 
VALUES ('Jerk', 'B.I,Bobby', '198788905CD1',4,'198788905');

Insert INTO songs (title,composer,cd_id,track,contributor) 
VALUES ('Best Friend', 'B.I', '198788905CD1',5,'198788905');

Insert INTO songs (title,composer,cd_id,track,contributor) 
VALUES ('Everything', 'B.I,Bobby', '198788905CD1',6,'198788905');

Insert INTO songs (title,composer,cd_id,track,contributor) 
VALUES ('Hug Me', 'B.I,Bobby', '198788905CD1',7,'198788905');

Insert INTO songs (title,composer,cd_id,track,contributor) 
VALUES ('Don''t Forget', 'B.I,Bobby', '198788905CD1',8,'198788905');

--insert CD2 info
Insert INTO cds VALUES ('198788905CD2', 'Peace Is The Mission', 'Major Lazer','Diplo , Boaz Van',2015,'198788905');

--insert CD2 songs
Insert INTO songs (title,composer,cd_id,track,contributor) 
VALUES ('Be Together', 'Pentz,Wild Belle', '198788905CD2',1,'198788905');

Insert INTO songs (title,composer,cd_id,track,contributor) 
VALUES ('Too Original', 'Pentz,Ellinor Olovsdotter', '198788905CD2',2,'198788905');

Insert INTO songs (title,composer,cd_id,track,contributor) 
VALUES ('Blaze Up the Fire', 'Pentz,Jamar McNaughton Jr', '198788905CD2',3,'198788905');

Insert INTO songs (title,composer,cd_id,track,contributor) 
VALUES ('Lean On', 'Pentz,Orsted', '198788905CD2',4,'198788905');

Insert INTO songs (title,composer,cd_id,track,contributor) 
VALUES ('Powerful', 'Pentz,Maxime Picard', '198788905CD2',5,'198788905');

Insert INTO songs (title,composer,cd_id,track,contributor) 
VALUES ('Light It Up', 'Pentz,Nailah Thorbourne', '198788905CD2',6,'198788905');

Insert INTO songs (title,composer,cd_id,track,contributor) 
VALUES ('Roll The Bass', 'Pentz,Boaz de Jong', '198788905CD2',7,'198788905');

Insert INTO songs (title,composer,cd_id,track,contributor) 
VALUES ('Night Riders', 'Pentz,Tauheed Epps', '198788905CD2',8,'198788905');

Insert INTO songs (title,composer,cd_id,track,contributor) 
VALUES ('All My Love', 'Pentz,Orsted', '198788905CD2',9,'198788905');
