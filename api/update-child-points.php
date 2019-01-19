<?php 
include '../dbconnect.php';

$json_response = array(); 

$student_id = $_GET['student_id'];
$credit_points =	$_GET['credit_points'];

$sql = "UPDATE tbl_child_points SET credit_points = '$credit_points' WHERE student_id = '$student_id'";

if (mysqli_query($mysqli,$sql)) {

	$row_array['message'] = "Child Points Successfully Updated";
	array_push($json_response,$row_array); 

}else{

	$row_array['message'] = "Something went wrong";
	array_push($json_response,$row_array); 
}
echo json_encode($json_response); 