<?php
require('connection.php');
$sql = "SELECT fromdate,todate FROM elections where status=1";
$result = $conn->query($sql);
while($row = $result->fetch_assoc())
{
	$targetfdate=$row['fromdate'];
	$targetdate=$row['todate'];

	echo"".$targetfdate." - ".$targetdate."<br/>";
}	
?>