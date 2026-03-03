create table AKTIVNOSTI
(
   AKTIVOST_ID          int not null  comment '',
   NAZIV_AKTIVNOSTI     varchar(20) not null  comment '',
   DATUM                date not null  comment '',
   MESTO                varchar(20) not null  comment '',
   primary key (AKTIVOST_ID)
);


create table AUTOBUSI
(
   AUTOBUS_ID           int not null  comment '',
   CENA                 int not null  comment '',
   RED_VOZNJE           datetime  comment '',
   KOMPANIJA            varchar(15)  comment '',
   MESTO_POLAZNKA       varchar(15) not null  comment '',
   primary key (AUTOBUS_ID)
);


create table AUTOMOBILI
(
   AUTO_ID              int not null  comment '',
   CENA                 int not null  comment '',
   RED_VOZNJE           datetime  comment '',
   VRSTA_AUTA           varchar(15) not null  comment '',
   GORIVO               varchar(15)  comment '',
   primary key (AUTO_ID)
);


create table AVIONI
(
   AVION_ID             int not null  comment '',
   CENA                 int not null  comment '',
   RED_VOZNJE           datetime  comment '',
   KLASA                varchar(20) not null  comment '',
   IME_KOMPANIJE        varchar(15) not null  comment '',
   primary key (AVION_ID)
);


create table DOMACINI
(
   DOMACIN_ID           int not null  comment '',
   POL                  char(1) not null  comment '',
   JEZIK                varchar(3) not null  comment '',
   STATUSA              varchar(3) not null  comment '',
   DRZAVA               varchar(3) not null  comment '',
   GRAD                 varchar(15) not null  comment '',
   IME                  varchar(20) not null  comment '',
   PREZIME              varchar(20) not null  comment '',
   GODINE               int not null  comment '',
   EMAIL                varchar(20)  comment '',
   OPIS                 varchar(50)  comment '',
   GODINA_RODJENJA      int not null  comment '',
   REJTING_ID           int not null  comment '',
   ADRESA               varchar(30) not null  comment '',
   primary key (DOMACIN_ID)
);


create table DONOSEPOKLONE
(
   GOST_ID              int not null  comment '',
   POKLON_ID            int not null  comment '',
   primary key (GOST_ID, POKLON_ID)
);


create table DRZAVE
(
   DRZAVA_SKRACENICA    varchar(3) not null  comment '',
   NAZIV_DRZAVA         varchar(20) not null  comment '',
   primary key (DRZAVA_SKRACENICA)
);


create table GOSTI
(
   GOST_ID              int not null  comment '',
   POL                  char(1) not null  comment '',
   JEZIK                varchar(3) not null  comment '',
   STATUS               varchar(3) not null  comment '',
   DRZAVA               varchar(3) not null  comment '',
   GRAD                 varchar(15) not null  comment '',
   IME                  varchar(20) not null  comment '',
   PREZIME              varchar(20) not null  comment '',
   GODINE               int not null  comment '',
   EMAIL                varchar(20)  comment '',
   OPIS                 varchar(50)  comment '',
   GODINA_RODJENJA      int not null  comment '',
   primary key (GOST_ID)
);


create table GRADOVI
(
   DRZAVA_SKRACENICA    varchar(3) not null  comment '',
   NAZIV_GRADA          varchar(15) not null  comment '',
   SKRACENICA_GRADA     varchar(3) not null  comment '',
   primary key (DRZAVA_SKRACENICA, NAZIV_GRADA)
);


create table JEZICI
(
   JEZIK_OZNAKA         varchar(3) not null  comment '',
   NAZIV_JEZIKA         varchar(20) not null  comment '',
   primary key (JEZIK_OZNAKA)
);


create table KORISNICI
(
   KORISNIK_ID          int not null  comment '',
   POL                  char(1) not null  comment '',
   JEZIK                varchar(3) not null  comment '',
   STATUS               varchar(3) not null  comment '',
   DRZAVA               varchar(3) not null  comment '',
   GRAD                 varchar(15) not null  comment '',
   IME                  varchar(20) not null  comment '',
   PREZIME              varchar(20) not null  comment '',
   GODINE               int not null  comment '',
   EMAIL                varchar(20)  comment '',
   OPIS                 varchar(50)  comment '',
   GODINA_RODJENJA      int not null  comment '',
   primary key (KORISNIK_ID)
);

create table NACINIPUTOVANJA
(
   NACIN_PUTOVANJA_ID   int not null  comment '',
   CENA                 int not null  comment '',
   RED_VOZNJE           datetime  comment '',
   primary key (NACIN_PUTOVANJA_ID)
);

