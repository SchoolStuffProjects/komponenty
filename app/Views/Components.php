<?=$this->extend("layout/template");?>

<?=$this->section("content");?>
<h1>Přehled komponentů dle typu</h1>
<div class = "row"> 
    <?php
        foreach ($Component as $row){  
            $cesta_pic = 'komponenty_assets/komponenty/';
        $imgKomponent = [
            'src' => $cesta_pic.$row->pic,
            'width' => '100%'
            ];
    ?>
            <div class = "col-xxl-3 col-sm-12 col-lg-6">
                <div class="card m-5">
                <h1 class="text-center"><?= anchor('Parameters/'.$row->id, $row->nazev)  ?></h1>
                <div class="card-body">
                    <p class="card-text text-center"> <?= img($imgKomponent); ?></p>
                </div>
            </div>
        </div>
    <?php } ?>
    <footer>
        <div class="d-flex">
            <div class="mx-auto text-center pagination a"> <?= $pager->links(); ?> </div>
        </div>
    </footer>
</div>

<?=$this->endSection();?>