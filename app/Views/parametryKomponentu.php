<?=$this->extend("layout/template");?>

<?=$this->section("content");?>
<h1>Přehled parametrů daného komponentu </h1>
<div class="row"> 
<?php
    $cesta_pic = 'komponenty_assets/komponenty/';
    $imgKomponent = [
        'src' => $cesta_pic.$komponentDanehoTypu->pic,
        'width' => '7.5%'
        ];

    ?>
    <div class="col-12, text-center">
        <div class="card m-5">
            <div class="card-body">
                <h1 class="text-center"><?= $komponentDanehoTypu->nazev ?></h1>
                <?= img($imgKomponent); ?>
                <p>Odkaz: <a href="<?= $komponentDanehoTypu->odkaz ?>" target="_blank"><?= $komponentDanehoTypu->odkaz ?> </a></p>
                <p>Výrobce: <?= $komponentDanehoTypu->vyrobce ?></p>
                <?php 
                foreach($parametrDanehoKomponentu as $row){
                  echo' <p>'. $row->nazevParametru.': '. $row->hodnota .'</p>';
                }
                ?>
            </div>
        </div>
    </div>
</div>
<?=$this->endSection();?>
