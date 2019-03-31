<?php 
include '../dbconnect.php';
$json_response = array(); 

if(isset($_GET['student_id'])){

	$id = $_GET['student_id'];

	if($id != 0){
		$Aweight = 0;
		$total = 0;
		 $sqlAssumeW = "SELECT total_carb FROM `tbl_meals` INNER JOIN tbl_food_variety ON tbl_meals.food_variety_id = tbl_food_variety.id WHERE student_id = '$id'";
		$result_assume = mysqli_query($mysqli,$sqlAssumeW);   

		if (mysqli_num_rows($result_assume) > 0) {			
					
			 while($row = mysqli_fetch_assoc($result_assume)) {
			 	 $Aweight += $row['total_carb'];			 	
			 }

			 $total = $Aweight/1000;

				$row_array['student_id'] = $id;
			 	$row_array['Assume_weight - unit kg'] = $total;	

			 	array_push($json_response,$row_array); 			 
	
		}else{
			$row_array['message'] = "No Results";
			array_push($json_response,$row_array); 
			 
		}	

	}else{
		$row_array['message'] = "ID is not valid";
		array_push($json_response,$row_array); 	
	}
}else{
	$row_array['message'] = "Please select a Student ID";
	array_push($json_response,$row_array); 	
}
	echo json_encode($json_response); 

?>
