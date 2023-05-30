<?php

class Instructeur extends BaseController
{
    private $InstructeurModel;

    public function __construct()
    {
        $this->InstructeurModel = $this->model('InstructeurModel');
    }

    public function index()
    {
        $result = $this->InstructeurModel->getInstructeur();

        //  var_dump($result);

        $rows = "";
        foreach ($result as $Instructeur) {
            $date = date_create($result->DatumInDienst);
            $formatted_date = date_format($date, "d-m-Y");
            $rows .= "<tr>
                        <td>$result->Voornaam</td>   
                        <td>$result->Tussenvoegsel</td>
                        <td>$result->Achternaam</td>
                        <td>$result->Mobiel</td>
                        <td>$formatted_date</td>
                        <td>$result->AantalSterren</td>   
                        <td>
                            <a href='" . URLROOT . "/Instructeur/overzichtvoertuigen/$Instructeur->Id'>
                                <i class='bi bi-car-front'></i>
                            </a>
                        </td>            
                      </tr>";
        }
        
        $data = [
            'title' => 'Instructeurs in dienst',
            'rows' => $rows
        ];

        $this->view('Instructeur/index', $data);
    }

    public function overzichtVoertuigen($Id)
    {
        $result = $this->InstructeurModel->getToegewezenVoertuigen($Id);

        var_dump($result);
    }
}