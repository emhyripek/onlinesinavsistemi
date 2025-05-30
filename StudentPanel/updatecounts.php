<?php
include_once "../connection.php";

if(isset($_POST['correctCount']) && isset($_POST['incorrectCount']) && isset($_POST['Id'])) {
    $Id = $_POST['Id'];
    $correctCount = $_POST['correctCount'];
    $incorrectCount = $_POST['incorrectCount'];

    // Puan hesaplama (örnek: doğru sayısının toplam soruya oranı * 100)
    $total = $correctCount + $incorrectCount;
    $puan = ($total > 0) ? ($correctCount / $total) * 100 : 0;

    $update_query = $conn->prepare("UPDATE sptests SET Correct = ?, Wrong = ?, Point = ? WHERE Id = ?");
    $update_query->execute([$correctCount, $incorrectCount, $puan, $Id]);

    echo "Sptest tablosu güncellendi.";
} else {
    echo "POST verileri eksik";
}
?>
