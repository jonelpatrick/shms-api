<?php 
include '../dbconnect.php';

$json_response = array(); 

$query = mysqli_query($mysqli,"SELECT 
							tbl_family.parent_id aid,
							tbl_family.student_id sid,							
							tbl_admin.firstname firstname,
							tbl_admin.middlename middlename,
							tbl_admin.lastname lastname,
							tbl_admin.age age,
							tbl_admin.gender gender,
							tbl_admin.birthday birthday,
							tbl_admin.citizenship citizenship,
							tbl_admin.religion religion,
							tbl_admin.address address,
							tbl_admin.occupation occupation,
							tbl_admin.privilege privilege,
							tbl_admin.account_id account_id,
							username,
							password,
							tbl_admin.image_path image_path
							FROM tbl_family
							INNER JOIN tbl_admin ON tbl_admin.id = tbl_family.parent_id
							INNER JOIN tbl_student ON tbl_student.id = tbl_family.student_id
							INNER JOIN tbl_account ON tbl_admin.account_id = tbl_account.id							
							WHERE privilege = 'Parent' AND tbl_admin.deleted = 0 AND tbl_student.deleted = 0 GROUP BY tbl_family.student_id");	

if (mysqli_num_rows($query) > 0) {			
			
	 while($row = mysqli_fetch_assoc($query)) {
	 	
	 		$row_array['Parent_id'] = $row['aid'];
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
	 		$row_array['occupation'] = $row['occupation'];
	 		$row_array['privilege'] = $row['privilege'];
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