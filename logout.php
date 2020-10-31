<?php
   $servername = "localhost";  
   $username = "root";  
   $password = "";  
   $conn = mysqli_connect ("localhost","root","","Shoecart") or die("unable to connect to host");  

session_start();
if(isset($_SESSION['c_id'])&&isset($_SESSION['order']))
{
	unset($_SESSION['c_id']);
	unset($_SESSION['order']);
	header('Location: login.php');
}
else
{
	header('Location: login.php');

}
?>