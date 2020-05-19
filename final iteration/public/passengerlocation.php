<?php 
	session_start();
    $con=mysqli_connect('localhost','root','');
	
	if($con) {
		//echo 'link ok';
	}else {
		echo 'error';
	}
 
	$db_selected = mysqli_select_db($con,"uber"); 
	if (!$db_selected) 
	{ 
	 	die ("Can\'t use yxz : " . mysql_error()); 
	} 
 

	mysqli_query($con,"SET NAMES utf8"); 	
	$sql = "SELECT P.Fname,L.GPSLocation_Latitude,L.GPSLocation_Longitude FROM passenger P, passenger_location L where P.P_IDnumber=L.P_IDnumber";
	$result = mysqli_query($con, $sql);
	if(!$result)
		echo "y";
	 
	if (mysqli_num_rows($result) > 0) {
    while($row = mysqli_fetch_assoc($result)) {
        echo "id: " . $row["Fname"]." Location_Latitude: ".$row["GPSLocation_Latitude"]." Location_Longitude: ".$row["GPSLocation_Longitude"]. "<br>";
    }
} else {
    echo "no passenger nearby";
}
mysqli_close($con);
?>

<html>
<input class="btn" type="button" value="back to menu" onclick="window.location.href='driverindex.html'">
</html>
	