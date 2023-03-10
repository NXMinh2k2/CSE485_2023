<?php 
    require 'includes/connectDB.php';
    require 'includes/function.php';

    $ma_bviet=isset($_GET['ma_bviet'])?$_GET['ma_bviet']:0;

    $sql = "SELECT hinhanh, tomtat, noidung, baiviet.ma_bviet, baiviet.tieude, baiviet.ten_bhat, tacgia.ten_tgia as `ten_tacgia`, theloai.ten_tloai, baiviet.ngayviet 
            FROM baiviet 
            JOIN tacgia ON baiviet.ma_tgia = tacgia.ma_tgia JOIN theloai ON baiviet.ma_tloai = theloai.ma_tloai 
            where baiviet.ma_bviet = :ma_bviet;";
    $statement = $pdo->prepare($sql);
    $statement->bindValue('ma_bviet', $ma_bviet);
    $statement->execute();
    $member = $statement->fetch();

?> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Music for Life</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg bg-body-tertiary shadow p-3 bg-white rounded">
            <div class="container-fluid">
                <div class="my-logo">
                    <a class="navbar-brand" href="#">
                        <img src="images/logo2.png" alt="" class="img-fluid">
                    </a>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="./">Trang ch???</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link" href="./login.php">????ng nh???p</a>
                    </li>
                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="N???i dung c???n t??m" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">T??m</button>
                </form>
                </div>
            </div>
        </nav>

    </header>
    <main class="container mt-5">
        <!-- <h3 class="text-center text-uppercase mb-3 text-primary">C???M NH???N V??? B??I H??T</h3> -->
       
                <div class="row mb-5">
                    <div class="col-sm-4">
                        <img src="images/songs/<?= $member['hinhanh'] ?>" class="img-fluid" alt="...">
                    </div>
                    <div class="col-sm-8">
                        <h5 class="card-title mb-2">
                            <a href="" class="text-decoration-none"><?= $member['tieude'] ?></a>
                        </h5>
                        <p class="card-text"><span class=" fw-bold">B??i h??t: </span><?= $member['ten_bhat'] ?></p>
                        <p class="card-text"><span class=" fw-bold">Th??? lo???i: </span><?= $member['ten_tloai'] ?></p>
                        <p class="card-text"><span class=" fw-bold">T??m t???t: </span><?= $member['tomtat'] ?></p>
                        <p class="card-text"><span class=" fw-bold">N???i dung: </span><?= $member['noidung'] ?></p>
                        <p class="card-text"><span class=" fw-bold">T??c gi???: </span><?= $member['ten_tacgia'] ?></p>

                    </div>          
        </div>
    </main>
    <footer class="bg-white d-flex justify-content-center align-items-center border-top border-secondary  border-2" style="height:80px">
        <h4 class="text-center text-uppercase fw-bold">TLU's music garden</h4>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>