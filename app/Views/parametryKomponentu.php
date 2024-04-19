<?=$this->extend("layout/template");?>

<?=$this->section("content");?>
<h1>Přehled parametrů daného komponentu </h1>
<div class="row"> 
<?php
    $cesta_pic = 'komponenty_assets/komponenty/';
    $imgKomponent = [
        'src' => $cesta_pic.$komponentDanehoTypu->pic,
        'width' => '100%'
        ];

    ?>
    <div class="col-xxl-3 col-sm-12 col-lg-6">
        <div class="card m-5">
            <div class="card-body">
                <h1 class="text-center"><?= $komponentDanehoTypu->nazev ?></h1>
                <?= img($imgKomponent); ?>
                <p>Odkaz: <?= $komponentDanehoTypu->odkaz ?></p>
                <p>Výrobce: <?= $komponentDanehoTypu->vyrobce ?></p>
                <p><?= $komponentDanehoTypu->nazevParametru,': ', $komponentDanehoTypu->hodnota ?></p>
            </div>
        </div>
    </div>
</div>
<?=$this->endSection();?>
