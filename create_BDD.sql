/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     24/11/2018 06:55:18                          */
/*==============================================================*/


drop table if exists ACCOMPAGNANT;

drop table if exists ACTEUR;

drop table if exists ANIMATION;

drop table if exists CLIENT;

drop table if exists DEVIS;

drop table if exists EMPLACEMENT;

drop table if exists EQUIPEMENT;

drop table if exists FORMULE;

drop table if exists INSCRIPTION_SESSION_CLIENT;

drop table if exists INSCRIPTION_SESSION_CLIENT_ACC;

drop table if exists LOCATION;

drop table if exists SESSION;

drop table if exists SOUSCRIT_FORMULE;

drop table if exists TYPE_ANIMATION;

drop table if exists TYPE_EMPLACEMENT;

drop table if exists TYPE_EQUIPEMENT;

drop table if exists TYPE_LOCATION;

drop table if exists TYPE_SAISON;

/*==============================================================*/
/* Table: ACCOMPAGNANT                                          */
/*==============================================================*/
create table ACCOMPAGNANT
(
   ID_ACC               int not null auto_increment,
   ID_CLIENT            int not null,
   NOM_ACC              char(20),
   PRENOM_ACC           char(20),
   AGE_ACC              numeric(2,0),
   primary key (ID_ACC)
);

/*==============================================================*/
/* Table: ACTEUR                                                */
/*==============================================================*/
create table ACTEUR
(
   ID_ACTEUR            int not null auto_increment,
   NOM_ACTEUR           char(20),
   PRENOM_ACTEUR        char(20),
   AGE_ACTEUR           numeric(2,0),
   METIER_ACTEUR        char(20),
   NIVEAU_ACCES_ACTEUR  numeric(1,0),
   SALAIRE_ACTEUR       float(4,2),
   primary key (ID_ACTEUR)
);

/*==============================================================*/
/* Table: ANIMATION                                             */
/*==============================================================*/
create table ANIMATION
(
   ID_ANIMATION         int not null auto_increment,
   ID_ACTEUR            int not null,
   ID_TYPE_ANIMATION    int not null,
   LABEL_ANIMATION      char(20),
   DUREE_ANIMATION      numeric(2,0),
   PREREQUIS_ANIMATION  text,
   primary key (ID_ANIMATION)
);

/*==============================================================*/
/* Table: CLIENT                                                */
/*==============================================================*/
create table CLIENT
(
   ID_CLIENT            int not null auto_increment,
   NOM_CLIENT           char(20),
   PRENOM_CLIENT        char(20),
   ADDRESSE_CLIENT      char(40),
   AGE_CLIENT           numeric(2,0),
   TEL_CLIENT           numeric(20,0),
   primary key (ID_CLIENT)
);

/*==============================================================*/
/* Table: DEVIS                                                 */
/*==============================================================*/
create table DEVIS
(
   ID_DEVIS             int not null auto_increment,
   ID_CLIENT            int not null,
   TOTAL_A_PAYER_DEVIS  float(4,2),
   primary key (ID_DEVIS)
);

/*==============================================================*/
/* Table: EMPLACEMENT                                           */
/*==============================================================*/
create table EMPLACEMENT
(
   ID_EMPLACEMENT       int not null auto_increment,
   ID_TYPE_EMPLACEMENT  int not null,
   TARIF_EMPLACEMENT    float(4,2),
   TAILLE_EMPLACEMENT   float(4),
   COMMENTAIRES_EMPLACEMENT text,
   NUMERO_EMPLACEMENT   char(10),
   REGLEMENT_EMPLACEMENT text,
   primary key (ID_EMPLACEMENT)
);

/*==============================================================*/
/* Table: EQUIPEMENT                                            */
/*==============================================================*/
create table EQUIPEMENT
(
   ID_EQUIPEMENT        int not null auto_increment,
   ID_EMPLACEMENT       int,
   ID_TYPE_EQUIPEMENT   int not null,
   LABEL_EQUIPEMENT     char(20),
   TARIF_EQUIPEMENT     float(3,2),
   primary key (ID_EQUIPEMENT)
);

