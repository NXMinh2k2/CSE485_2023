<?php 
   require '../../includes/connectDB.php';
   require '../../includes/function.php';


    $tieude = $_POST['tieude'];
    $ten_bhat = $_POST['ten_bhat'];
    $tomtat = $_POST['tomtat'];
    $ma_tlloai = $_POST['ma_tlloai'];
    $ma_tgia = $_POST['ma_tgia'];
    $ma_bviet = $_POST['ma_bviet'];
    $hinh_anh = $_FILES['txtArticleImage']['name'];
    print_r($hinh_anh);
    $target_dir = "../../images/article/";
    $target_file = $target_dir . basename($hinh_anh);
    $hinh_anh_path = basename($hinh_anh);
    move_uploaded_file($_FILES["txtArticleImage"]["tmp_name"], $target_file);
    $sqlInsert = "Insert into baiviet(ma_bviet , tieude, ten_bhat, tomtat, ma_tloai, ma_tgia, hinhanh) values ('$ma_bviet','$tieude', '$ten_bhat','$tomtat','$ma_tlloai','$ma_tgia','$hinh_anh')";
    $pdo->exec($sqlInsert);
    header("Location: article.php");
?>