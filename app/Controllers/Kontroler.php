<?php

namespace App\Controllers;
use App\Models\Category;
use App\Models\Komponent;
use Config\MyConfig;

class Kontroler extends BaseController
{
    var $Category;
    var $Komponent;
    var $config;

    public function __construct(){
        $this->Category = new Category();
        $this->Komponent = new Komponent();
        $this->config = new MyConfig();
    }

    public function loadCategories(){
        $data['Kategorie'] = $this->Category->findAll();
        return view ('Categories', $data);
    }

    public function loadComponents($typKomponent_url){
        $numCards = $this->config->numCards;
        $typKomponent_id = $this->Category->where('url', $typKomponent_url)->findAll()[0]->idKomponent;
        
        $data['Component'] = $this->Komponent->where('typKomponent_id', $typKomponent_id)->paginate($numCards);
        $data['pager'] = $this->Komponent->pager;
        return view('Components', $data);
    }
    

    public function loadParameters($id){
        $data['Component'] = $this->Komponent->join('vyrobce', 'vyrobce.idVyrobce = komponent.vyrobce_id', 'inner')->find($id);
        $data['Parameter'] = $this->Komponent
        ->join('parametr', 'parametr.komponent_id = komponent.id', 'inner')
        ->join('nazevparametr', 'nazevparametr.id = parametr.nazevParametr_id')
        ->where('komponent_id', $id)->findAll();
        return view ('Parameters', $data);
    }

    public function addCategory(){
        $data['newCategory'] = "nová kategorie";
        echo view('NewCategory', $data);
    }
}