/*==============================================================*/
/* Table: FORMULE                                               */
/*==============================================================*/
create table FORMULE
(
   ID_FORMULE           int not null auto_increment,
   ID_LOCATION          int not null,
   ID_TYPE_SAISON       int not null,
   TEMPS_SEJOUR_FORMULE numeric(2,0),
   SOUSCRIT_ANIMATION   bool,
   primary key (ID_FORMULE)
);

/*==============================================================*/
/* Table: INSCRIPTION_SESSION_CLIENT                            */
/*==============================================================*/
create table INSCRIPTION_SESSION_CLIENT
(
   ID_SESSION           int not null,
   ID_CLIENT            int not null,
   primary key (ID_SESSION, ID_CLIENT)
);

/*==============================================================*/
/* Table: INSCRIPTION_SESSION_CLIENT_ACC                        */
/*==============================================================*/
create table INSCRIPTION_SESSION_CLIENT_ACC
(
   ID_SESSION           int not null,
   ID_ACC               int not null,
   primary key (ID_SESSION, ID_ACC)
);

/*==============================================================*/
/* Table: LOCATION                                              */
/*==============================================================*/
create table LOCATION
(
   ID_LOCATION          int not null auto_increment,
   ID_EMPLACEMENT       int not null,
   ID_TYPE_LOCATION     int not null,
   TAILLE_LOCATION      float(3),
   NB_PERS_MAX_LOCATION numeric(2,0),
   TARIF_LOCATION       float(4,2),
   CAUTION_LOCATION     float(4,2),
   ETAT_LIBRE_LOCATION  bool,
   primary key (ID_LOCATION)
);

/*==============================================================*/
/* Table: SESSION                                               */
/*==============================================================*/
create table SESSION
(
   ID_SESSION           int not null auto_increment,
   ID_ANIMATION         int not null,
   DATE_DEBUT_SESSION   datetime,
   DATE_FIN_SESSION     datetime,
   HEURE_DEBUT_SESSION  time,
   HEURE_FIN_SESSION    time,
   primary key (ID_SESSION)
);

/*==============================================================*/
/* Table: SOUSCRIT_FORMULE                                      */
/*==============================================================*/
create table SOUSCRIT_FORMULE
(
   ID_FORMULE           int not null,
   ID_DEVIS             int not null,
   primary key (ID_FORMULE, ID_DEVIS)
);

/*==============================================================*/
/* Table: TYPE_ANIMATION                                        */
/*==============================================================*/
create table TYPE_ANIMATION
(
   ID_TYPE_ANIMATION    int not null auto_increment,
   NOM_TYPE_ANIMATION   char(20),
   primary key (ID_TYPE_ANIMATION)
);

alter table TYPE_ANIMATION comment 'Chaque type d''animation sera enregistré comme une entrée un';

/*==============================================================*/
/* Table: TYPE_EMPLACEMENT                                      */
/*==============================================================*/
create table TYPE_EMPLACEMENT
(
   ID_TYPE_EMPLACEMENT  int not null auto_increment,
   NOM_TYPE_EMPLACEMENT char(20),
   primary key (ID_TYPE_EMPLACEMENT)
);

alter table TYPE_EMPLACEMENT comment 'il s''agit du type d''emplacement (pres de la forêt, pres de';

/*==============================================================*/
/* Table: TYPE_EQUIPEMENT                                       */
/*==============================================================*/
create table TYPE_EQUIPEMENT
(
   ID_TYPE_EQUIPEMENT   int not null auto_increment,
   NOM_TYPE_EQUIPEMENT  char(20),
   primary key (ID_TYPE_EQUIPEMENT)
);

alter table TYPE_EQUIPEMENT comment 'il s''agit des types d''équipements (media, jardin, ménage, ';

/*==============================================================*/
/* Table: TYPE_LOCATION                                         */
/*==============================================================*/
create table TYPE_LOCATION
(
   ID_TYPE_LOCATION     int not null auto_increment,
   NOM_TYPE_LOCATION    char(20),
   primary key (ID_TYPE_LOCATION)
);

alter table TYPE_LOCATION comment 'il s''agit du type de location (mobilhome, tente, campingcar';

