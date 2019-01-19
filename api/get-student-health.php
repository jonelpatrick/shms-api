<?php 
include '../dbconnect.php';

$json_response = array(); 

if(isset($_GET['id'])){

	$id = $_GET['id'];
	$test = "";

	$query = mysqli_query($mysqli,"SELECT 
								id,
								date_check_up,
								weight,
								height,
								bmi,
								classification								
								FROM tbl_health_profile
								WHERE student_id = '$id' ORDER BY date_check_up Asc");	

	if (mysqli_num_rows($query) > 0) {			
				
		 while($row = mysqli_fetch_assoc($query)) {
		 	
		 		$row_array['Tbl_health_profile_id'] = $row['id'];
		 		$row_array['date_check_up'] = $row['date_check_up'];
		 		$row_array['weight'] = $row['weight'];
		 		$row_array['height'] = $row['height'];
		 		$row_array['bmi'] = $row['bmi'];

		 		//$row_array['classification'] = $row['classification'];	
		 		$getClass = $row['classification'];	 

		 		switch ($getClass) {

					case '<span style="color:red;">Severely Underweight</span>':
						
						$row_array['classification'] = "Severely Underweight";
						break;

					case '<span style="color:#ec750e;">Underweight</span>':

						$row_array['classification'] = "Underweight";
						break;
					
					case 'Normal':

						$row_array['classification'] = "Normal";
						break;

					case '<span style="color:#d70ee4;">Overweight</span>':

						$row_array['classification'] = "Overweight";
						break;

					default:
						$row_array['classification'] = "Not in the table - it's either obese or higher";
						break;
				}	

		 		array_push($json_response,$row_array); 			 

		 }			 		
			
	}else{
		$row_array['message'] = "No Results";
		array_push($json_response,$row_array); 
		 
	}	
}else{
	$row_array['message'] = "No Results. Invalid Parameter";
	array_push($json_response,$row_array); 
}

echo json_encode($json_response); 
