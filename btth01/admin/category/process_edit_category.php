<?php
    require '../../includes/connectDB.php';
    require '../../includes/function.php';

    $ma_tloai = $_POST['txtCatId'];
    $ten_tloai = $_POST['txtCatlabel'];

    $sql = "Update theloai set ma_tloai = '$ma_tloai', ten_tloai = '$ten_tloai'
            where ma_tloai = :ma_tloai;";
            
    $statement = $pdo->prepare($sql);
    $statement->bindValue('ma_tloai', $ma_tloai);
    $statement->execute();
    header("Location: http://localhost/CSE485_2023/btth01/admin/category/category.php");
?>