/*==============================================================*/
/* Table: TYPE_SAISON                                           */
/*==============================================================*/
create table TYPE_SAISON
(
   ID_TYPE_SAISON       int not null auto_increment,
   NOM_TYPE_SAISON      char(10),
   POURCENTAGE_TYPE_SAISON decimal(2,2),
   primary key (ID_TYPE_SAISON)
);

alter table ACCOMPAGNANT add constraint FK_EST_ACCOMPAGNE foreign key (ID_CLIENT)
      references CLIENT (ID_CLIENT) on delete restrict on update restrict;

alter table ANIMATION add constraint FK_EST_ANIME_PAR foreign key (ID_ACTEUR)
      references ACTEUR (ID_ACTEUR) on delete restrict on update restrict;

alter table ANIMATION add constraint FK_EST_DE_TYPE_1 foreign key (ID_TYPE_ANIMATION)
      references TYPE_ANIMATION (ID_TYPE_ANIMATION) on delete restrict on update restrict;

alter table DEVIS add constraint FK_DEMANDE_UN foreign key (ID_CLIENT)
      references CLIENT (ID_CLIENT) on delete restrict on update restrict;

alter table EMPLACEMENT add constraint FK_EST_DE_TYPE_3 foreign key (ID_TYPE_EMPLACEMENT)
      references TYPE_EMPLACEMENT (ID_TYPE_EMPLACEMENT) on delete restrict on update restrict;

alter table EQUIPEMENT add constraint FK_EST_DE_TYPE_4 foreign key (ID_TYPE_EQUIPEMENT)
      references TYPE_EQUIPEMENT (ID_TYPE_EQUIPEMENT) on delete restrict on update restrict;

alter table EQUIPEMENT add constraint FK_POSSEDE foreign key (ID_EMPLACEMENT)
      references EMPLACEMENT (ID_EMPLACEMENT) on delete restrict on update restrict;

alter table FORMULE add constraint FK_EST_DE_TYPE_5 foreign key (ID_TYPE_SAISON)
      references TYPE_SAISON (ID_TYPE_SAISON) on delete restrict on update restrict;

alter table FORMULE add constraint FK_SE_COMPOSE_2 foreign key (ID_LOCATION)
      references LOCATION (ID_LOCATION) on delete restrict on update restrict;

alter table INSCRIPTION_SESSION_CLIENT add constraint FK_INSCRIPTION_SESSION_CLIENT foreign key (ID_SESSION)
      references SESSION (ID_SESSION) on delete restrict on update restrict;

alter table INSCRIPTION_SESSION_CLIENT add constraint FK_INSCRIPTION_SESSION_CLIENT2 foreign key (ID_CLIENT)
      references CLIENT (ID_CLIENT) on delete restrict on update restrict;

alter table INSCRIPTION_SESSION_CLIENT_ACC add constraint FK_INSCRIPTION_SESSION_CLIENT_ACC foreign key (ID_SESSION)
      references SESSION (ID_SESSION) on delete restrict on update restrict;

alter table INSCRIPTION_SESSION_CLIENT_ACC add constraint FK_INSCRIPTION_SESSION_CLIENT_ACC2 foreign key (ID_ACC)
      references ACCOMPAGNANT (ID_ACC) on delete restrict on update restrict;

alter table LOCATION add constraint FK_COMPREND foreign key (ID_EMPLACEMENT)
      references EMPLACEMENT (ID_EMPLACEMENT) on delete restrict on update restrict;

alter table LOCATION add constraint FK_EST_DE_TYPE_2 foreign key (ID_TYPE_LOCATION)
      references TYPE_LOCATION (ID_TYPE_LOCATION) on delete restrict on update restrict;

alter table SESSION add constraint FK_EST_COMPOSE foreign key (ID_ANIMATION)
      references ANIMATION (ID_ANIMATION) on delete restrict on update restrict;

alter table SOUSCRIT_FORMULE add constraint FK_SOUSCRIT_FORMULE foreign key (ID_FORMULE)
      references FORMULE (ID_FORMULE) on delete restrict on update restrict;

alter table SOUSCRIT_FORMULE add constraint FK_SOUSCRIT_FORMULE2 foreign key (ID_DEVIS)
      references DEVIS (ID_DEVIS) on delete restrict on update restrict;

