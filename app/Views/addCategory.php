<?=$this->extend("layout/template");?>

<?=$this->section("content");?>

<?= form_open('addCategory') ?>
    <div class="form-group">
        <label for="category_name">Category Name</label>
        <input type="text" class="form-control" id="category_name" name="category_name" required>
    </div>
    <button type="submit" class="btn btn-primary">Add Category</button>
<?= form_close() ?>

<?=$this->endSection();?>