create table POKLONI
(
   POKLON_ID            int not null  comment '',
   KOLICINA             int not null  comment '',
   MATERIJAL            varchar(15)  comment '',
   primary key (POKLON_ID)
);

create table POLOVI
(
   POL_OZNAKA           char(1) not null  comment '',
   NAZIV_POLA           varchar(10) not null  comment '',
   primary key (POL_OZNAKA)
);

create table PRIJATELJI
(
   PRIJATELJ_ID         int not null  comment '',
   KORISNIK_ID          int not null  comment '',
   primary key (PRIJATELJ_ID, KORISNIK_ID)
);

create table PRIJAVE
(
   PRIJAVA_ID           int not null  comment '',
   SMESTAJ_ID           int not null  comment '',
   NACIN_PUTOVANJA_ID   int not null  comment '',
   GOST_ID              int not null  comment '',
   VERIFIKACIJA         varchar(2) not null  comment '',
   DATUM_DOLASKA        date not null  comment '',
   DATUM_ODLASKA        date not null  comment '',
   primary key (PRIJAVA_ID)
);

create table REJTINZI
(
   REJTING_ID           int not null  comment '',
   GOST_ID              int not null  comment '',
   AKTIVOST_ID          int not null  comment '',
   POHVALA              varchar(20)  comment '',
   OCENA                int not null  comment '',
   POENI                int not null  comment '',
   primary key (REJTING_ID)
);

create table SMESTAJI
(
   SMESTAJ_ID           int not null  comment '',
   SMESTAJ_OZNAKA       char(1) not null  comment '',
   DOMACIN_ID           int not null  comment '',
   USLUGE               varchar(20) not null  comment '',
   DODATNE_USLUGE       varchar(20)  comment '',
   POVRSINA_SOBE        decimal(2,2) not null  comment '',
   OPIS                 varchar(50)  comment '',
   primary key (SMESTAJ_ID)
);

create table STATUSI
(
   STATUS_OZNAKA        varchar(3) not null  comment '',
   NAZIV_STATUSA        varchar(20) not null  comment '',
   primary key (STATUS_OZNAKA)
);

create table TIPOVIAKTIVNOSTI
(
   NAZIV_AKTIVNOSTI     varchar(20) not null  comment '',
   BROJ_POENA           int not null  comment '',
   TRAJANJE_AKTIVNOSTI  time not null  comment '',
   primary key (NAZIV_AKTIVNOSTI)
);

create table UCESTVOVANJE
(
   GOST_ID              int not null  comment '',
   AKTIVOST_ID          int not null  comment '',
   OSVOJENI_POENI       int not null  comment '',
   primary key (GOST_ID, AKTIVOST_ID)
);

create table VOZOVI
(
   VOZ_ID               int not null  comment '',
   CENA                 int not null  comment '',
   RED_VOZNJE           datetime  comment '',
   KABINA               varchar(2) not null  comment '',
   MAX_BRZINA_VOZA      int not null  comment '',
   primary key (VOZ_ID)
);

create table VRSTESMESTAJA
(
   SMESTAJ_OZNAKA       char(1) not null  comment '',
   VRSTA_SMESTAJA       varchar(10) not null  comment '',
   primary key (SMESTAJ_OZNAKA)
);

alter table AKTIVNOSTI add constraint FK_AKTIVNOS_ODREDJENE_TIPOVIAK foreign key (NAZIV_AKTIVNOSTI)
      references TIPOVIAKTIVNOSTI (NAZIV_AKTIVNOSTI) on delete restrict on update restrict;

alter table AUTOBUSI add constraint FK_AUTOBUSI_VRSTE_PRE_NACINIPU foreign key (AUTOBUS_ID)
      references NACINIPUTOVANJA (NACIN_PUTOVANJA_ID) on delete restrict on update restrict;

alter table AUTOMOBILI add constraint FK_AUTOMOBI_AUTOMOBIL_NACINIPU foreign key (AUTO_ID)
      references NACINIPUTOVANJA (NACIN_PUTOVANJA_ID) on delete restrict on update restrict;

alter table AVIONI add constraint FK_AVIONI_VRSTE_PRE_NACINIPU foreign key (AVION_ID)
      references NACINIPUTOVANJA (NACIN_PUTOVANJA_ID) on delete restrict on update restrict;

alter table DOMACINI add constraint FK_DOMACINI_KORISNIK__KORISNIC foreign key (DOMACIN_ID)
      references KORISNICI (KORISNIK_ID) on delete restrict on update restrict;

