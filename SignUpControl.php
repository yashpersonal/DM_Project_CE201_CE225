<?php
session_start();
require('Connection.php');

$firstname=$_POST['firstname'];
$lastname=$_POST['lastname'];
$email=$_POST['email'];
$cemail=$_POST['remail'];
$password=$_POST['password'];
$gender= $_POST['gender'];
$course= $_POST['course'];
$div= $_POST['division'];
$dob=$_POST['dob'];
$mobileno=$_POST['mobileno'];

$db="user";
$random_no= rand(1,20000);
$sql = "INSERT INTO $db (firstname, lastname, email,cemail,password,dob,mobileno,gender,course,divi,token_id)
 VALUES ('$firstname', '$lastname','$email','$cemail','$password','$dob','$mobileno','$gender','$course','$div','$random_no')";
if ($conn->query($sql) === TRUE)
{
  echo "<script type='text/javascript'>alert('You have been registered Successfully. Now Login to continue')</script>";
  header("Refresh: 0.5;url=Index.php");
}
else
{
  echo "<script type='text/javascript'>alert('This user already exists. Your email :- $email or alternative email :$cemail is already registered with us')</script>";
  header("Refresh: 0.5;url=SignUp.php");  
}

$conn->close();

?>
