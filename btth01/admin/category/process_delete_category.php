<?php 
   require '../../includes/connectDB.php';
   require '../../includes/function.php';

    $ma_tloai = $_GET['ma_tloai'];

    $sqlDelete = "Delete from theloai inner join baiviet on theloai.ma_tloai = baiviet.ma_tloai 
                    where ma_tloai = :ma_tloai";
                    
    // echo '<script type="text/javascript">
    //         window.onload = function () { 
    //             alert("thể loại tồn tại trong bảng bài viết")
    //         }
    //         </script>';
    pdo($pdo, $sqlDelete, ['ma_tloai' => $ma_tloai]);

    // header("Location: http://localhost/btth01/admin/category/category.php");
?>