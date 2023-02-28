<?php 
    require '../../includes/connectDB.php';
    require '../../includes/function.php';

    $ma_tgia = $_POST['txtAuthorId'];
    $ten_tgia = $_POST['txtAuthorName'];
    $hinh_anh = $_FILES['fileToUpload']['name'];

    $target_dir = "../../images/author/";
    $target_file = $target_dir . basename($hinh_anh);
    move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file);

    header("Location: http://localhost/CSE485_2023/btth01/admin/author/author.php");

    $sqlInsert = "Insert into tacgia (ma_tgia, ten_tgia, hinh_tgia) values ('$ma_tgia', '$ten_tgia', '$hinh_anh')";
    $pdo->exec($sqlInsert);
    // echo "<img src= '".$target_file."' />"
    
?>