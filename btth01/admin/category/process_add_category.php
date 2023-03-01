<?php 
   require '../../includes/connectDB.php';
   require '../../includes/function.php';

    $ten_tloai = $_POST['txtCatlabel'];
    $ma_tloai = $_POST['txtCatId'];

    $sqlInsert = "Insert into theloai (ma_tloai, ten_tloai) values ('$ma_tloai', '$ten_tloai')";
    $pdo->exec($sqlInsert);
    header("Location: http://localhost/btth01/admin/category/category.php");
?>