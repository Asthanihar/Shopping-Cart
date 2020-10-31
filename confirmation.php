<?php

              
if(isset($_POST['submit']))
{
$fname=$_POST['name'];
$pid=$_POST['pid'];
$price=$_POST['price'];
$quantity=$_POST['quantity'];
$edate=$_POST['edate'];

$fp = fopen('data.txt.txt', 'a');
fwrite($fp, $fname);
fwrite($fp, $pid);
fwrite($fp, $price);
fwrite($fp, $quantity);
fwrite($fp, $edate);
fclose($fp);
if(fwrite())
{
echo "data has been stored in a text file.";
}
else
{
    echo "data has not been stored";
}
}
echo '<a href="question1.html">Goback to the form.</a>';
echo "what the fuck";
?>