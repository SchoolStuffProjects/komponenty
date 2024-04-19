<?=$this->extend("layout/template");?>

<?=$this->section("content");?>
<h1>Přehled typů komponentů</h1>
<div class = "row"> 
    <?php
        foreach ($typKomponentu as $row){  
    ?>
            <div class = "col-xxl-3 col-sm-12 col-lg-6">
                <div class="card m-5">
                <h1 class="text-center"><?= $row->typKomponent ?></h1>
                <div class="card-body">
                    <p class="card-title text-center"><?= anchor('VypisKomponetDanehoTypu/'.$row->idKomponent, $row->url) ?><p>
                </div>
            </div>
        </div>
    <?php } ?>
</div>

<?=$this->endSection();?>