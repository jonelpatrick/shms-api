<?php 
include '../dbconnect.php';

$json_response = array(); 

if(isset($_GET['u']) && isset($_GET['p'])){

	$username = $_GET['u'];
	$password = $_GET['p'];

	$query = mysqli_query($mysqli,"SELECT tbl_student.id sid,password,firstname,middlename,lastname,image_path aimage from tbl_student inner join tbl_account on tbl_student.account_id=tbl_account.id where username='$username'  AND tbl_account.deleted=0");

	

	if (mysqli_num_rows($query) > 0) {
		$dbpassword= "";
				
		 while($row = mysqli_fetch_assoc($query)) {

		 	$dbpassword = $row['password'];

		 	if($dbpassword == $password){	
		 		$row_array['firstname'] = $row['firstname'];
		 		$row_array['middlename'] = $row['middlename'];
		 		$row_array['lastname'] = $row['lastname'];
		 		$row_array['studentid'] = $row['sid'];
		 		$row_array['imagepath'] = $row['aimage'];
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
