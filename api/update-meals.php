<?php 
include '../dbconnect.php';

$json_response = array(); 

$variety =	$_GET['variety'];
$servings = $_GET['servings'];
$credits  = $_GET['credits'];
$date_eaten = $_GET['date_eaten'];
$mealsid  = $_GET['meals_id'];

$sql = "UPDATE tbl_meals SET 
							food_variety_id = '$variety',
							servings = '$servings',
							credits = '$credits',
							date_created = '$date_eaten' 
						WHERE id = '$mealsid'";

if (mysqli_query($mysqli,$sql)) {

	$row_array['message'] = "Meals Successfully Updated";
	array_push($json_response,$row_array); 

}else{

	$row_array['message'] = "Something went wrong";
	array_push($json_response,$row_array); 
}
echo json_encode($json_response); 