<?php

namespace App\Controllers;
use App\Models\typKomponentu;
use App\Models\KomponentDanehoTypu;
use Config\MyConfig;

class Kontroler extends BaseController
{
    var $typKomponentu;
    var $komponentDanehoTypu;
    var $config;

    public function __construct(){
        $this->typKomponentu = new typKomponentu();
        $this->komponentDanehoTypu = new komponentDanehoTypu();
        $this->config = new MyConfig();
    }

    public function index(): string
    {
        return view('welcome_message');
    }

    public function loadTypesOfComponents(){
        $data['typKomponentu'] = $this->typKomponentu->findAll();
        return view ('TypyKomponentu', $data);
    }

    public function loadComponentsOfCertainType($typKomponent_url){
        $numCards = $this->config->numCards;
        $typKomponent_id = $this->typKomponentu->where('url', $typKomponent_url)->findAll()[0]->idKomponent;
        
        $data['komponentDanehoTypu'] = $this->komponentDanehoTypu->where('typKomponent_id', $typKomponent_id)->paginate($numCards);
        $data['pager'] = $this->komponentDanehoTypu->pager;
        return view('VypisKomponentDanehoTypu', $data);
    }
    

    public function loadParametersOfComponents($id){
        $data['komponentDanehoTypu'] = $this->komponentDanehoTypu->join('vyrobce', 'vyrobce.idVyrobce = komponent.vyrobce_id', 'inner')->find($id);
        $data['parametrDanehoKomponentu'] = $this->komponentDanehoTypu->join('parametr', 'parametr.komponent_id = komponent.id', 'inner')
        ->join('nazevparametr', 'nazevparametr.id = parametr.nazevParametr_id')->where('komponent_id', $id)->findAll();
        return view ('parametryKomponentu', $data);
    }
}
