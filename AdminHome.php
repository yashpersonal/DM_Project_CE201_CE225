<!DOCTYPE html>
<html lang="en">
<head>
  <title>ELECTIONS</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
<body>
<?php include('AdminHeader.php');?>
<div class="container-fluid bg-3 text-center">  
<div class="row">  
<div class="col-sm-3">
</div>
<div class="col-sm-6">
	<div class="jumbotron text-center"  style="background-color:#61CDF5;color:white">
		<div class="col-sm-12">
			<form action="" method="post">
			<div class="form-group">
			  <input type="text" class="form-control" name="date_to_start" id="pwd" placeholder="Enter From Date" required>
			</div>

			<div class="form-group">
			  <input type="text" class="form-control" name="date_to_end" id="pwd" placeholder="Enter End Date" required>
			</div>

			<input type="submit" name="start" class="btn btn-primary btn-block" value="Start Elections" >
			<input type="submit" name="stop" class="btn btn-primary btn-block" value="Stop Elections" >
			</form>

			<?php

		require('connection.php');
		        
			if(isset($_POST['start']))
			{
				$from = $_POST['date_to_start'];
				$end = $_POST['date_to_end'];
				if( $from !="stop" && $end != "stop")
				{
					$updatequery="update elections set status=1,fromdate='$from',todate='$end'";
					$res=mysqli_query($conn, $updatequery);
						//$result=mysqli_query($conn, $updatequery);
					//echo "<script type='text/javascript'>alert('Election started!')</script>";
					//$sql = "INSERT INTO elections(id,name,fromdate,todate,status)VALUES(1,'All' '$from','$end','1')";
						if ($res)
						{
							echo "<script type='text/javascript'>alert('Election started!')</script>";
						}
						
				}
					
			}
			if(isset($_POST['stop']))
			{
					if($_POST['date_to_start'] == "stop" && $_POST['date_to_end'] == "stop")
					{
						$updatequery="update elections set status=0";
						$result=mysqli_query($conn, $updatequery);
						if($result)
						{
							echo "<script type='text/javascript'>alert('Election stopped!')</script>";
					    }

					}
					
				
			}	

			?>
		</div>
		<br><br><br><br/><br/><br/>
	</div>	
	<div class="jumbotron"  style="background-color:lightgreen;color:white">
		<div class="row">
			<div class="col-sm-12">
				<h2><span class="glyphicon glyphicon-hourglass"></span> Timer</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
			<h2><?php include('Timer.php');?></h2>		
			</div>
		</div>
	</div>
	<div class="jumbotron"  style="background-color:#f7bc47;color:white">
		<div class="row">
			<div class="col-sm-12">
				<h2><span class="glyphicon glyphicon-list-alt"></span> Results</h2>
				<a href="ResultsHome.php"><button type="button" class="btn btn-warning btn-block">Click Here</button></a>
			</div>
		</div>
	</div>
</div>
</div>
</div>
<?php include('Footer.html');?>
</body>
</html>
