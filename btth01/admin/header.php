<header>
        <nav class="navbar navbar-expand-lg bg-body-tertiary shadow p-3 bg-white rounded">
            <div class="container-fluid">
                <div class="h3">
                    <a class="navbar-brand" href="#">Administration</a>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link <?= str_contains($_SERVER['REQUEST_URI'], 'index.php') ? 'active fw-bold' : '' ?>" aria-current="page" href="../admin-home/index.php">Trang chủ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../../index.php">Trang ngoài</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <?= str_contains($_SERVER['REQUEST_URI'], 'category.php') ? 'active fw-bold' : '' ?>" href="../category/category.php">Thể loại</a>
                    </li>   
                    <li class="nav-item">
                        <a class="nav-link <?= str_contains($_SERVER['REQUEST_URI'], 'author.php') ? 'active fw-bold' : '' ?>" href="../author/author.php">Tác giả</a>
                    </li>
                    <li class="nav-item">   
                        <a class="nav-link <?= str_contains($_SERVER['REQUEST_URI'], 'article.php') ? 'active fw-bold' : '' ?>" href="../article/article.php">Bài viết</a>
                    </li>
                </ul>
                </div>
            </div>
        </nav>
    </header>