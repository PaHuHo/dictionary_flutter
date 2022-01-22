<?php
$key = $_GET["key"];
$value = $_GET["value"];

require_once('../lib/db.php');
if ($value == 1) {
    $ktra = $conn->prepare("SELECT * FROM words WHERE keyword='$key'");
    $ktra->execute();
    if ($ktra->rowCount() > 0) {
        $ktra->setFetchMode(PDO::FETCH_ASSOC);
        $key = $ktra->fetchAll();
        echo json_encode($key);
        die();
    }
} else {
    $ktra = $conn->prepare("SELECT * FROM `words` WHERE keyword like '%$key%'");
    $ktra->execute();
    if ($ktra->rowCount() > 0) {
        $ktra->setFetchMode(PDO::FETCH_ASSOC);
        $key = $ktra->fetchAll();
        echo json_encode($key);
        die();
    }
}
