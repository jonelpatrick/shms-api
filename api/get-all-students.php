<?php 
include '../dbconnect.php';

$json_response = array(); 

$query = mysqli_query($mysqli,"SELECT 
							tbl_student.id sid,
							firstname,
							middlename,
							lastname,
							age,
							gender,
							birthday,
							citizenship,
							religion,
							address,
							class_section_id,
							account_id,
							username,
							password,
							image_path
							FROM tbl_student
							INNER JOIN tbl_account ON tbl_student.account_id = tbl_account.id
							WHERE tbl_student.deleted = 0");	

if (mysqli_num_rows($query) > 0) {			
			
	 while($row = mysqli_fetch_assoc($query)) {
	 	
	 		$row_array['Student_id'] = $row['sid'];
	 		$row_array['firstname'] = $row['firstname'];
	 		$row_array['middlename'] = $row['middlename'];
	 		$row_array['lastname'] = $row['lastname'];
	 		$row_array['age'] = $row['age'];
	 		$row_array['gender'] = $row['gender'];
	 		$row_array['birthday'] = $row['birthday'];
	 		$row_array['citizenship'] = $row['citizenship'];
	 		$row_array['religion'] = $row['religion'];
	 		$row_array['address'] = $row['address'];
	 		$row_array['class_section_id'] = $row['class_section_id'];	 		
	 		$row_array['account_id'] = $row['account_id'];
	 		$row_array['username'] = $row['username'];
	 		$row_array['password'] = $row['password'];
	 		$row_array['image_path'] = $row['image_path'];
	 		 	
	 		array_push($json_response,$row_array); 			 

	 }			 		
		
}else{
	$row_array['message'] = "No Results";
	array_push($json_response,$row_array); 
	 
}	

echo json_encode($json_response); 
