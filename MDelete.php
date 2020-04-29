<?php
include 'init.php';
if(isset($_GET['photo_url'])&&isset($_SESSION['officeNumber'])){
echo $photo_url = $_GET['photo_url'];

$query  = "DELETE FROM municiple_report WHERE photo_url='$photo_url'";
$run = mysqli_query($con,$query);
header('Location: MViewCounty.php' );
}

