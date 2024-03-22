<?php

namespace App\Controllers;
use App\Models\typKomponentu;
use App\Models\KomponentDanehoTypu;

class Kontroler extends BaseController
{
    var $typKomponentu;
    var $komponentDanehoTypu;

    public function __construct(){
        $this->typKomponentu = new typKomponentu();
        $this->komponentDanehoTypu = new komponentDanehoTypu();
    }

    public function index(): string
    {
        return view('welcome_message');
    }

    public function loadTypesOfComponents(){
        $data['typKomponentu'] = $this->typKomponentu->findAll();
        return view ('TypyKomponentu', $data);
    }

    public function loadComponentsOfCertainType($typKomponent_id){
        $data['komponentDanehoTypu'] = $this->komponentDanehoTypu->where('typKomponent_id', $typKomponent_id)->findAll();
        return view ('VypisKomponentDanehoTypu', $data);
    }
}
