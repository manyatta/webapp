<?php
include 'init.php';
if(isset($_GET['photo_url'])&&isset($_SESSION['officeNumber'])){
echo $photo_url = $_GET['photo_url'];

$query  = "DELETE FROM nema_image WHERE photo_url='$photo_url'";
$run = mysqli_query($con,$query);
header('Location: NViewCounty.php' );
}

