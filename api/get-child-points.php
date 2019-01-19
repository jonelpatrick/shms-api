<?php 
include '../dbconnect.php';

$json_response = array(); 

if(isset($_GET['id'])){

	$id = $_GET['id'];

	if($id != 0){
		$query = mysqli_query($mysqli,"SELECT tbl_child_points.id cid,
											  student_id,
											  firstname,
											  middlename,
											  lastname,
											  credit_points											 										  
											  FROM tbl_child_points
											  INNER JOIN tbl_student ON tbl_student.id = tbl_child_points.student_id
											  WHERE tbl_child_points.id = '$id' ");	

		if (mysqli_num_rows($query) > 0) {			
					
			 while($row = mysqli_fetch_assoc($query)) {
			 	
			 		$row_array['child_points_id'] = $row['cid'];
			 		$row_array['student_id'] = $row['student_id'];
			 		$row_array['firstname'] = $row['firstname'];
			 		$row_array['middlename'] = $row['middlename'];
			 		$row_array['lastname'] = $row['lastname'];
			 		$row_array['credit_points'] = $row['credit_points'];
			 		 	
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

}else if(isset($_GET['student_id'])){

	$id = $_GET['student_id'];

	if($id != 0){
		$query = mysqli_query($mysqli,"SELECT tbl_child_points.id cid,
											  student_id,
											  firstname,
											  middlename,
											  lastname,
											  credit_points											 										  
											  FROM tbl_child_points
											  INNER JOIN tbl_student ON tbl_student.id = tbl_child_points.student_id
											  WHERE tbl_child_points.student_id = '$id' ");	

		if (mysqli_num_rows($query) > 0) {			
					
			 while($row = mysqli_fetch_assoc($query)) {
			 	
			 		$row_array['child_points_id'] = $row['cid'];
			 		$row_array['student_id'] = $row['student_id'];
			 		$row_array['firstname'] = $row['firstname'];
			 		$row_array['middlename'] = $row['middlename'];
			 		$row_array['lastname'] = $row['lastname'];
			 		$row_array['credit_points'] = $row['credit_points'];
			 		 	
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

	
	$query = mysqli_query($mysqli,"SELECT tbl_child_points.id cid,
											  student_id,
											  firstname,
											  middlename,
											  lastname,
											  credit_points											 										  
											  FROM tbl_child_points
											  INNER JOIN tbl_student ON tbl_student.id = tbl_child_points.student_id");	
	if (mysqli_num_rows($query) > 0) {			
				
		 while($row = mysqli_fetch_assoc($query)) {
		 	
		 		$row_array['child_points_id'] = $row['cid'];
		 		$row_array['student_id'] = $row['student_id'];
		 		$row_array['firstname'] = $row['firstname'];
		 		$row_array['middlename'] = $row['middlename'];
		 		$row_array['lastname'] = $row['lastname'];
		 		$row_array['credit_points'] = $row['credit_points'];
		 		 	
		 		array_push($json_response,$row_array); 					 

		 }			 		
			
	}else{
		$row_array['message'] = "No Results";
		array_push($json_response,$row_array); 
		 
	}	
}

echo json_encode($json_response); 