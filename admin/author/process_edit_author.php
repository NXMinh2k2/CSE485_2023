<?php
    require '../../includes/connectDB.php';
    require '../../includes/function.php';

    $ma_tgia = $_POST['txtAuthorId'];
    $ten_tgia = $_POST['txtAuthorName'];

    $hinh_anh = $_FILES['txtAuthorImage']['name'];
    $target_dir = "../../images/author/";
    $target_file = $target_dir . basename($hinh_anh);
    $hinh_anh_path = basename($hinh_anh);
    move_uploaded_file($_FILES["txtAuthorImage"]["tmp_name"], $target_file);
    
    $sql = "Update tacgia set ma_tgia = '$ma_tgia', ten_tgia = '$ten_tgia', hinh_tgia = '$hinh_anh_path'
            where ma_tgia = :ma_tgia;";

    $statement = $pdo->prepare($sql);
    $statement->bindValue('ma_tgia', $ma_tgia);
    $statement->execute();
    header("Location: http://localhost/CSE485_2023/btth01/admin/author/author.php");
?>