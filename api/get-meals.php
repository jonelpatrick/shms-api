<?php 
include '../dbconnect.php';

$json_response = array(); 

if(isset($_GET['id'])){

	$id = $_GET['id'];

	if($id != 0){
		$query = mysqli_query($mysqli,"SELECT tbl_meals.id mid,
											  student_id,
											  food_variety_id,
											  tbl_food_variety.variety variety,
											  servings,
											  credits										   
											  FROM tbl_meals
											  INNER JOIN tbl_food_variety ON tbl_meals.food_variety_id = tbl_food_variety.id
											  WHERE student_id = '$id' ");	

		if (mysqli_num_rows($query) > 0) {			
					
			 while($row = mysqli_fetch_assoc($query)) {
			 	
			 		$row_array['meals_id'] = $row['mid'];
			 		$row_array['student_id'] = $row['student_id'];
			 		$row_array['food_variety_id'] = $row['food_variety_id'];
			 		$row_array['variety'] = $row['variety'];
			 		$row_array['servings'] = $row['servings'];
			 		$row_array['credits'] = $row['credits'];
			 		 	
			 		array_push($json_response,$row_array); 			 

			 }			 		
				
		}else{
			$row_array['message'] = "No Results";
			array_push($json_response,$row_array); 
			 
		}	

	}else{
		$row_array['message'] = "ID is not valid";
		array_push($json_response,$row_array); 	
	}

}else{

	
	$query = mysqli_query($mysqli,"SELECT tbl_meals.id mid,
											  student_id,
											  food_variety_id,
											  tbl_food_variety.variety variety,
											  servings,
											  credits										   
											  FROM tbl_meals
											  INNER JOIN tbl_food_variety ON tbl_meals.food_variety_id = tbl_food_variety.id");	
	if (mysqli_num_rows($query) > 0) {			
				
		 while($row = mysqli_fetch_assoc($query)) {
		 	
		 		$row_array['meals_id'] = $row['mid'];
		 		$row_array['student_id'] = $row['student_id'];
		 		$row_array['food_variety_id'] = $row['food_variety_id'];
		 		$row_array['variety'] = $row['variety'];
		 		$row_array['servings'] = $row['servings'];
		 		$row_array['credits'] = $row['credits'];
		 		 	
		 		array_push($json_response,$row_array); 			 

		 }			 		
			
	}else{
		$row_array['message'] = "No Results";
		array_push($json_response,$row_array); 
		 
	}	
}

echo json_encode($json_response); 