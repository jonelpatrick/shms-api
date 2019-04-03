<?php 
include '../dbconnect.php';
include 'functions.php';

$json_response = array(); 

//function
function getCredits($mysqli,$id){
	$credit = 0;
	$query = mysqli_query($mysqli,"SELECT credit FROM tbl_food_variety WHERE id = '$id'");
	if (mysqli_num_rows($query) > 0) {			
				
		 while($row = mysqli_fetch_assoc($query)) {
		 	
		 	$credit = $row['credit'];		 				 	
		 }			 		
			
	}else{
		$row_array['message'] = "ID is out of the list";
		array_push($json_response,$row_array); 
		 exit;
	}
	return $credit;	
}

// if(isset($_GET['student_id']) && isset($_GET['variety']) && isset($_GET['servings']) && isset($_GET['credits']) && isset($_GET['date_eaten'])){
if(isset($_GET['student_id']) && isset($_GET['variety']) && isset($_GET['servings'])  && isset($_GET['date_eaten'])){

	$student_id = $_GET['student_id'];
	$variety =	$_GET['variety'];
	$servings = $_GET['servings'];
	$credits  = getCredits($mysqli,$variety) * $servings;
	
	$date_eaten = $_GET['date_eaten'];

	$sql = "INSERT INTO tbl_meals (								
									student_id,
									food_variety_id,
									servings,
									credits,
									date_created)
									VALUES(								
									'$student_id',
									'$variety',
									'$servings',
									'$credits',
									'$date_eaten')";

	if (mysqli_query($mysqli,$sql)) {		

		$row_array['message'] = "Meals Successfully Saved";
		array_push($json_response,$row_array); 

		//update or insert child points
		$query = $mysqli->prepare("SELECT * FROM tbl_child_points WHERE student_id = '$student_id'");
		$query->execute();
		$query->store_result();

		$rows = $query->num_rows;

		if($rows > 0){
			$credit_points = get_credit_points_by_id($student_id,$mysqli);
			$total_credit = $credit_points + $credits;

			$sqlpoints = "UPDATE tbl_child_points SET credit_points = '$total_credit' WHERE student_id = '$student_id'";

			if (mysqli_query($mysqli,$sqlpoints)) {

				$row_array['message'] = "Credit Points Successfully Updated";
				array_push($json_response,$row_array); 
			}else{

				$row_array['message'] = "Error Updating Credit Points";
				array_push($json_response,$row_array); 
			}

		}else{

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

		}
														

	}else{

		$row_array['message'] = "Something went wrong";
		array_push($json_response,$row_array); 
	}
}else{
	$row_array['message'] = "Parameter is missing. Please check";
	array_push($json_response,$row_array); 
}
echo json_encode($json_response); 