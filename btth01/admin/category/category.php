<?php 
   require '../../includes/connectDB.php';
   require '../../includes/function.php';

   if(isset($_GET['ma_tloai'])){
       $ma_tloai = $_GET['ma_tloai'];
       $sqlDeleteBaiViet = "DELETE FROM baiviet WHERE ma_tloai=:ma_tloai";
       pdo($pdo, $sqlDeleteBaiViet, ['ma_tloai' => $ma_tloai]);
       
       $sqlDeleteTheLoai = "DELETE FROM theloai WHERE ma_tloai=:ma_tloai;";
       pdo($pdo, $sqlDeleteTheLoai, ['ma_tloai' => $ma_tloai]);
       header("Location: category.php");
    }
    
     // ------------------------

    $sql = "Select ma_tloai, ten_tloai  from theloai";
    $statement = $pdo->prepare($sql);
    $statement->execute();
    $member = $statement->fetchAll();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Music for Life</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/style_login.css">
</head>
<body>
    <?php  include '../header.php'?>
    <main class="container mt-5 mb-5">
        <!-- <h3 class="text-center text-uppercase mb-3 text-primary">CẢM NHẬN VỀ BÀI HÁT</h3> -->
        <div class="row">
            <div class="col-sm">
                <a href="add_category.php" class="btn btn-success">Thêm mới</a>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Tên thể loại</th>
                            <th>Sửa</th>
                            <th>Xóa</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                            foreach($member as $type) {
                        ?>
                            <tr>
                                <th scope="row"><?= $type['ma_tloai'] ?></th>
                                <td><?= $type['ten_tloai'] ?></td>
                                <td>
                                    <a href="edit_category.php?ma_tloai=<?= $type['ma_tloai'] ?>"><i class="fa-solid fa-pen-to-square"></i></a>
                                </td>
                                <td>
                                    <a href="category.php?ma_tloai=<?= $type['ma_tloai'] ?>"><i class="fa-solid fa-trash"></i></a>
                                </td>
                            </tr>
                        <?php    }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </main>
    <footer class="bg-white d-flex justify-content-center align-items-center border-top border-secondary  border-2" style="height:80px">
        <h4 class="text-center text-uppercase fw-bold">TLU's music garden</h4>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>