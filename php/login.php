<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="background.css">
<title>EZ Games</title>

<?php $username=$_POST["Username"]; $password=$_POST["Password"];
		
?>

<body>
	<h2>Game Inventory</h2>
	
	<table align="center" border="2" cellspacing="3" cellpadding="3">
		<tr>
			<td>PID</td><td>Title</td><td>Price</td>
		</tr>
		<?php 
			$query="SELECT * FROM nonmoderatorViewsGame;";		
			require 'serverconnect.php';
		?>
	</table> <br><br><br><br>
	<table align="center" border="2" cellspacing="3" cellpadding="3">
		<tr>
			<td>RevID</td><td>AuthorID</td><td>Content</td><td>avgRating</td>
		</tr>
		<?php 
			$query="SELECT * FROM nonmoderatorViewsReview;";		
			require 'serverconnect.php';
		?>
	</table>

</body>

</html>
