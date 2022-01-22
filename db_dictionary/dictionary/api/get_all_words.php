<?php
require_once('../lib/db.php');
$ds = $conn->prepare("select * from words");
$ds->execute();
$ds->setFetchMode(PDO::FETCH_ASSOC);
$result = $ds->fetchAll();
echo json_encode($result); 
?>