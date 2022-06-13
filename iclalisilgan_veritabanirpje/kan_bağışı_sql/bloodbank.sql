CREATE DATABASE `bloodbankms` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

SELECT `admin`.`idadmin`,
    `admin`.`admin_adi`,
    `admin`.`admin_soyadi`,
    `admin`.`admin_id`,
    `admin`.`admin_sifre`
FROM `bloodbankms`.`admin`;

SELECT `donor`.`iddonor`,
    `donor`.`donor_adi`,
    `donor`.`donor_soyadi`,
    `donor`.`donor_tck`,
    `donor`.`donor_anne`,
    `donor`.`donor_baba`,
    `donor`.`donor_cinsiyet`,
    `donor`.`donor_dogumtarihi`,
    `donor`.`donor_kangrubu`,
    `donor`.`donor_tup`
FROM `bloodbankms`.`donor`;

SELECT `hastane`.`idhastane`,
    `hastane`.`hastane_adi`,
    `hastane`.`hastane_telefon`,
    `hastane`.`hastane_adresi`
FROM `bloodbankms`.`hastane`;

SELECT `kan`.`idkangrubu`,
    `kan`.`kan_adi`,
    `kan`.`kan_miktari`
FROM `bloodbankms`.`kan`;
