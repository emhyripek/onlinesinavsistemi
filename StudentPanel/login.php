<?php
    include_once 'head.php';
?>

<?php if (isset($_SESSION['Id']) && isset($_SESSION['Username'])) {
    header("Location: index.php");
    exit();
}?>

<div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth px-0">
            <div class="row w-100 mx-0">
                <div class="col-lg-4 mx-auto">
                    <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                        <div class="login-logo"   style="text-align: center;">
                            <img src="../assets/images/logo.png" alt="logo">
                        </div>
                        <h4 class="fw-light mt-3">Hoş Geldin! Giriş yap ve soruları keşfet.</h4>
                        <h6 class="fw-light mt-3">Giriş Yap</h6>
                        <form class="pt-3" method="post" action="loginpost.php">
                            <br/>
                            <input type="text" class="form-control form-control-lg" name="username" placeholder="Kullanıcı Adı">
                            <br/>
                            <input type="password" class="form-control form-control-lg" name="password" placeholder="Şifre">
                            <br/>
                            <button class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" type="submit">Giriş Yap</button>
                            <br/>
                            <?php if (isset($_GET['error'])) { ?>
                                <span class="text-danger"><?php echo $_GET['error']; ?></span>
                            <?php } ?>
                            <?php if (isset($_GET['success'])) { ?>
                                <span class="text-primary"><?php echo $_GET['success']; ?></span>
                            <?php } ?>
                            <div class="text-center mt-4 fw-light">
                                Henüz bir hesabın yok mu ? <a href="register.php" class="text-primary">Kayıt Ol</a>
                            </div>
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