<?php
include('includes/config.php');
session_start();
error_reporting(0);


  ?>
<!DOCTYPE html>
<html>
<head>
	<title>Programs Offered</title>
</head>
<body>
	<h1>Programs Offered</h1>
	<ul style="list-style-type: square;">
	<?php
		$programs = array("Infant care", "Toddler care", "Preschool", "After-school care");
		foreach ($programs as $program) {
			echo "<li style='color: blue; font-weight: bold;'>" . $program . "</li>";
		}
	?>
	</ul>
</body>
</html>

      