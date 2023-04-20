#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: user
#------------------------------------------------------------

CREATE TABLE user(
        id_user         Int  Auto_increment  NOT NULL ,
        surname         Varchar (255) NOT NULL ,
        name            Varchar (255) NOT NULL ,
        firstname       Varchar (255) NOT NULL ,
        email           Varchar (255) NOT NULL ,
        password        Varchar (255) NOT NULL ,
        born            Date NOT NULL ,
        profile_picture Varchar (255) ,
        banner_user     Varchar (255) ,
        user_type       Varchar (255) NOT NULL ,
        singer          TinyINT ,
        city            Varchar (255) NOT NULL ,
        adress          Text ,
        desc_user       Text NOT NULL ,
        siret           Varchar (255) NOT NULL
	,CONSTRAINT user_PK PRIMARY KEY (id_user)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: band
#------------------------------------------------------------

CREATE TABLE band(
        id_band        Int  Auto_increment  NOT NULL ,
        band           Varchar (255) NOT NULL ,
        bio_band       Text NOT NULL ,
        city           Varchar (255) NOT NULL ,
        sono_band      TinyINT ,
        search_player  TinyINT NOT NULL ,
        search_playing TinyINT NOT NULL ,
        presta1        Time NOT NULL ,
        price1         DECIMAL (15,3)  NOT NULL ,
        presta2        Time NOT NULL ,
        price2         DECIMAL (15,3)  NOT NULL ,
        presta3        Time NOT NULL ,
        id_user        Int NOT NULL
	,CONSTRAINT band_PK PRIMARY KEY (id_band)

	,CONSTRAINT band_user_FK FOREIGN KEY (id_user) REFERENCES user(id_user)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: messages
#------------------------------------------------------------

CREATE TABLE messages(
        id_message Int  Auto_increment  NOT NULL ,
        message    Text NOT NULL ,
        date       Datetime NOT NULL
	,CONSTRAINT messages_PK PRIMARY KEY (id_message)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: ad_pro
#------------------------------------------------------------

CREATE TABLE ad_pro(
        id_ad_pro      Int  Auto_increment  NOT NULL ,
        title_ad_pro   Varchar (255) NOT NULL ,
        content_ad_pro Text NOT NULL ,
        price_ad_pro   DECIMAL (15,3)  NOT NULL ,
        sono           TinyINT ,
        id_user        Int NOT NULL
	,CONSTRAINT ad_pro_PK PRIMARY KEY (id_ad_pro)

	,CONSTRAINT ad_pro_user_FK FOREIGN KEY (id_user) REFERENCES user(id_user)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: ad_band
#------------------------------------------------------------

CREATE TABLE ad_band(
        id_ad_band      Int  Auto_increment  NOT NULL ,
        title_ad_band   Varchar (255) NOT NULL ,
        content_ad_band Text NOT NULL ,
        id_band         Int NOT NULL
	,CONSTRAINT ad_band_PK PRIMARY KEY (id_ad_band)

	,CONSTRAINT ad_band_band_FK FOREIGN KEY (id_band) REFERENCES band(id_band)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: notice
#------------------------------------------------------------

CREATE TABLE notice(
        id_notice      Int  Auto_increment  NOT NULL ,
        content_notice Text NOT NULL ,
        rating         Int NOT NULL
	,CONSTRAINT notice_PK PRIMARY KEY (id_notice)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: style
#------------------------------------------------------------

CREATE TABLE style(
        id_style   Int  Auto_increment  NOT NULL ,
        name_style Varchar (255) NOT NULL
	,CONSTRAINT style_PK PRIMARY KEY (id_style)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: equipboard
#------------------------------------------------------------

CREATE TABLE equipboard(
        id_equip   Int  Auto_increment  NOT NULL ,
        name_equip Varchar (255) NOT NULL
	,CONSTRAINT equipboard_PK PRIMARY KEY (id_equip)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: mastery
#------------------------------------------------------------

CREATE TABLE mastery(
        id_mastery   Int  Auto_increment  NOT NULL ,
        name_mastery Varchar (255) NOT NULL
	,CONSTRAINT mastery_PK PRIMARY KEY (id_mastery)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: send
#------------------------------------------------------------

CREATE TABLE send(
        id_user    Int NOT NULL ,
        id_message Int NOT NULL ,
        id_band    Int NOT NULL
	,CONSTRAINT send_PK PRIMARY KEY (id_user,id_message,id_band)

	,CONSTRAINT send_user_FK FOREIGN KEY (id_user) REFERENCES user(id_user)
	,CONSTRAINT send_messages0_FK FOREIGN KEY (id_message) REFERENCES messages(id_message)
	,CONSTRAINT send_band1_FK FOREIGN KEY (id_band) REFERENCES band(id_band)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: my_style
#------------------------------------------------------------

CREATE TABLE my_style(
        id_style Int NOT NULL ,
        id_user  Int NOT NULL
	,CONSTRAINT my_style_PK PRIMARY KEY (id_style,id_user)

	,CONSTRAINT my_style_style_FK FOREIGN KEY (id_style) REFERENCES style(id_style)
	,CONSTRAINT my_style_user0_FK FOREIGN KEY (id_user) REFERENCES user(id_user)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: rate
#------------------------------------------------------------

CREATE TABLE rate(
        id_user   Int NOT NULL ,
        id_notice Int NOT NULL ,
        id_band   Int NOT NULL
	,CONSTRAINT rate_PK PRIMARY KEY (id_user,id_notice,id_band)

	,CONSTRAINT rate_user_FK FOREIGN KEY (id_user) REFERENCES user(id_user)
	,CONSTRAINT rate_notice0_FK FOREIGN KEY (id_notice) REFERENCES notice(id_notice)
	,CONSTRAINT rate_band1_FK FOREIGN KEY (id_band) REFERENCES band(id_band)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: members
#------------------------------------------------------------

CREATE TABLE members(
        id_band Int NOT NULL ,
        id_user Int NOT NULL
	,CONSTRAINT members_PK PRIMARY KEY (id_band,id_user)

	,CONSTRAINT members_band_FK FOREIGN KEY (id_band) REFERENCES band(id_band)
	,CONSTRAINT members_user0_FK FOREIGN KEY (id_user) REFERENCES user(id_user)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: my_eb
#------------------------------------------------------------

CREATE TABLE my_eb(
        id_equip Int NOT NULL ,
        id_user  Int NOT NULL
	,CONSTRAINT my_eb_PK PRIMARY KEY (id_equip,id_user)

	,CONSTRAINT my_eb_equipboard_FK FOREIGN KEY (id_equip) REFERENCES equipboard(id_equip)
	,CONSTRAINT my_eb_user0_FK FOREIGN KEY (id_user) REFERENCES user(id_user)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: my_mastery
#------------------------------------------------------------

CREATE TABLE my_mastery(
        id_mastery Int NOT NULL ,
        id_user    Int NOT NULL
	,CONSTRAINT my_mastery_PK PRIMARY KEY (id_mastery,id_user)

	,CONSTRAINT my_mastery_mastery_FK FOREIGN KEY (id_mastery) REFERENCES mastery(id_mastery)
	,CONSTRAINT my_mastery_user0_FK FOREIGN KEY (id_user) REFERENCES user(id_user)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: band_style
#------------------------------------------------------------

CREATE TABLE band_style(
        id_style Int NOT NULL ,
        id_band  Int NOT NULL
	,CONSTRAINT band_style_PK PRIMARY KEY (id_style,id_band)

	,CONSTRAINT band_style_style_FK FOREIGN KEY (id_style) REFERENCES style(id_style)
	,CONSTRAINT band_style_band0_FK FOREIGN KEY (id_band) REFERENCES band(id_band)
)ENGINE=InnoDB;

