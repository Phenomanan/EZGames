<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="background.css">
</head>
<body>

<?php
	$database="mydb";
	$conn = mysqli_connect(localhost, $username, $password, 		$database) or die(mysqli_connect_error());
	$result=mysqli_query($conn, $query);
	while($row = mysqli_fetch_array($result, MYSQLI_NUM))
	{
		$num = count($row);
		echo "<tr>";
		for($x=0; $x<$num; $x++)
		{echo "<td>", $row[$x], "</td>";}
		echo "</tr>";
	}
	mysqli_close($conn);
?>
