<?php
  session_start();
  
       $servername = "localhost";  
       $username = "root";  
       $password = "";  
       $conn = mysqli_connect ("localhost","root","","Shoecart") or die("unable to connect to host");  
       
      
?>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Shopping Cart</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<style>
@import url('https://fonts.googleapis.com/css?family=Titillium+Web');

*{
    font-family: 'Titillium Web', sans-serif;
}
.product{
border: 1px solid #eaeaec;
 padding: 10px;
text-align: center;
background-color: #efefef;
height: 500px;
width:250px;
position:relative;
        }

#wrap{
  background: #eee;
  list-style: none;
  margin: -1px 19px 3px -1px;
  padding: 5px;
  text-align: center;
background-color: #efefef;
position: relative;
width: 150px;
  height: 450px;
 
}
#wrap li{
 
  padding: 5px 0;
  align: center;
}
#wrap li img{
  height:200px;
  width: 350px;
  flex:1;
  position: relative;
}
#wrap li input{
  flex:3;
  align: center; 
}
.navbar {
 
  padding: 5px;
	background-color: powderblue;
	text-align: right;
	margin-top: -20px;
	margin-left: -279px;
	width: 100%;
	position: fixed;
}
.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  align: right;
}
.navbar a:hover {
  background-color: black;
}
</style>

<body>
<div class="container" style="width: 65%">
<div class="navbar">
<h1 align="center">Welcome to Shoe Mall!</h1>
  <a href="cart.php">View Cart</a>
  <a href="logout.php">Logout</a>
  </div><br><br><br><br><br><br><br><br>

<?php
       $query = "SELECT * FROM products ORDER BY id ASC ";
       $result = mysqli_query($conn,$query);
       if(mysqli_num_rows($result) > 0) {

        while ($row = mysqli_fetch_array($result)) {

            ?>
        <div class="col-md-3">

<form action="cart.php?action=add&id=<?php echo $row["id"]; ?>" method="post">
<div class="product">
<ul id="wrap">
<li><img src="<?php echo $row["Image"]; ?>" class="img-responsive"></li>
<li><h5 class="text-info"><?php echo $row["name"]; ?></h5></li>
<li><h5 class="text-danger"><?php echo $row["price"]; ?></h5></li>
<li><input type="number" name="quantity" class="form-control" value="1"></li>
<li><input type="hidden" name="hidden_name" value="<?php echo $row["name"]; ?>"></li>
<li><input type="hidden" name="hidden_price" value="<?php echo $row["price"]; ?>"></li>
<li><input type="submit" name="add" style="margin-top: 5px;" class="btn btn-success"
 value="Add to Cart"> </li>
 </ul>
</div>

</form>
</div>
<?php
        }
      }
      ?>
    
</body>
</html>                       
