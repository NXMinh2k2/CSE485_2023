<?php
    require '../../includes/connectDB.php';
    require '../../includes/function.php';

    
    $id = isset($_GET['ma_bviet']) ? $_GET['ma_bviet'] : 0;
    $sqlDelete = "delete from baiviet   where ma_bviet = '$id'";
    $statement = $pdo->prepare($sqlDelete);
    $statement->bindValue('ma_bviet', $id);
    $statement->execute();
    print_r($statement);
    header("Location: article.php");
?>
