<?=$this->extend("layout/template");?>

<?=$this->section("content");?>
<h1>Přehled parametrů daného komponentu </h1>
<div class = "row"> 
    <?php

    foreach ($parametryKomponentu as $row){
        $cesta_pic = 'komponenty_assets/komponenty/';

    $imgKomponent = [
        'src' => $cesta_pic.$row->pic,
        'width' => '100%'
        ];
        
    ?>
            <div class = "col-xxl-3 col-sm-12 col-lg-6">
                <div class="card m-5">
                <h1 class="text-center"><?= $row->nazev ?> </h1>
                <div class="card-body">
                    <p class="card-text text-center"><?= anchor($row->odkaz) ?> </p>
                    <p class="card-text text-center"> <?= img($imgKomponent); ?> </p>
                    <p class="card-text text-center">výrobce: <?= $row->vyrobce ?> </p>
                </div>
            </div>
        </div>
    <?php } ?>
</div>

<?=$this->endSection();?>