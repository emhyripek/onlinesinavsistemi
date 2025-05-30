<?php
include_once 'head.php';
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
                <a class="navbar-brand brand-logo" href="index.php">
                    <img src="../assets/images/icon/student-logo.png" alt="logo"/>
                </a>
                <a class="navbar-brand brand-logo-mini" href="index.php">
                    <img src="../assets/images/logo-mini.png" alt="logo"/>
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
                    <div class="col-lg-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Hazırladığım Sınavlar</h4>
                                <p class="card-description">
                                    Burada hazırlamış olduğun sınavlar bulunmaktadır. Dilediğin zaman çözebilir ve doğru
                                    yanlış bilgilerini görebilirsin.
                                </p>
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Sınav Adı</th>
                                            <th>Soru Sayısı</th>
                                            <th>Doğru Sayısı</th>
                                            <th>Yanlış Sayısı</th>
                                            <th>Puan</th>
                                            <th>İşlemler</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <?php
                                        $i = 1;
                                        $id = $_SESSION['Id'];
                                        $test = $conn->query("SELECT * FROM sptests WHERE user_id = $id")->fetchAll();
                                        foreach ($test as $item) {
                                            $testIds = explode(',', $item['test_id']);
                                            $numberOfTests = count($testIds);
                                            ?>
                                            <tr>
                                                <td><?php echo $i; ?></td>
                                                <td><p class="ms-1 mb-1 fw-bold"><?php echo $item['Title']; ?></p></td>
                                                <td><?php echo $numberOfTests; ?> Soru</td>
                                                <!---Puanlama Sistemi eklendi--->
                                                <?php
                                                    $puanBirimi = 100 / $numberOfTests;
                                                    $toplamPuan = round($puanBirimi * $item['Correct'], 2);
                                                ?>
                                                <td><?php echo $item['Correct']; ?></td>
                                                <td><?php echo $item['Wrong']; ?></td>
                                                <td><strong><?php echo $toplamPuan; ?> puan</strong></td>
                                                <td>
                                                    <a class="btn btn-outline-primary btn-sm" onclick="testiSil(<?php echo $item['Id'] ?>)" href="#" ><i
                                                                class="mdi mdi-delete"></i>
                                                        Sınavı Sil
                                                    </a>
                                                    <a class="btn btn-outline-success btn-sm" href="exam.php?Id=<?php echo $item['Id'] ?>"><i
                                                                class="mdi mdi-pencil"></i>
                                                        Sınavı Çöz
                                                    </a>
                                                </td>
                                            </tr>
                                            <?php
                                            $i++;
                                        } ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php
    include_once 'script.php'; ?>
    <script>
        function testiSil(testId) {
            $.ajax({
                type: "POST",
                url: "removetests.php",
                data: { testId: testId},
                success: function () {
                    alert("Test başarıyla silindi.");
                    location.reload();
                },
                error: function (error) {
                    alert("Hata oluştu : " + error);
                }
            });
        }
    </script>
    <?php } else {
        header("Location: login.php?error=" . urlencode("Lütfen bu sayfayı görüntülemek için önce oturum açın."));
    } ?>
