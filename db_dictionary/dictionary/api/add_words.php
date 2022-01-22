<?php
$key = $_GET["key"];
$value = $_GET["value"];

require_once('../lib/db.php');
$ktra = $conn->prepare("SELECT * FROM words WHERE keyword='$key'");
$ktra->execute();
if ($ktra->rowCount() > 0) {
    $ktra->setFetchMode(PDO::FETCH_ASSOC);
    $key = $ktra->fetchAll();    
    echo json_encode($key);
    die();
}

$stmt = $conn->prepare("INSERT INTO words(keyword,type,meaning1) VALUES('$key','noun','$value')");
$stmt->execute();
$key=$stmt->fetchAll();
$conn = null;
echo json_encode($key);


