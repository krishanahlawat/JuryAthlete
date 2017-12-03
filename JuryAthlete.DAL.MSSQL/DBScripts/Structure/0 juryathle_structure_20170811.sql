/*

SELECT 'DROP TABLE ' + Name FROM Sys.Objects WHERE TYpe = 'U' ORDER BY Name

SELECT '"'+ Lower(Name) +'",' FROM sys.Objects WHERE Type ='U' AND 
Name NOT IN (
select DISTINCT t.name as TableWithForeignKey     
from sys.foreign_key_columns as fk
inner join sys.tables as t on fk.parent_object_id = t.object_id
inner join sys.columns as c on fk.parent_object_id = c.object_id and fk.parent_column_id = c.column_id)
 ORDER BY Name


  SELECT '"'+ LOWER(   OBJECT_NAME(OBJECT_ID))+'",' AS TABLENAME, 
             NAME AS COLUMNNAME, 
             SEED_VALUE, 
             INCREMENT_VALUE, 
             LAST_VALUE, 
             IS_NOT_FOR_REPLICATION 
    FROM     SYS.IDENTITY_COLUMNS 

*/

--CREATE TABLE Jubilaires 
--(
--	nom varchar(50)
--	,prenom varchar(50)
--	,club varchar(5)
--	,nb_années double
--)

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'MD_Provinces')
CREATE TABLE MD_Provinces 
(
  nom varchar(100) NOT NULL,
  PRIMARY KEY (nom)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Liste_Des_Compétitions_Futures')
CREATE TABLE Liste_Des_Compétitions_Futures
(
	id int
	,nom varchar(40)
	,[date] date
	,heure varchar(10)
	,matin tinyint
	,apresmidi tinyint
	,soir tinyint
	,club varchar(10)
	,lieu varchar(255)
	,convocation_demande int
	,convocation varchar(255)
	,rapport tinyint
	,actif tinyint
	,visible tinyint
	,entry_dt datetime
	,update_dt datetime
)
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Liste_Des_Officiels_De_Bruxelles')
CREATE TABLE Liste_Des_Officiels_De_Bruxelles 
(
	Nom varchar(50)
	,Prénom varchar(50)
	,Surnom varchar(50)
	,Club varchar(5)
	,Province varchar(100)
	,Brevet int
	,Tél varchar(50)
	,Tél2 varchar(50)
	,Email varchar(100)
	,Courrier_papier varchar(3)
	,Adresse varchar(100)
	,CP varchar(10)
	,Ville varchar(30)
)
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Liste_Des_Officiels_De_Bruxelles_Ancien')
CREATE TABLE Liste_Des_Officiels_De_Bruxelles_Ancien 
(
	Nom varchar(50)
	,Prénom varchar(50)
	,Surnom varchar(50)
	,Club varchar(5)
	,Tél varchar(50)
	,Tél2 varchar(50)
	,Email varchar(100)
	,Courrier_papier varchar(3)
	,Adresse varchar(100)
	,CP varchar(10)
	,Ville varchar(30)
)
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Officiel_Bruxelles')
CREATE TABLE Officiel_Bruxelles -- FULL 
(
	nickname varchar(50)
	,isActive int
	,isPostalMail int
	,club varchar(5)
	,b1 date
	,b2 date
	,b3 date
	,ITOA date
	,ITOW date
	,m1 varbinary
	,m2 varbinary
	,lastname varchar(50)
	,firstname varchar(50)
	,sex varchar(20)
	,birthday datetime
	,email varchar(100)
	,address varchar(100)
	,postalCode varchar(10)
	,city varchar(30)
	,country varchar(8)
	,phone varchar(50)
	,phone2 varchar(50)
)
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Rapport_Des_Présences')
CREATE TABLE Rapport_Des_Présences 
(
	saison varchar(20)
	,competition_date date
	,competition_club varchar(10)
	,competition_type varchar(100)
	,matin tinyint
	,apresmidi tinyint
	,soir tinyint
	,nb_convocation int
	,rapport tinyint
	,nom varchar(50)
	,prenom varchar(50)
	,club varchar(10)
	,role varchar(20)
	,status varchar(20)
)

--DROP VIEW IF EXISTS Rapport des présences 2016
--CREATE TABLE Rapport des présences 2016 (
--)
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Rapports_Manquants')
CREATE TABLE Rapports_Manquants 
(
	saison varchar(20)
	,date date
	,club varchar(10)
	,nom varchar(40)
	,officiel_id int
	,surnom varchar(50)
)
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Rapports_Manquants_2012_2013')
CREATE TABLE Rapports_Manquants_2012_2013 
(
	[date] date
	,club varchar(10)
	,nom varchar(40)
	,officiel_id int
	,surnom varchar(50)
)
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Annonces')
CREATE TABLE Annonces 
(
  id int NOT NULL  IDENTITY(1,1),
  [desc] varchar(400) DEFAULT NULL,
  type varchar(20) DEFAULT 'banner',
  actif varchar(5) DEFAULT NULL,
  entry_dt datetime DEFAULT NULL,
  expire_dt datetime DEFAULT NULL,
  new varchar(5) DEFAULT 'n',
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Batches')
CREATE TABLE [Batches]
(
  id int NOT NULL  IDENTITY(1,1),
  nom varchar(150) DEFAULT NULL,
  [type] varchar(50) DEFAULT NULL,
  execution char(1) DEFAULT NULL,
  sendmail char(1) DEFAULT NULL,
  destinataires varchar(250) DEFAULT NULL,
  [description] text,
  infofrequence varchar(200) DEFAULT NULL,
  fileexecuted varchar(200) DEFAULT NULL,
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Brevets')
CREATE TABLE Brevets 
(
  id int NOT NULL  IDENTITY(1,1),
  brevet varchar(50) DEFAULT NULL,
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Catalogue')
CREATE TABLE Catalogue 
(
  id int NOT NULL  IDENTITY(1,1),
  [file] varchar(50) DEFAULT NULL,
  desc_fr text,
  taille int DEFAULT '0',
  reference varchar(50) DEFAULT NULL,
  prix_public varchar(50) DEFAULT 'na',
  prix_instructeur varchar(50) DEFAULT 'na',
  [public] char(3) DEFAULT '1',
  entry_dt datetime DEFAULT NULL,
  actif char(1) DEFAULT NULL,
  role_access varchar(200) DEFAULT NULL,
  fraispostaux_mandatory char(3) DEFAULT '0',
  category varchar(50) DEFAULT NULL,
  desc_sub_fr text,
  ristourne_quantite int DEFAULT '0',
  ristourne_pourcentage int DEFAULT '0',
  taille_choix varchar(50) DEFAULT NULL,
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Clubs')
CREATE TABLE Clubs 
(
  id int NOT NULL  IDENTITY(1,1),
  club varchar(10) DEFAULT NULL,
  clubname varchar(100) DEFAULT NULL,
  responsable varchar(100) DEFAULT '',
  province varchar(100) DEFAULT NULL,
  adresse varchar(100) DEFAULT NULL,
  cp varchar(20) DEFAULT NULL,
  pays varchar(100) DEFAULT 'BELGIQUE',
  ville varchar(100) DEFAULT NULL,
  phone varchar(50) DEFAULT NULL,
  email varchar(100) DEFAULT NULL,
  siteweb varchar(200) DEFAULT NULL,
  actif int DEFAULT '1',
  entry_dt DATETIME NULL DEFAULT GETDATE(),
  siteweb_visible char(3) DEFAULT '1',
  map_lat varchar(50) DEFAULT NULL,
  map_lng varchar(50) DEFAULT NULL,
  map_remarques text,
  map_icon varchar(50) DEFAULT NULL,
  map_options text,
  [file] varchar(100) DEFAULT NULL,
  photo varchar(100) DEFAULT NULL,
  PRIMARY KEY (id),  
  CONSTRAINT UK_club UNIQUE(club),
  CONSTRAINT FK_Province FOREIGN KEY (province) REFERENCES MD_Provinces(nom) ON DELETE SET NULL ON UPDATE CASCADE
)
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'MD_Typecompet')
CREATE TABLE MD_Typecompet (
  [type] varchar(100) NOT NULL,
  PRIMARY KEY (type)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Convocations')
CREATE TABLE Convocations 
(
  id int NOT NULL  IDENTITY(1,1),
  convocation varchar(255) NOT NULL,
  club varchar(100) DEFAULT NULL,
  dateheure_1 varchar(100) DEFAULT NULL,
  dateheure_2 varchar(100) DEFAULT NULL,
  nom varchar(200) DEFAULT NULL,
  nature varchar(200) DEFAULT NULL,
  lieu_1 varchar(200) DEFAULT NULL,
  lieu_2 varchar(200) DEFAULT NULL,
  lieu_3 varchar(200) DEFAULT NULL,
  divers varchar(400) DEFAULT NULL,
  [no] varchar(200) DEFAULT NULL,
  secretaire_1 varchar(200) DEFAULT NULL,
  secretaire_2 varchar(200) DEFAULT NULL,
  secretaire_3 varchar(200) DEFAULT NULL,
  directeur_1 varchar(200) DEFAULT NULL,
  directeur_2 varchar(200) DEFAULT NULL,
  creation_dt datetime NULL DEFAULT NULL,
  update_dt datetime NOT NULL DEFAULT GETDATE(),
  PRIMARY KEY (id),  
  CONSTRAINT UK_convocation UNIQUE(convocation) 
) 
GO


IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Competitions')
CREATE TABLE Competitions 
(
  id int NOT NULL  IDENTITY(1,1),
  nom varchar(40) DEFAULT NULL,
  [date] date NOT NULL,
  heure varchar(10) DEFAULT NULL,
  matin tinyint NOT NULL DEFAULT '0',
  apresmidi tinyint NOT NULL DEFAULT '0',
  soir tinyint NOT NULL DEFAULT '0',
  club varchar(10) DEFAULT NULL,
  lieu varchar(255) DEFAULT NULL,
  [type] varchar(100) DEFAULT NULL,
  convocation_demande int DEFAULT NULL,
  convocation varchar(255) DEFAULT NULL,
  rapport tinyint NOT NULL DEFAULT '0',
  actif tinyint NOT NULL DEFAULT '1',
  visible tinyint DEFAULT NULL,
  entry_dt datetime NOT NULL DEFAULT GETDATE(),
  update_dt datetime NULL DEFAULT NULL,
  PRIMARY KEY (id),  
  CONSTRAINT FK_Type_Competition FOREIGN KEY (type) REFERENCES MD_Typecompet (type) ON UPDATE CASCADE,
  CONSTRAINT FK_competitions_ibfk_2 FOREIGN KEY (club) REFERENCES clubs (club) ON UPDATE CASCADE,
  CONSTRAINT FK_competitions_ibfk_3 FOREIGN KEY (convocation_demande) REFERENCES convocations (id)
)
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Officiels')
CREATE TABLE Officiels (
  id int NOT NULL  IDENTITY(1,1),
  membre_id int DEFAULT NULL,
  nom varchar(50) NOT NULL,
  prenom varchar(50) NOT NULL,
  surnom varchar(50) NOT NULL,
  phone varchar(50) DEFAULT NULL,
  phone_2 varchar(50) DEFAULT NULL,
  phone_contact text,
  brevet int NOT NULL,
  entryDT varchar(5) DEFAULT '2013',
  email_1 varchar(100) DEFAULT NULL,
  email_2 varchar(100) DEFAULT NULL,
  email_3 varchar(100) DEFAULT NULL,
  anniversaire_dt datetime DEFAULT NULL,
  actif int DEFAULT '1',
  sexe varchar(20) DEFAULT NULL, --COMMENT 'M = Homme, autre = Dame',
  club varchar(10) DEFAULT NULL,
  province varchar(100) NOT NULL DEFAULT 'Bruxelles',
  taille_polo varchar(20) NOT NULL DEFAULT '0',
  taille_pantalon varchar(20) NOT NULL DEFAULT '0',
  taille_chaussure varchar(20) NOT NULL DEFAULT '0',
  courrier_papier int DEFAULT '0',
  phone_visible varchar(5) DEFAULT '0',
  email_visible varchar(5) DEFAULT '0',
  adresse varchar(100) DEFAULT '',
  cp varchar(10) DEFAULT '',
  ville varchar(30) DEFAULT '',
  pays varchar(50) DEFAULT '',
  photo varchar(100) DEFAULT NULL,
  infosupp text,
  entry_dt datetime DEFAULT '0000-00-00 00:00:00',
  brevet_I_dt date DEFAULT NULL,
  brevet_II_dt date DEFAULT NULL,
  brevet_III_dt date DEFAULT NULL,
  brevet_ATO_dt date DEFAULT NULL,
  brevet_ITO_dt date DEFAULT NULL,
  lastupdate_who varchar(30) DEFAULT '',
  lastupdate_dt datetime NULL DEFAULT GETDATE(),
  PRIMARY KEY (id),  
  CONSTRAINT FK_Club FOREIGN KEY (club) REFERENCES clubs (club) ON UPDATE CASCADE
)
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'MD_Status_Compet')
CREATE TABLE MD_Status_Compet 
(
  id int NOT NULL  IDENTITY(1,1),
  [status] varchar(20) NOT NULL,
  [order] int NOT NULL,
  delta int NOT NULL DEFAULT '0', --COMMENT 'Impact sur convocation',
  coefficient int NOT NULL DEFAULT '1', --COMMENT 'Coefficient de présence',
  PRIMARY KEY (id),  
  CONSTRAINT [UK_Status] UNIQUE([status]) 
) 
GO
IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Roles')
CREATE TABLE Roles (
  id varchar(20) NOT NULL,
  nom varchar(20) NOT NULL,
  ordre int NOT NULL,
  xls_ligne int NOT NULL DEFAULT '0',
  xls_col varchar(10) NOT NULL DEFAULT 'K',
  brevet_id int NOT NULL DEFAULT '1',
  PRIMARY KEY (id),
  --CONSTRAINT brevet_id  UNIQUE(brevet_id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Competitions_Officiels')
CREATE TABLE Competitions_Officiels 
(
  id int NOT NULL  IDENTITY(1,1),
  competition_id int NOT NULL,
  officiel_id int NOT NULL,
  role_id varchar(20) NOT NULL,
  [order] int NOT NULL DEFAULT '0',
  status_id int NOT NULL,
  comment varchar(1000) DEFAULT NULL,
  creation_dt datetime NOT NULL DEFAULT GETDATE(),
  update_dt datetime NULL DEFAULT NULL,
  PRIMARY KEY (id),  
  CONSTRAINT UK_competition_officiel_id UNIQUE(competition_id,officiel_id),
  CONSTRAINT FK_competitions_officiels_ibfk_1 FOREIGN KEY (competition_id) REFERENCES Competitions (id),
  CONSTRAINT FK_competitions_officiels_ibfk_2 FOREIGN KEY (officiel_id) REFERENCES Officiels (id),
  CONSTRAINT FK_competitions_officiels_ibfk_3 FOREIGN KEY (role_id) REFERENCES Roles (id),
  CONSTRAINT FK_competitions_officiels_ibfk_5 FOREIGN KEY (status_id) REFERENCES MD_Status_Compet(id)
)
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Compteurvisites')
CREATE TABLE Compteurvisites 
(
  id int NOT NULL  IDENTITY(1,1),
  [page] varchar(50) DEFAULT NULL,
  nbrvisites int DEFAULT '000000',
  lastvisite_dt datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id)
) 
GO


IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Convocations_Demandes')
CREATE TABLE Convocations_Demandes 
(
  id int NOT NULL  IDENTITY(1,1),
  convocation_id int NOT NULL,
  ligne varchar(10) NOT NULL,
  colonne varchar(10) NOT NULL,
  valeur varchar(1000) NOT NULL,
  PRIMARY KEY (id),  
  CONSTRAINT FK_convocations_demandes_ibfk_1 FOREIGN KEY (convocation_id) REFERENCES convocations (id) ON DELETE CASCADE ON UPDATE CASCADE
)
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Epreuves')
CREATE TABLE Epreuves 
(
  id int NOT NULL  IDENTITY(1,1),
  nom varchar(20) NOT NULL,
  [type] varchar(20) NOT NULL,
  PRIMARY KEY (id),  
  CONSTRAINT UK_nom UNIQUE(nom) 
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Convocations_Epreuves')
CREATE TABLE Convocations_Epreuves 
(
  id int NOT NULL  IDENTITY(1,1),
  convocation_id int NOT NULL,
  sexe varchar(10) NOT NULL,
  category varchar(10) NOT NULL,
  epreuve_id int NOT NULL,
  epreuve_type varchar(20) NOT NULL,
  epreuve_nom varchar(20) NOT NULL,
  PRIMARY KEY (id),  
  CONSTRAINT FK_convocations_epreuves_ibfk_1 FOREIGN KEY (convocation_id) REFERENCES convocations (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_convocations_epreuves_ibfk_2 FOREIGN KEY (epreuve_id) REFERENCES epreuves (id) ON DELETE CASCADE ON UPDATE CASCADE
)
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Convocations_Officiels')
CREATE TABLE Convocations_Officiels 
(
  id int NOT NULL  IDENTITY(1,1),
  convocation_id int NOT NULL,
  officiel_id int NOT NULL,
  role_id varchar(20) NOT NULL,
  ordre int NOT NULL,
  [status] varchar(1) NOT NULL, --COMMENT 'Abstent, Convoqué, Déconvoqué, Présent',
  creation_dt datetime NULL DEFAULT NULL,
  update_dt datetime NOT NULL DEFAULT GETDATE(),
  PRIMARY KEY (id),  
  CONSTRAINT UK_convocation_officiel_id UNIQUE(convocation_id,officiel_id),
  CONSTRAINT FK_convocations_officiels_ibfk_1 FOREIGN KEY (convocation_id) REFERENCES convocations (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_convocations_officiels_ibfk_2 FOREIGN KEY (officiel_id) REFERENCES officiels (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_convocations_officiels_ibfk_3 FOREIGN KEY (role_id) REFERENCES roles (id) ON DELETE CASCADE ON UPDATE CASCADE
)
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Documents_Admin')
CREATE TABLE Documents_Admin 
(
  id int NOT NULL  IDENTITY(1,1),
  region varchar(10) NOT NULL DEFAULT 'fr',
  document varchar(200) NOT NULL DEFAULT '',
  groupe varchar(100) NOT NULL DEFAULT '',
  actif int DEFAULT '0',
  [file] varchar(200) DEFAULT '',
  [count] int DEFAULT '0',
  new char(1) DEFAULT 'n',
  entry_dt datetime DEFAULT '0000-00-00 00:00:00',
  role_access varchar(200) DEFAULT '',
  file_groupe int DEFAULT '0',
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Download')
CREATE TABLE Download 
(
  id int NOT NULL  IDENTITY(1,1),
  [action] varchar(200) NOT NULL DEFAULT '',
  document varchar(200) NOT NULL DEFAULT '',
  groupe varchar(100) NOT NULL DEFAULT '',
  region varchar(10) NOT NULL DEFAULT 'fr',
  actif int DEFAULT '0',
  [file] varchar(200) DEFAULT '',
  [count] int DEFAULT '0',
  new char(1) DEFAULT 'n',
  entry_dt datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  file_groupe int DEFAULT '0',
  PRIMARY KEY (id)
) 
GO



IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Formations')
CREATE TABLE Formations 
(
  id int NOT NULL  IDENTITY(1,1),
  [date] date NOT NULL,
  heure varchar(10) NOT NULL,
  lieu varchar(255) NOT NULL,
  [plan] varchar(255) NOT NULL,
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'History')
CREATE TABLE History 
(
  id int NOT NULL  IDENTITY(1,1),
  [subject] varchar(200) DEFAULT NULL,
  [message] text,
  [to] text,
  [from] text,
  staff varchar(200) DEFAULT '0',
  actif varchar(5) DEFAULT NULL,
  entry_dt datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'History_login')
CREATE TABLE History_login 
(
  id int NOT NULL  IDENTITY(1,1),
  nbrmembre varchar(30) DEFAULT NULL,
  entry_dt datetime DEFAULT '0000-00-00 00:00:00',
  actif varchar(5) DEFAULT '1',
  comment text,
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Mailing_list')
CREATE TABLE Mailing_list 
(
  id int NOT NULL  IDENTITY(1,1),
  nom varchar(150) DEFAULT NULL,
  prenom varchar(150) DEFAULT NULL,
  email varchar(150) DEFAULT NULL,
  actif int DEFAULT '1',
  typeimport varchar(50) DEFAULT 'MANUEL',
  entry_dt datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'MD_Ddlb')
CREATE TABLE MD_Ddlb 
(
  id int NOT NULL  IDENTITY(1,1),
  value varchar(1000) NOT NULL,
  PRIMARY KEY (id)
) 
GO



IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'MD_Saisons')
CREATE TABLE MD_Saisons 
(
  id int NOT NULL  IDENTITY(1,1),
  saison varchar(20) NOT NULL,
  start_dt date NOT NULL,
  end_dt date NOT NULL,
  PRIMARY KEY (id),  
  CONSTRAINT saison UNIQUE(saison) 
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'MD_Status')
CREATE TABLE MD_Status 
(
  id int NOT NULL  IDENTITY(1,1),
  [status] varchar(20) NOT NULL,
  [order] int NOT NULL,
  PRIMARY KEY (id),  
  CONSTRAINT [status] UNIQUE([status]) 
) 
GO



IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'MD_Status_Rel')
CREATE TABLE MD_Status_Rel 
(
  id int NOT NULL  IDENTITY(1,1),
  status_id int NOT NULL,
  status_compet_id int NOT NULL,
  correction int NOT NULL DEFAULT '0',
  PRIMARY KEY (id),  
  CONSTRAINT UK_status_id UNIQUE(status_id,status_compet_id),
  CONSTRAINT FK_md_status_rel_ibfk_1 FOREIGN KEY (status_id) REFERENCES md_status (id),
  CONSTRAINT FK_md_status_rel_ibfk_2 FOREIGN KEY (status_compet_id) REFERENCES md_status_compet (id)

)
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'MD_Tailles')
CREATE TABLE MD_Tailles 
(
  id int NOT NULL  IDENTITY(1,1),
  [type] varchar(10) NOT NULL,
  code varchar(10) NOT NULL,
  decode varchar(20) NOT NULL,
  ordre int NOT NULL,
  PRIMARY KEY (id),  
  CONSTRAINT [type] UNIQUE ([type],code)
) 
GO



IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'MD_Typecompet_Province')
CREATE TABLE MD_Typecompet_Province (
  id int NOT NULL  IDENTITY(1,1),
  typecompet varchar(100) NOT NULL,
  province varchar(100) NOT NULL,
  PRIMARY KEY (id),  
  CONSTRAINT FK_md_typecompet_province_ibfk_1 FOREIGN KEY (typecompet) REFERENCES md_typecompet (type) ON UPDATE CASCADE,
  CONSTRAINT FK_md_typecompet_province_ibfk_2 FOREIGN KEY (province) REFERENCES md_provinces (nom) ON UPDATE CASCADE
)

GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Membres')
CREATE TABLE Membres (
  id int NOT NULL  IDENTITY(1,1),
  nom varchar(50) DEFAULT NULL,
  prenom varchar(50) DEFAULT NULL,
  phone varchar(50) DEFAULT NULL,
  brevet int DEFAULT NULL,
  email varchar(50) DEFAULT NULL,
  email2 varchar(50) DEFAULT NULL,
  email3 varchar(50) DEFAULT NULL,
  anniversaire date DEFAULT NULL,
  entry_dt datetime DEFAULT '0000-00-00 00:00:00',
  actif int DEFAULT '1',
  sexe varchar(20) DEFAULT '',
  phone_visible varchar(5) DEFAULT '0',
  email_visible varchar(5) DEFAULT '0',
  adresse varchar(100) DEFAULT '',
  cp varchar(10) DEFAULT '',
  ville varchar(30) DEFAULT '',
  dan_dt date DEFAULT NULL,
  photo varchar(100) DEFAULT NULL,
  membre varchar(50) DEFAULT NULL,
  PRIMARY KEY (id)
) 

GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Membres_Acces')
CREATE TABLE Membres_Acces (
  id int NOT NULL  IDENTITY(1,1),
  nom varchar(50) DEFAULT NULL,
  prenom varchar(50) DEFAULT NULL,
  nbrmembre varchar(30) DEFAULT '',
  [login] varchar(45) DEFAULT '',
  [password] varchar(100) DEFAULT NULL,
  phone varchar(50) DEFAULT NULL,
  phone2 varchar(50) DEFAULT NULL,
  brevet varchar(50) DEFAULT NULL,
  [role] varchar(10) DEFAULT 'member',
  acces char(1) DEFAULT 'y',
  entryDT varchar(5) DEFAULT '2011',
  email_1 varchar(100) DEFAULT NULL,
  email_2 varchar(100) DEFAULT NULL,
  email_3 varchar(100) DEFAULT NULL,
  anniversaire_dt datetime DEFAULT NULL,
  entry_dt datetime DEFAULT '0000-00-00 00:00:00',
  actif int DEFAULT '1',
  sexe varchar(20) DEFAULT '',
  phone_visible varchar(5) DEFAULT '0',
  email_visible varchar(5) DEFAULT '0',
  adresse varchar(100) DEFAULT '',
  cp varchar(10) DEFAULT '',
  ville varchar(30) DEFAULT '',
  pays varchar(50) DEFAULT '',
  dan_dt datetime DEFAULT NULL,
  photo varchar(100) DEFAULT NULL,
  infosupp text,
  nbrmembre_famille int DEFAULT '1',
  lastupdate_who varchar(30) DEFAULT '',
  lastupdate_dt datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id),  
  CONSTRAINT [login] UNIQUE([login]),
  CONSTRAINT email_1 UNIQUE(email_1)   
) 

GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Membres_Declarations')
CREATE TABLE Membres_Declarations (
  id int NOT NULL  IDENTITY(1,1),
  [file] varchar(200) DEFAULT NULL,
  annee varchar(10) DEFAULT NULL,
  nbrmembre varchar(30) DEFAULT '0',
  actif varchar(1) DEFAULT '0',
  entry_dt datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id)
) 

GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Membres_Documents')
CREATE TABLE Membres_Documents 
(
  id int NOT NULL  IDENTITY(1,1),
  groupe varchar(200) NOT NULL DEFAULT '',
  document varchar(200) NOT NULL DEFAULT '',
  region varchar(10) NOT NULL DEFAULT '',
  actif varchar(100) NOT NULL DEFAULT 'n',
  [file] varchar(200) DEFAULT '',
  [count] int DEFAULT '0',
  new char(1) DEFAULT 'n',
  entry_dt datetime NULL DEFAULT GETDATE(), --TODO NULL HANDLING
  role_access varchar(200) DEFAULT '',
  PRIMARY KEY (id)
) 

GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Membres_Requests')
CREATE TABLE Membres_Requests (
  id int NOT NULL  IDENTITY(1,1),
  email varchar(200) DEFAULT NULL,
  success int NOT NULL DEFAULT '-1',
  creation_dt datetime NOT NULL DEFAULT GETDATE(),
  update_dt datetime NULL DEFAULT NULL,
  PRIMARY KEY (id)
) 

GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Menu_Left')
CREATE TABLE Menu_Left (
  id int NOT NULL  IDENTITY(1,1),
  menu_name varchar(50) DEFAULT NULL,
  menu_file varchar(100) NOT NULL DEFAULT '',
  situation varchar(50) NOT NULL DEFAULT 'left',
  menu_actif int DEFAULT '0',
  entry_dt datetime NULL DEFAULT GETDATE(), --TODO - null handling
  menu_new char(1) DEFAULT 'n',
  ordre int DEFAULT '0',
  PRIMARY KEY (id)
) 

GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Messages')
CREATE TABLE [Messages] (
  id int NOT NULL  IDENTITY(1,1),
  [subject] varchar(200) DEFAULT NULL,
  body text,
  altbody text,
  [priority] varchar(15) DEFAULT NULL,
  as_from varchar(100) DEFAULT NULL,
  actif int DEFAULT '0',
  entry_dt datetime DEFAULT NULL,
  PRIMARY KEY (id)
) 

GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Messages_Files')
CREATE TABLE Messages_Files (
  id int NOT NULL  IDENTITY(1,1),
  id_messages int DEFAULT NULL,
  file_path varchar(400) DEFAULT NULL,
  actif int DEFAULT '0',
  entry_dt datetime DEFAULT NULL,
  PRIMARY KEY (id)
) 

GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Messages_Recipients')
CREATE TABLE Messages_Recipients (
  id int NOT NULL  IDENTITY(1,1),
  id_messages int DEFAULT NULL,
  to_mail varchar(100) DEFAULT NULL,
  to_name varchar(100) DEFAULT NULL,
  from_mail varchar(100) DEFAULT NULL,
  from_name varchar(100) DEFAULT NULL,
  mail_type varchar(20) DEFAULT NULL,
  confirmreadingto varchar(100) DEFAULT NULL,
  actif int DEFAULT '0',
  langue varchar(2) DEFAULT NULL,
  entry_dt datetime DEFAULT NULL,
  out_dt datetime DEFAULT NULL,
  errorinfo text,
  retry int DEFAULT '0',
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'News')
CREATE TABLE News (
  id int NOT NULL  IDENTITY(1,1),
  entry_dt datetime DEFAULT NULL,
  comment text,
  actif int NOT NULL DEFAULT '1',
  [subject] varchar(100) DEFAULT NULL,
  photo_1 varchar(100) DEFAULT NULL,
  photo_2 varchar(100) DEFAULT NULL,
  PRIMARY KEY (id)
) 
GO



IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Officiels_Declarations')
CREATE TABLE Officiels_Declarations (
  id int NOT NULL  IDENTITY(1,1),
  [file] varchar(200) DEFAULT NULL,
  annee varchar(10) DEFAULT NULL,
  nbrofficiel varchar(30) DEFAULT '0',
  actif varchar(1) DEFAULT '0',
  entry_dt datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Officiels_Disponibilites')
CREATE TABLE Officiels_Disponibilites 
(
  id int NOT NULL  IDENTITY(1,1),
  officiel_id int NOT NULL,
  [date] date NOT NULL,
  disponibilite varchar(10) NOT NULL, --COMMENT 'Oui / Non / Inconnu',
  creation_dt datetime NOT NULL DEFAULT GETDATE(),
  update_dt datetime NULL DEFAULT GETDATE(),
  PRIMARY KEY (id),  
  CONSTRAINT UK_officiel_id_2 UNIQUE (officiel_id,[date]),
  CONSTRAINT FK_officiels_disponibilites_ibfk_1 FOREIGN KEY (officiel_id) REFERENCES officiels (id) ON DELETE CASCADE ON UPDATE CASCADE
)
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Officiels_Disponibilites_Exceptions')
CREATE TABLE Officiels_Disponibilites_Exceptions 
(
  id int NOT NULL  IDENTITY(1,1),
  officiel_id int NOT NULL,
  club varchar(10) NOT NULL,
  matin tinyint NOT NULL DEFAULT '1',
  apresmidi tinyint NOT NULL DEFAULT '1',
  soir tinyint NOT NULL DEFAULT '1',
  creation_dt datetime NOT NULL DEFAULT GETDATE(),
  update_dt datetime NULL DEFAULT GETDATE(),
  PRIMARY KEY (id),  
  CONSTRAINT FK_officiels_disponibilites_exceptions_ibfk_1 FOREIGN KEY (officiel_id) REFERENCES officiels (id),
  CONSTRAINT FK_officiels_disponibilites_exceptions_ibfk_2 FOREIGN KEY (club) REFERENCES clubs (club)
)
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Officiels_Meritants')
CREATE TABLE Officiels_Meritants (
  id int NOT NULL  IDENTITY(1,1),
  annee int NOT NULL,
  nom varchar(40) NOT NULL DEFAULT '---',
  officiel_id int DEFAULT NULL,
  remarque varchar(20) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT UK_annee UNIQUE(annee),  
  CONSTRAINT FK_officiels_meritants_ibfk_1 FOREIGN KEY (officiel_id) REFERENCES officiels (id)
)
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Officiels_Roles')
CREATE TABLE Officiels_Roles (
  id int NOT NULL  IDENTITY(1,1),
  officiel_id int NOT NULL,
  role_id varchar(20) NOT NULL,
  PRIMARY KEY (id),  
  CONSTRAINT UK_officiel_role_id UNIQUE(officiel_id,role_id) ,
  CONSTRAINT FK_officiels_roles_ibfk_1 FOREIGN KEY (officiel_id) REFERENCES officiels (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_officiels_roles_ibfk_2 FOREIGN KEY (role_id) REFERENCES roles (id) ON DELETE CASCADE ON UPDATE CASCADE
)
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Parametres')
CREATE TABLE Parametres 
(
	id		int NOT NULL  IDENTITY(1,1),
	[desc]	varchar(200) DEFAULT NULL,
	value	varchar(200) DEFAULT NULL,
	comment varchar(200) DEFAULT NULL,
	PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Pays')
CREATE TABLE Pays (
  id int NOT NULL  IDENTITY(1,1),
  pays varchar(100) NOT NULL DEFAULT '',
  pays_desc varchar(200) NOT NULL DEFAULT '',
  fraispostaux varchar(50) DEFAULT '20',
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Quiz_Answers')
CREATE TABLE Quiz_Answers (
  id int NOT NULL  IDENTITY(1,1),
  id_question int NOT NULL DEFAULT '0',
  answers_fr varchar(400) DEFAULT NULL,
  answers_nl varchar(400) DEFAULT NULL,
  answers_en varchar(400) DEFAULT NULL,
  result int NOT NULL DEFAULT '0',
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Quiz_History')
CREATE TABLE Quiz_History (
  id int NOT NULL  IDENTITY(1,1),
  [filename] varchar(100) DEFAULT NULL,
  brevet_level varchar(50) DEFAULT '1',
  langue varchar(5) DEFAULT NULL,
  nbr_questions int DEFAULT '0',
  list_ids text,
  actif int DEFAULT '1',
  entry_dt datetime DEFAULT NULL,
  nbrinstructor varchar(100) DEFAULT NULL,
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Quiz_History_Tests')
CREATE TABLE Quiz_History_Tests (
  id int NOT NULL  IDENTITY(1,1),
  ipaddress varchar(100) DEFAULT NULL,
  player varchar(50) DEFAULT NULL,
  nbrinstructor varchar(100) DEFAULT NULL,
  brevet_level varchar(50) DEFAULT '1',
  langue varchar(5) DEFAULT NULL,
  nbr_questions int DEFAULT '0',
  pourcentage int DEFAULT '0',
  list_ids text,
  actif int DEFAULT '1',
  entry_dt datetime DEFAULT NULL,
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Quiz_Questions')
CREATE TABLE Quiz_Questions (
  id int NOT NULL  IDENTITY(1,1),
  brevet_level varchar(50) DEFAULT '1',
  [subject] varchar(100) DEFAULT NULL,
  question_fr varchar(400) DEFAULT NULL,
  question_image_fr varchar(100) DEFAULT NULL,
  question_nl varchar(400) DEFAULT NULL,
  question_image_nl varchar(100) DEFAULT NULL,
  question_en varchar(400) DEFAULT NULL,
  question_image_en varchar(100) DEFAULT NULL,
  actif int DEFAULT '1',
  entry_dt datetime DEFAULT NULL,
  PRIMARY KEY (id)
) 
GO



IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Sites')
CREATE TABLE Sites (
  id int NOT NULL  IDENTITY(1,1),
  site_name varchar(100) DEFAULT NULL,
  site_url varchar(200) DEFAULT NULL,
  site_actif int DEFAULT '0',
  entry_dt datetime NULL DEFAULT GETDATE(), --TODO Null handle
  site_category varchar(100) DEFAULT NULL,
  site_category_ordre varchar(1) DEFAULT NULL,
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Sondage_Answers')
CREATE TABLE Sondage_Answers (
  id int NOT NULL  IDENTITY(1,1),
  id_sondage_questions int NOT NULL,
  reponse_fr varchar(100) DEFAULT NULL,
  reponse_nl varchar(100) DEFAULT NULL,
  reponse_en varchar(100) DEFAULT NULL,
  nb_reponses int NOT NULL,
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Sondage_IPAddress')
CREATE TABLE Sondage_IPAddress (
  id int NOT NULL  IDENTITY(1,1),
  id_sondage_questions int NOT NULL,
  ipaddress varchar(100) DEFAULT NULL,
  entry_dt datetime DEFAULT NULL,
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Sondage_Questions')
CREATE TABLE Sondage_Questions (
  id int NOT NULL  IDENTITY(1,1),
  title_fr varchar(250) DEFAULT NULL,
  title_nl varchar(250) DEFAULT NULL,
  title_en varchar(250) DEFAULT NULL,
  question_fr varchar(250) DEFAULT NULL,
  question_nl varchar(250) DEFAULT NULL,
  question_en varchar(250) DEFAULT NULL,
  actif int DEFAULT '1',
  closed int DEFAULT '0',
  entry_dt datetime DEFAULT NULL,
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Sorties_Club')
CREATE TABLE Sorties_Club (
  id int NOT NULL  IDENTITY(1,1),
  queljour varchar(10) DEFAULT NULL,
  quelledate date DEFAULT NULL,
  quelleheure varchar(10) DEFAULT NULL,
  ou varchar(100) DEFAULT NULL,
  plandusite varchar(50) DEFAULT NULL,
  lieuderdv varchar(100) DEFAULT NULL,
  actif int DEFAULT NULL,
  entry_dt datetime DEFAULT NULL,
  organisateur varchar(50) DEFAULT 'Toto',
  type_sortie varchar(50) DEFAULT '',
  type_entrainement varchar(50) DEFAULT '',
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Sorties_Participants')
CREATE TABLE Sorties_Participants (
  id int NOT NULL  IDENTITY(1,1),
  nbrmembre varchar(10) NOT NULL DEFAULT '0',
  id_sorties_club int NOT NULL DEFAULT '0',
  participation_date datetime DEFAULT '0000-00-00 00:00:00',
  entry_dt datetime DEFAULT '0000-00-00 00:00:00',
  actif varchar(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Sorties_Voyages')
CREATE TABLE Sorties_Voyages (
  id int NOT NULL  IDENTITY(1,1),
  voyage text,
  quand varchar(50) DEFAULT NULL,
  actif int DEFAULT NULL,
  entry_dt datetime DEFAULT NULL,
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Test_XLS')
CREATE TABLE Test_XLS (
  id int NOT NULL  IDENTITY(1,1),
  fichier varchar(255) NOT NULL,
  ligne varchar(10) NOT NULL,
  colonne varchar(10) NOT NULL,
  valeur varchar(1000) NOT NULL,
  PRIMARY KEY (id)
) 
GO

IF NOT EXISTS(SELECT * FROM sys.Objects WHERE Name = 'Transactions')
CREATE TABLE Transactions (
  id int NOT NULL  IDENTITY(1,1),
  item_number varchar(50) DEFAULT '',
  item_name varchar(200) DEFAULT '',
  txn_id varchar(25) DEFAULT '',
  txn_type varchar(25) DEFAULT '',
  payment_type varchar(50) DEFAULT '',
  payment_status varchar(50) DEFAULT 'Temporary',
  payment_mode varchar(20) DEFAULT 'Virement',
  payment_date datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  receiver_id varchar(25) DEFAULT '0',
  payer_id varchar(25) DEFAULT '0',
  payer_name varchar(50) DEFAULT '',
  payer_email varchar(200) DEFAULT '',
  payer_status varchar(25) DEFAULT '',
  residence_country varchar(5) DEFAULT 'fr',
  langue varchar(5) DEFAULT 'fr',
  mc_currency varchar(5) DEFAULT 'EUR',
  mc_fee_fede varchar(50) DEFAULT '0.00',
  mc_fee varchar(50) DEFAULT '0.00',
  mc_handling varchar(50) DEFAULT '0.00',
  mc_shipping varchar(50) DEFAULT '0.00',
  mc_gross varchar(50) DEFAULT '0.00',
  mc_restant varchar(50) DEFAULT '0.00',
  facture text,
  virement text,
  ins_numero varchar(15) DEFAULT '',
  ins_nom varchar(200) DEFAULT '',
  ins_prenom varchar(200) DEFAULT '',
  ins_email varchar(200) DEFAULT '',
  ins_commentaire text,
  reason_code text,
  [source] varchar(100) DEFAULT '',
  actif varchar(5) DEFAULT '0',
  entry_dt datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  category varchar(50) DEFAULT '0',
  treated datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  paye datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  colis varchar(1) DEFAULT '0',
  command_status varchar(25) DEFAULT 'En cours',
  facture_file varchar(200) DEFAULT NULL,
  url_suivi_colis_bpost varchar(100) DEFAULT NULL,
  PRIMARY KEY (id)
) 
GO

/*
CREATE VIEW Jubilaires  
AS  
select 
	t_officiels.nom AS nom,
	t_officiels.prenom AS prenom,
	t_officiels.club AS club,
	(2014 - officiels.entryDT) AS nb_années 
from officiels 
where 
	((2014 - officiels.entryDT) % 5) = 0 and 
	((2014 - officiels.entryDT) > 14))
order by officiels.entryDT
GO

CREATE VIEW Liste_Des_Compétitions_Futures  
AS  
select 
	t_competitions.id AS id,
	t_competitions.nom AS nom,
	t_competitions.[date] AS [date],
	t_competitions.heure AS heure,
	t_competitions.matin AS matin,
	t_competitions.apresmidi AS apresmidi,
	t_competitions.soir AS soir,
	t_competitions.club AS club,
	t_competitions.lieu AS lieu,
	t_competitions.convocation_demande AS convocation_demande,
	t_competitions.convocation AS convocation,
	t_competitions.rapport AS rapport,
	t_competitions.actif AS actif,
	t_competitions.visible AS visible,
	t_competitions.entry_dt AS entry_dt,
	t_competitions.update_dt AS update_dt 
from competitions 
where 
	t_competitions.[date] > GETDATE() and 
	t_competitions.club not in ('LBFA','LRBA')
GO

CREATE VIEW vw_Liste_Des_Officiels_De_Bruxelles  
AS  
select 
	o.nom AS Nom,
	o.prenom AS Prénom,
	o.surnom AS Surnom,
	o.club AS Club,
	o.province AS Province,
	o.brevet AS Brevet,
	coalesce(m.phone, o.phone) AS Tél,
	coalesce(m.phone2, o.phone_2) AS Tél2,
	coalesce(m.email_1, o.email_1) AS Email,
	if((o.courrier_papier < 1),'Non','Oui') AS Courrier_papier,
	coalesce(m.adresse,o.adresse) AS Adresse,
	coalesce(m.cp,o.cp) AS CP,
	coalesce(m.ville,o.ville) AS Ville 
from ((t_officiels o join clubs c on((o.club = c.club))) 
left join membres_acces m on((o.membre_id = m.id))) 
where ((o.actif = 1) and (c.province = 'Bruxelles')) 
order by o.nom,o.prenom
GO

CREATE VIEW vw_Liste_Des_Officiels_De_Bruxelles_Ancien  
AS  
select 
	o.nom AS Nom,
	o.prenom AS Prénom,
	o.surnom AS Surnom,
	o.club AS Club,
	coalesce(m.phone,o.phone) AS Tél,
	coalesce(m.phone2,o.phone_2) AS Tél2,
	coalesce(m.email_1,o.email_1) AS Email,
	if((o.courrier_papier < 1),'Non','Oui') AS Courrier_papier,
	coalesce(m.adresse,o.adresse) AS Adresse,
	coalesce(m.cp,o.cp) AS CP,
	coalesce(m.ville,o.ville) AS Ville 
from ((t_officiels o join clubs c on((o.club = c.club)))
left join membres_acces m on((o.membre_id = m.id))) 
where ((o.actif = 1) and (c.province = 'Bruxelles')) 
order by o.nom,o.prenom
GO

CREATE VIEW vw_Officiel_Bruxelles -- FULL  
AS 
select 
	o.surnom AS nickname,
	o.actif AS isActive,
	o.courrier_papier AS isPostalMail,
	o.club AS club,
	o.brevet_I_dt AS b1,
	o.brevet_II_dt AS b2,
	o.brevet_III_dt AS b3,
	o.brevet_ATO_dt AS ITOA,
	o.brevet_ITO_dt AS ITOW,
	NULL AS m1,
	NULL AS m2,
	coalesce(m.nom,o.nom) AS lastname,
	coalesce(m.prenom,o.prenom) AS firstname,
	coalesce(m.sexe,o.sexe) AS sex,
	coalesce(m.anniversaire_dt,o.anniversaire_dt) AS birthday,
	coalesce(m.email_1,o.email_1) AS email,
	coalesce(m.adresse,o.adresse) AS address,
	coalesce(m.cp,o.cp) AS postalCode,
	coalesce(m.ville,o.ville) AS city,
	'Belgique' AS country,
	coalesce(m.phone,o.phone) AS phone,
	coalesce(m.phone2,o.phone_2) AS phone2 
from (t_officiels o left join membres_acces m on((m.id = o.membre_id))) 
where (o.province = 'Bruxelles')
GO

CREATE VIEW vw_Rapport_Des_Présences  
AS  
select 
	s.saison AS saison,
	c.date AS competition_date,c.club AS competition_club,
	c.type AS competition_type,c.matin AS matin,
	c.apresmidi AS apresmidi,c.soir AS soir,
	((c.matin + c.apresmidi) + c.soir) AS nb_convocation,
	c.rapport AS rapport,
	o.nom AS nom,
	o.prenom AS prenom,
	oc.club AS club,
	r.nom AS role,
	os.status AS status 
from ((((((t_competitions c join competitions_officiels co) 
join officiels o) 
join md_status_compet os) join roles r) join md_saisons s) join clubs oc) 
where ((s.start_dt <= c.date) and (s.end_dt >= c.date) and (c.actif = 1) 
and (oc.club = o.club) and (oc.province = 'Bruxelles') and 
(co.competition_id = c.id) and (co.officiel_id = o.id) and
 (co.status_id = os.id) and (co.role_id = r.id))
 GO

--DROP TABLE IF EXISTS Rapport des présences 2016
CREATE View vw_Rapports_Manquants  
AS  
select 
	s.saison AS saison,
	c.date AS date,
	c.club AS club,
	c.nom AS nom,
	co.officiel_id AS officiel_id,
	o.surnom AS surnom 
from ((((t_competitions c join clubs cl) join md_saisons s) 
join competitions_officiels co) join officiels o) 
where (
	(c.rapport = 0) and (c.actif = 1) and 
	(c.date >= s.start_dt) and 
	(c.date <= s.end_dt) and 
	(cl.club = c.club) and 
	(cl.province = 'Bruxelles') and 
	(co.competition_id = c.id) and 
	(co.role_id = 'JA') and 
	(co.status_id = 1) and 
	(co.officiel_id = o.id)) 
order by s.saison desc,o.surnom,c.date,c.id
GO

CREATE VIEW vw_Rapports_Manquants_2012_2013  
AS
select 
	c.date AS date,
	c.club AS club,
	c.nom AS nom,
	co.officiel_id AS officiel_id,
	o.surnom AS surnom 
from ((((t_competitions c join clubs cl) join md_saisons s) 
join competitions_officiels co) join officiels o) 
where (
		(c.rapport = 0) and (c.actif = 1) and 
		(c.date >= s.start_dt) and 
		(c.date <= s.end_dt) and 
		(s.saison = '2012 - 2013') and 
		(cl.club = c.club) and 
		(cl.province = 'Bruxelles') and 
		(co.competition_id = c.id) and 
		(co.role_id = 'JA') and 
		(co.status_id = 1) and 
		(co.officiel_id = o.id)) 
order by o.surnom,c.date,c.id

*/