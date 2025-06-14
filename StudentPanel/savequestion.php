<?php
include_once 'head.php';
if (!isset($_SESSION['soru_sepeti'])) {
    $_SESSION['soru_sepeti'] = array();
}
$soruSepetiCount = count($_SESSION['soru_sepeti']);
?>

<?php if (isset($_SESSION['Id']) && isset($_SESSION['Username'])) { ?>

<div class="container-scroller">
    <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex align-items-top flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
            <div class="me-3">
                <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-bs-toggle="minimize">
                    <span class="icon-menu"></span>
                </button>
            </div>
            <div>
                <a class="navbar-brand brand-logo" href="index.html">
                    <img src="../assets/images/logo.svg" alt="logo"/>
                </a>
                <a class="navbar-brand brand-logo-mini" href="index.html">
                    <img src="../assets/images/logo-mini.svg" alt="logo"/>
                </a>
            </div>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-top">
            <ul class="navbar-nav">
                <li class="nav-item font-weight-semibold d-none d-lg-block ms-0">
                    <h1 class="welcome-text">Hoş Geldin! <span
                            class="text-black fw-bold"><?php echo $_SESSION['Name']; ?></span></h1>
                    <h3 class="welcome-sub-text">Öğrenci eğitim paneli ile sınavlar hazırlayabilir ve
                        çözebilirsiniz.</h3>
                </li>
            </ul>
            <?php
            include_once 'navbar.php';
            ?>
            <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button"
                    data-bs-toggle="offcanvas">
                <span class="mdi mdi-menu"></span>
            </button>
        </div>
    </nav>
    <div class="container-fluid page-body-wrapper">
        <?php
        include_once 'sidebar.php';
        ?>
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="row">
                    <div class="col-md-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Sınavı Kaydet</h4>
                                <p class="card-description">
                                    Burada hazırlamış olduğun soruları sınav olarak kaydedebilirsin. Oluşturacağın sınava isim verebilirsin.
                                </p>
                                <form class="forms-sample" action="questionpost.php" method="post">
                                    <div class="form-group">
                                        <label for="exampleInputUsername1">Sınav Adı</label>
                                        <input type="text" class="form-control" name="title" placeholder="Sınav Adı">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Soru Sayısı</label>
                                        <input type="text" class="form-control" id="number" value="<?php echo $soruSepetiCount; ?>" disabled>
                                    </div>
                                    <?php if (isset($_GET['error'])) { ?>
                                        <span class="text-danger"><?php echo $_GET['error']; ?></span>
                                    <?php } ?>
                                    <button type="submit" class="btn btn-primary me-2">Kaydet</button>
                                    <a href="index.php" class="btn btn-light">İptal</a>
                                </form>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
    <?php
    include_once 'script.php';
    ?>
    <?php } else {
        header("Location: login.php?error=" . urlencode("Lütfen bu sayfayı görüntülemek için önce oturum açın."));
    } ?>
