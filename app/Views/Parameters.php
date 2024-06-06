<?=$this->extend("layout/template");?>

<?=$this->section("content");?>
<h1>Přehled parametrů daného komponentu </h1>
<div class="row"> 
<?php
    $cesta_pic = 'komponenty_assets/komponenty/';
    $imgKomponent = [
        'src' => $cesta_pic.$Component->pic,
        'width' => '7.5%'
        ];

    ?>
    <div class="col-12, text-center">
        <div class="card m-5">
            <div class="card-body">
                <h1 class="text-center"><?= $Component->nazev ?></h1>
                <?= img($imgKomponent); ?>
                <p>Odkaz: <a href="<?= $Component->odkaz ?>" target="_blank"><?= $Component->odkaz ?> </a></p>
                <p>Výrobce: <?= $Component->vyrobce ?></p>
                <?php 
                foreach($Parameter as $row){
                  echo' <p>'. $row->nazevParametru.': '. $row->hodnota .'</p>';
                }
                ?>
            </div>
        </div>
    </div>
</div>
<?=$this->endSection();?>
