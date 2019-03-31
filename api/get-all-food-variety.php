<?php 
include '../dbconnect.php';

$json_response = array(); 

	$query = mysqli_query($mysqli,"SELECT id,variety,credit,total_carb FROM tbl_food_variety ");
								

	if (mysqli_num_rows($query) > 0) {			
				
		 while($row = mysqli_fetch_assoc($query)) {
		 	
		 		$row_array['variety_id'] = $row['id'];
		 		$row_array['variety_name'] = $row['variety'];
		 		$row_array['credit'] = $row['credit'];
		 		$row_array['Total Carbohydrate - unit gram'] = $row['total_carb'];
		 		
		 		array_push($json_response,$row_array); 			 

		 }			 		
			
	}else{
		$row_array['message'] = "No Results";
		array_push($json_response,$row_array); 
		 
	}	


echo json_encode($json_response); 
