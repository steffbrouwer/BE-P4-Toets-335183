<?php

class examinatorModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getexaminator()
    {
        $sql = "SELECT Id
                      ,Voornaam
                      ,Tussenvoegsel
                      ,Achternaam
                      ,Mobiel
                FROM  examinator";

        $this->db->query($sql);
        return $this->db->resultSet();
    }

    
    public function getexaminatorById($Id)
    {
        $sql = "SELECT Voornaam
                      ,Tussenvoegsel
                      ,Achternaam
                      ,DatumInDienst
                      ,AantalSterren
                FROM  examinator
                WHERE Id = $Id";

        $this->db->query($sql);

        return $this->db->single();
    }
}