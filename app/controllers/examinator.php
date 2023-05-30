<?php

class examinator extends BaseController
{
    private $examinatorModel;

    public function __construct()
    {
        $this->examinatorModel = $this->model('examinatorModel');
    }

    public function overzichtexaminator()
    {
        $result = $this->examinatorModel->getexaminator();

        //  var_dump($result);
        $rows = "";
        foreach ($result as $examinator) {
            $rows .= "<tr>
                        <td>$examinator->Voornaam</td>
                        <td>$examinator->Tussenvoegsel</td>
                        <td>$examinator->Achternaam</td>
                        <td>$examinator->Mobiel</td>         
                      </tr>";
        }
        
        $data = [
            'title' => 'examinators in dienst',
            'rows' => $rows
        ];

        $this->view('examinator/overzichtexaminator', $data);
    }
}