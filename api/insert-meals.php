<?php 
include '../dbconnect.php';

$json_response = array(); 

$student_id = $_GET['student_id'];
$variety =	$_GET['variety'];
$servings = $_GET['servings'];
$credits  = $_GET['credits'];

$sql = "INSERT INTO tbl_meals (								
								student_id,
								food_variety_id,
								servings,
								credits)
								VALUES(								
								'$student_id',
								'$variety',
								'$servings',
								'$credits')";

if (mysqli_query($mysqli,$sql)) {

	$row_array['message'] = "Meals Successfully Saved";
	array_push($json_response,$row_array); 

	$sqlpoints = "INSERT INTO tbl_child_points (
												student_id,
												credit_points) 
												VALUES (
												'$student_id',
												'$credits')";
	if (mysqli_query($mysqli,$sqlpoints)) {
		$row_array['message'] = "Credit Points Successfully Saved";
		array_push($json_response,$row_array); 
	}else{
		$row_array['message'] = "Error Saving Credit Points";
		array_push($json_response,$row_array); 
	}												

}else{

	$row_array['message'] = "Something went wrong";
	array_push($json_response,$row_array); 
}
echo json_encode($json_response); 