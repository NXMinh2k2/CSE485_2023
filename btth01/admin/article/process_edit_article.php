<?php
    require '../../includes/connectDB.php';
    require '../../includes/function.php';

    
    $id = isset($_GET['ma_bviet']) ? $_GET['ma_bviet'] : 0;
    $tieude = $_POST['tieude'];
    $ten_bhat = $_POST['ten_bhat'];
    $tomtat = $_POST['tomtat'];
    $ma_tlloai = $_POST['ma_tlloai'];
    $ma_tgia = $_POST['ma_tgia'];
    $hinh_anh = $_FILES['txtArticleImage']['name'];
    print_r($hinh_anh);
    $target_dir = "../../images/article/";
    $target_file = $target_dir . basename($hinh_anh);
    $hinh_anh_path = basename($hinh_anh);
    move_uploaded_file($_FILES["txtArticleImage"]["tmp_name"], $target_file);
    $sqlUpdate = "update baiviet set tieude = '$tieude', ten_bhat = '$ten_bhat' ,tomtat ='$tomtat' ,ma_tloai = '$ma_tlloai',ma_tgia ='$ma_tgia',hinhanh='$hinh_anh' where ma_bviet = '$id'";
    $statement = $pdo->prepare($sqlUpdate);

    $statement->bindValue('ma_bviet', $id);
    $statement->execute();
    print_r($statement);
    header("Location: article.php");
?>