alter table DOMACINI add constraint FK_DOMACINI_REJTINZI_REJTINZI foreign key (REJTING_ID)
      references REJTINZI (REJTING_ID) on delete restrict on update restrict;

alter table DONOSEPOKLONE add constraint FK_DONOSEPO_NOSENJE_P_GOSTI foreign key (GOST_ID)
      references GOSTI (GOST_ID) on delete restrict on update restrict;

alter table DONOSEPOKLONE add constraint FK_DONOSEPO_NOSENJE_P_POKLONI foreign key (POKLON_ID)
      references POKLONI (POKLON_ID) on delete restrict on update restrict;

alter table GOSTI add constraint FK_GOSTI_KORISNIK__KORISNIC foreign key (GOST_ID)
      references KORISNICI (KORISNIK_ID) on delete restrict on update restrict;

alter table GRADOVI add constraint FK_GRADOVI_GRADOVI_S_DRZAVE foreign key (DRZAVA_SKRACENICA)
      references DRZAVE (DRZAVA_SKRACENICA) on delete restrict on update restrict;

alter table KORISNICI add constraint FK_KORISNIC_JEZICI_KO_JEZICI foreign key (JEZIK)
      references JEZICI (JEZIK_OZNAKA) on delete restrict on update restrict;

alter table KORISNICI add constraint FK_KORISNIC_KORISNICI_GRADOVI foreign key (DRZAVA, GRAD)
      references GRADOVI (DRZAVA_SKRACENICA, NAZIV_GRADA) on delete restrict on update restrict;

alter table KORISNICI add constraint FK_KORISNIC_KORISNICI_POLOVI foreign key (POL)
      references POLOVI (POL_OZNAKA) on delete restrict on update restrict;

alter table KORISNICI add constraint FK_KORISNIC_STATUSI_K_STATUSI foreign key (STATUS)
      references STATUSI (STATUS_OZNAKA) on delete restrict on update restrict;

alter table PRIJATELJI add constraint FK_PRIJATEL_KORISNICI_KORISNIC foreign key (KORISNIK_ID)
      references KORISNICI (KORISNIK_ID) on delete restrict on update restrict;

alter table PRIJATELJI add constraint FK_PRIJATEL_PRIJATELJ_KORISNIC foreign key (PRIJATELJ_ID)
      references KORISNICI (KORISNIK_ID) on delete restrict on update restrict;

alter table PRIJAVE add constraint FK_PRIJAVE_BIRANJE_N_NACINIPU foreign key (NACIN_PUTOVANJA_ID)
      references NACINIPUTOVANJA (NACIN_PUTOVANJA_ID) on delete restrict on update restrict;

alter table PRIJAVE add constraint FK_PRIJAVE_TRAZENJE__GOSTI foreign key (GOST_ID)
      references GOSTI (GOST_ID) on delete restrict on update restrict;

alter table PRIJAVE add constraint FK_PRIJAVE_U_PRIJAVA_SMESTAJI foreign key (SMESTAJ_ID)
      references SMESTAJI (SMESTAJ_ID) on delete restrict on update restrict;

alter table REJTINZI add constraint FK_REJTINZI_OSVOJENI__UCESTVOV foreign key (GOST_ID, AKTIVOST_ID)
      references UCESTVOVANJE (GOST_ID, AKTIVOST_ID) on delete restrict on update restrict;

alter table SMESTAJI add constraint FK_SMESTAJI_POSEDOVAN_DOMACINI foreign key (DOMACIN_ID)
      references DOMACINI (DOMACIN_ID) on delete restrict on update restrict;

alter table SMESTAJI add constraint FK_SMESTAJI_SMESTAJI__VRSTESME foreign key (SMESTAJ_OZNAKA)
      references VRSTESMESTAJA (SMESTAJ_OZNAKA) on delete restrict on update restrict;

alter table UCESTVOVANJE add constraint FK_UCESTVOV_UCESCE_U__AKTIVNOS foreign key (AKTIVOST_ID)
      references AKTIVNOSTI (AKTIVOST_ID) on delete restrict on update restrict;

alter table UCESTVOVANJE add constraint FK_UCESTVOV_UCESTVOVA_GOSTI foreign key (GOST_ID)
      references GOSTI (GOST_ID) on delete restrict on update restrict;

alter table VOZOVI add constraint FK_VOZOVI_VRSTE_PRE_NACINIPU foreign key (VOZ_ID)
      references NACINIPUTOVANJA (NACIN_PUTOVANJA_ID) on delete restrict on update restrict;

