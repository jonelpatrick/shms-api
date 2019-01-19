<?php 
include '../dbconnect.php';

$json_response = array(); 

if(isset($_GET['u']) && isset($_GET['p'])){

	$username = $_GET['u'];
	$password = $_GET['p'];

	$query = mysqli_query($mysqli,"SELECT
									tbl_admin.id aid,
									firstname,
									middlename,
									lastname,
									gender,
									age,
									birthday,
									citizenship,
									religion,
									address,
									occupation,
									privilege,
									username,
									password,
									image_path									
									FROM tbl_admin
									INNER JOIN tbl_account ON tbl_account.id = tbl_admin.account_id 									 
									WHERE tbl_admin.deleted = 0 AND username = '$username'");	

	if (mysqli_num_rows($query) > 0) {
		$dbpassword= "";
				
		 while($row = mysqli_fetch_assoc($query)) {

		 	$dbpassword = $row['password'];

		 	if($dbpassword == $password){	
		 		$row_array['parentid'] = $row['aid'];
		 		$row_array['firstname'] = $row['firstname'];
		 		$row_array['middlename'] = $row['middlename'];
		 		$row_array['lastname'] = $row['lastname'];
		 		$row_array['gender'] = $row['gender'];
		 		$row_array['age'] = $row['age'];
		 		$row_array['birthday'] = $row['birthday'];
		 		$row_array['citizenship'] = $row['citizenship'];
		 		$row_array['religion'] = $row['religion'];
		 		$row_array['address'] = $row['address'];
		 		$row_array['occupation'] = $row['occupation'];
		 		$row_array['privilege'] = $row['privilege'];
		 		$row_array['username'] = $row['username'];
		 		$row_array['password'] = $row['password'];
		 		$row_array['imagepath'] = $row['image_path'];		 		
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
