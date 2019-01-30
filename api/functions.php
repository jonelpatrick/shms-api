<?php 


function get_credit_points_by_id($id,$mysqli){
	$credit_points = 0;

	$query = mysqli_query($mysqli,"SELECT credit_points FROM tbl_child_points WHERE student_id = '$id'");	

	if (mysqli_num_rows($query) > 0) {			
				
		 while($row = mysqli_fetch_assoc($query)) {
				 			 			
		 	$credit_points = $row['credit_points'];
		 }	

	}else{
		echo "Student doesnt exists.";exit;
	}

	return $credit_points;
}

?>