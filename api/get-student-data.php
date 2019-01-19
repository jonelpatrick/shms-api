<?php 
include '../dbconnect.php';

$json_response = array(); 

if(isset($_GET['u']) && isset($_GET['p'])){

	$username = $_GET['u'];
	$password = $_GET['p'];

	$query = mysqli_query($mysqli,"SELECT
									tbl_student.id sid,
									firstname,
									middlename,
									lastname,
									gender,
									age,
									birthday,
									citizenship,
									religion,
									address,
									section,
									username,
									password,
									image_path,
									student_height,
									student_weight
									FROM tbl_student 
									INNER JOIN tbl_account ON tbl_account.id = tbl_student.account_id 
									INNER JOIN tbl_section ON tbl_section.id = tbl_student.class_section_id 
									WHERE tbl_student.deleted = 0 AND username = '$username'");	

	if (mysqli_num_rows($query) > 0) {
		$dbpassword= "";
				
		 while($row = mysqli_fetch_assoc($query)) {

		 	$dbpassword = $row['password'];

		 	if($dbpassword == $password){	
		 		$row_array['studentid'] = $row['sid'];
		 		$row_array['firstname'] = $row['firstname'];
		 		$row_array['middlename'] = $row['middlename'];
		 		$row_array['lastname'] = $row['lastname'];
		 		$row_array['gender'] = $row['gender'];
		 		$row_array['age'] = $row['age'];
		 		$row_array['birthday'] = $row['birthday'];
		 		$row_array['citizenship'] = $row['citizenship'];
		 		$row_array['religion'] = $row['religion'];
		 		$row_array['address'] = $row['address'];
		 		$row_array['section'] = $row['section'];
		 		$row_array['username'] = $row['username'];
		 		$row_array['password'] = $row['password'];
		 		$row_array['imagepath'] = $row['image_path'];
		 		$row_array['student_height'] = $row['student_height'];
		 		$row_array['student_weight'] = $row['student_weight'];
		 		array_push($json_response,$row_array); 
		 	}else{
		 		
		 		$row_array['message'] = "Access Denied";
				array_push($json_response,$row_array); 
		 	}

		 }	
		 		
			
	}else{
		$row_array['message'] = "Access Denied";
		array_push($json_response,$row_array); 
		 
	}

}else{
	$row_array['message'] = "Access Denied";
	array_push($json_response,$row_array); 	
}

echo json_encode($json_response); 
