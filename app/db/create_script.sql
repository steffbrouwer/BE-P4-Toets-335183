
-- Check if the database exists
DROP DATABASE IF EXISTS `Mvc-2209a-P4`;

-- Create a new Database
CREATE DATABASE IF NOT EXISTS `Mvc-2209a-P4`;

-- Use database Mvc-2209a-P4
Use `Mvc-2209a-P4`;

DROP TABLE IF EXISTS overzicht;

CREATE TABLE IF NOT EXISTS overzicht
(
    Id                      TINYINT         UNSIGNED        NOT NULL    AUTO_INCREMENT
   ,StudentId               INT                             NOT NULL
   ,Rijschool               VARCHAR(20)                     NOT NULL
   ,Stad                    VARCHAR(20)                     NOT NULL
   ,Rijbewijscategorie      VARCHAR(10)                     NOT NULL
   ,Datum                   DATE                            NOT NULL
   ,UitslagExamen           VARCHAR(12)                     NOT NULL


   ,CONSTRAINT      PK_overzicht_Id   PRIMARY KEY CLUSTERED(Id)
) ENGINE=InnoDB;


INSERT INTO overzicht
(
     StudentId
    ,Rijschool
    ,Stad
    ,Rijbewijscategorie
    ,Datum
    ,UitslagExamen
)

VALUES
     ('100234', 'VolGasVooruit', 'Rotterdam', 'B', '2023-04-03', 'Geslaagd')
    ,('123432', 'InZijnVierDoorDeBocht', 'Sliedrecht', 'C', '2023-03-01', 'Geslaagd')
    ,('103234', 'LinksomRechtsom', 'Dordrecht', 'D', '2023-05-15', 'Geslaagd')
    ,('106452', 'OpDeVluchtStrook', 'Zwijndrecht', 'AM', '2023-05-08', 'Gezakt')
    ,('104546', 'RechtDoorEnGaan', 'Rotterdam', 'B', '2023-04-17', 'Gezakt')
    ,('100333', 'AltijdGeslaagd', 'Dordrecht', 'B', '2023-05-12', 'Geslaagd')
    ,('124444', 'RijlesVoorJou', 'Rotterdam', 'B', '2023-04-12', 'Geslaagd');


DROP TABLE IF EXISTS Examinator;

CREATE TABLE IF NOT EXISTS Examinator
(
    Id                  TINYINT         UNSIGNED        NOT NULL    AUTO_INCREMENT
   ,Voornaam            VARCHAR(20)                     NOT NULL
   ,Tussenvoegsel       VARCHAR(10)                     NOT NULL
   ,Achternaam          VARCHAR(20)                     NOT NULL
   ,Mobiel              VARCHAR(11)                     NOT NULL


   ,CONSTRAINT      PK_Examinator_Id   PRIMARY KEY CLUSTERED(Id)
) ENGINE=InnoDB;

INSERT INTO Examinator
(
        Voornaam
        ,Tussenvoegsel
        ,Achternaam
        ,Mobiel
)
VALUES
     ('Manuel', 'van', 'Meekeren', '06-28493823')
    ,('Lisette', 'den', 'Dongen', '06-24383299')
    ,('Jurswailly', '', 'Luciano', '06-48293846')
    ,('Naswha', '', 'Salawi', '06-34291219');
