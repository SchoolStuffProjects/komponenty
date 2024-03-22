<?=$this->extend("layout/template");?>

<?=$this->section("content");?>
<h1>Přehled komponentů typu - </h1>
<div class = "row"> 
    <?php
        foreach ($komponentDanehoTypu as $row){  
    ?>
            <div class = "col-xxl-3 col-sm-12 col-lg-6">
                <div class="card m-5">
                <h1 class="text-center"><?= $row->nazev ?></h1>
                <div class="card-body">
                    <p class="card-text text-center"><?= $row->vyrobce_id ?></p>
                </div>
            </div>
        </div>
    <?php } ?>
</div>

<?=$this->endSection();?>