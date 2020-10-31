<?php
  
    $servername = "localhost";  
    $username = "root";  
    $password = "";  
    $conn = mysqli_connect ("localhost","root","","Shoecart") or die("unable to connect to host");  
/*      $sql = mysqli_select_db ('test',$conn) or die("unable to connect to database");*/ 
session_start();
    
    ?>
    
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Customer Login</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <style>
legend{
  color:white;
}
  body{
    background-image:	url("login1.jpeg");
    background-size: 1500px 1000px;
    color: white;
  }
  #d1{
	padding: 10px;
	background-color: #A0522D;
	text-align: center;
	margin-top: -20px;
	margin-left: -10px;
	width: 100%;
	position: fixed;
}
#d2
{
	background-color: #A0522D;
	width: 540px;
	height: 500px;
	margin-left: 950px;
  position: relative;

}
td
{
	padding: 10px;
	font-size: 20px;
}
input
{
	padding: 10px;
  background-color:	#DEB887;

}
</style>
    </head>

 <body>

<div id="d1"><h1 style="margin-top: 30px;">Please login to Visit the Shoe Mall!</h1></div></br><</br></br></br></br></br><br>
<div id="d2" align="center">
<?php
if(isset($_POST['name'])&&isset($_POST['email'])&&isset($_POST['password'])&&isset($_POST['phone'])&&isset($_POST['address']))
{
	$name=$_POST['name'];
	$email=$_POST['email'];
	$password=md5($_POST['password']);
	$phone=$_POST['phone'];
	$address=$_POST['address'];

  

    $query="INSERT INTO `customers` VALUES('','$name','$email','$password','$phone','$address')";
    if(mysqli_query($conn,$query))
    {
      echo "<script>alert('Successfully Logged in!')</script>";
      echo "<script>location.href='catalog.php'</script>";
    }
    else
    {
      echo "<script>alert('Error in Logging In. Try after some time')</script>";
    }
  }

?>
<fieldset>
  <legend>Customer Login:</legend>
<form action="login.php" method="post">
	<table>
  <tr>
			<td>
				Name:
			</td>
			<td>
				<input type="text" name="name" placeholder="name">
			</td>
		</tr>
		<tr>
			<td>
				Email:
			</td>
			<td>
				<input type="text" name="email" placeholder="Email">
			</td>
		</tr>
		<tr>
			<td>
				Password:
			</td>
			<td>
				<input type="password" name="password" placeholder="password">
			</td>
		</tr>
    <tr>
			<td>
				Phone:
			</td>
			<td>
				<input type="text" name="phone" placeholder="phone" required autofocus pattern="[0-9]{10}" title="Phone number must be numerical of 10 digits">
			</td>
		</tr>
    <tr>
			<td>
				Address:
			</td>
			<td>
				<input type="text" name="address" placeholder="address">
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" name="submit" value="Sign In" id="login">
			</td>
		</tr>
</table>
</fieldset>
</form>
</div>
</body>
</html>
