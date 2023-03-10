<?php 
  require '../../includes/connectDB.php';
  require '../../includes/function.php';
   $sql = "Select ma_tloai, ten_tloai  from theloai";
   $statement = $pdo->prepare($sql);
   $statement->execute();
   $member = $statement->fetchAll();

   $sql1 = "Select ma_tgia, ten_tgia  from tacgia";
   $statement1 = $pdo->prepare($sql1);
   $statement1->execute();
   $member1 = $statement1->fetchAll();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Music for Life</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
        integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/style_login.css">
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg bg-body-tertiary shadow p-3 bg-white rounded">
            <div class="container-fluid">
                <div class="h3">
                    <a class="navbar-brand" href="#">Administration</a>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="./">Trang ch???</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../index.php">Trang ngo??i</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fw-bold" href="category.php">Th??? lo???i</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="author.php">T??c gi???</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="article.php">B??i vi???t</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

    </header>
    <main class="container mt-5 mb-5">
        <div class="row">
            <div class="col-sm">
                <h3 class="text-center text-uppercase fw-bold">Th??m m???i b??i vi???t</h3>
                <form action="process_add_article.php" method="post" enctype="multipart/form-data">
                <div class="input-group mt-3 mb-3">
                        <span class="input-group-text" id="lblCatName">M?? b??i vi???t</span>
                        <input type="text" class="form-control" name="ma_bviet">
                    </div>
                    <div class="input-group mt-3 mb-3">
                        <span class="input-group-text" id="lblCatName">T??n b??i vi???t</span>
                        <input type="text" class="form-control" name="tieude">
                    </div>
                    <div class="input-group mt-3 mb-3">
                        <span class="input-group-text" id="lblCatName">Ti??u ????? b??i vi???t</span>
                        <input type="text" class="form-control" name="ten_bhat">
                    </div>
                    <p><b> <span class="" id="">T??m b??i vi???t</span></b></p>
                    <div class="input-group mt-3 mb-3">
                        <textarea name="tomtat" id="" cols="30" rows="10"></textarea>
                    </div>
                    <div class="form-group">
                       <p><b><label for="">Th??? Lo???i</label></b></p>

                        <select name="ma_tlloai" id="input" class="form-control">
                            <option value="">Th??? lo???i</option>
                            <?php foreach ($member as $key => $value) {?>
                            <option value="<?php echo $value['ma_tloai'] ?>"><?php echo $value['ten_tloai'] ?></option>
                            <?php    } ?>

                        </select>


                    </div>
                    <div class="form-group">
                       <p><b><label for="">T??c gi???</label></b></p>

                        <select name="ma_tgia" id="input" class="form-control">
                            <option value="">T??c gi???</option>
                            <?php foreach ($member1 as $key => $value) {?>
                            <option value="<?php echo $value['ma_tgia'] ?>"><?php echo $value['ten_tgia'] ?></option>
                            <?php    } ?>

                        </select>
                    

                    </div>
                    <div class="form-group">
                       <p><b><label for="">H??nh ???nh</label></b></p>
                        <input type="file" name="txtArticleImage" id="">
                    </div>
                    <hr>
                    <div class="form-group  float-end ">
                        <input type="submit" value="Th??m" class="btn btn-success">
                        <a href="article.php" class="btn btn-warning ">Quay l???i</a>
                    </div>
                </form>
            </div>
        </div>
    </main>
    <footer class="bg-white d-flex justify-content-center align-items-center border-top border-secondary  border-2"
        style="height:80px">
        <h4 class="text-center text-uppercase fw-bold">TLU's music garden</h4>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous">
    </script>
</body>

</html>