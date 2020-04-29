<! DOCTYPE html>
<html lang="en">
<head>
	
<title>Hello Admin</title>
<meta charset="utf-8">
<style type="text/css">
body{
	background-color: grey;
}
#container{
	margin:auto;
	width: 1000;
	height: 700px;
	background-color: #fff; 
	border: thick solid #cccccc;
	border-radius: 10px;
}
.chart{
	width: 425px; 
	height: 500px;
	float: left;
	border: thin;
	margin: 10px;
	background-color: #ccffc1;
	border-radius: 10px;
	margin-left: 50px;
	margin-right: 25px;
	margin-top: 50px;
}
.table{
	width: 425px; 
	height: 500px;
	float: left;
	border: thin;
	margin: 10px;
	background-color: #ccffc1;
	border-radius: 10px;
	margin-left: 25px;
	margin-right: 50px;
	margin-top: 50px;
}
.tablee{
	margin-left: 60px;
}
.tablee a button{
	padding-left: 5px;
	padding-right: 5px;
	font-size: 16px;
}

.nav{
  width:97%;
  margin; auto;
  font-size: 15px;
  font-family: Helvetica;
}
ul{
  margin:0 auto;
  float: left;
  background: linear-gradient(#006400,#228b22);
  background: -moz-linear-gradient(#006400,#228b22);
  background: -webkit-linear-gradient(#006400,#228b22);
  width:100%;
  height: 100px;
}
ul li {
  list-style: none;
  margin: 0;
  float:right;
  display: inline;
  position: relative;

}
ul li a {
  border-right: 1px dotted #fff;
  border-radius: 0 30px 0 30px;
  padding:13px 25px;
  color:#fff;
  text-decoration: none;
  display: inline-block;
  background: linear-gradient(#006400,#228b22);
  background: -moz-linear-gradient(#006400,#228b22);
  background: -webkit-linear-gradient(#006400,#228b22);
}
ul li a:hover {
  

  background: linear-gradient(#b22222, #8b0000);
  background: -moz-linear-gradient(#b22222, #8b0000);
  background: -webkit-linear-gradient(#b22222, #8b0000);
}


</style>
</head>




<body> 
<div class="nav">
<ul>
  <?php
  include 'init.php';
  if(isset($_SESSION['officeNumber'])){
  	echo '<li>'.'<a href ="logout.php"> Logout</a>'.'</li>';
  }
  ?>
</ul>
  
  
</div>
	
<!--Here goes the table-->
</body>
</html>


<?php
//include 'init.php';
if(isset($_GET['photo_url'])&&isset($_SESSION['officeNumber'])){
$photo_url = $_GET['photo_url'];

include 'index5.php';
}
?>