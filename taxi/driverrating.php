
<?php 
	session_start();
    $con=mysqli_connect('localhost','root','');
	
	if($con) {
	//	echo 'link ok';
	}else {
		echo 'error';
	}
 
	$db_selected = mysqli_select_db($con,"uber"); 
	if (!$db_selected) 
	{ 
	 	die ("Can\'t use yxz : " . mysql_error()); 
	} 
 

	mysqli_query($con,"SET NAMES utf8"); 	
	
	$D_IDnumber = $_SESSION["D_IDnumber"];
	
	$sql="SELECT AVG(D_rating)  from driver_rating where D_IDnumber='$D_IDnumber'";
	$query=mysqli_query($con,$sql);
	
	$ysql="SELECT count(D_rating) FROM driver_rating where D_IDnumber='$D_IDnumber'";
	$queryb=mysqli_query($con,$ysql);
while($row=mysqli_fetch_array($query) )
{
  echo "your average rate is ".$row['0'];
  echo "<br>";
}

while( $rowb=mysqli_fetch_array($queryb))
{
  echo "there are ".$rowb['0'] ;
  echo " rates by passengers";
  echo "<br>";
}

	mysqli_close($con);
	?>

<html>
<input class="btn" type="button" value="back to menu" onclick="window.location.href='driverindex.html'">
</html>



