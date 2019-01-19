<?php 
include '../dbconnect.php';

$json_response = array(); 

$student_id = $_GET['student_id'];
$height 	= $_GET['height'];
$weight 	= $_GET['weight'];


$height = $height / 100;
$bmi = ($weight / ($height * $height));
$bmi = number_format($bmi, 2, '.', '');

//get gender and age****************************************************
$sex = "";
$age = "";

$sql_student = "SELECT gender,age FROM tbl_student WHERE id = '$student_id' AND deleted = 0"; 
$result_student = mysqli_query($mysqli,$sql_student);
if (mysqli_num_rows($result_student) > 0) {			
					
	 while($row_student = mysqli_fetch_assoc($result_student)) {
	 	
	 	$sex = $row_student['gender'];	 			 		 		 		
	 	$age = $row_student['age'];
	 }			 		
		
}else{
	$row_array['message'] = "Student ID not found.";
	array_push($json_response,$row_array); 
	echo json_encode($json_response); 
	exit;
}
//get gender and age****************************************************

//get classification****************************************************

$severely_underweight = "";
$underweight_from = "";
$underweight_to = "";
$normal_from = "";
$normal_to = "";	
$overweight = "";
$class = "";
if($sex == 1){

	$sql = "SELECT 
			severely_underweight,
			underweight_from,
			underweight_to,
			normal_from,
			normal_to,
			overweight
			FROM boys_growth_table
			WHERE age = '$age'";

}else{

	$sql = "SELECT 
			severely_underweight,
			underweight_from,
			underweight_to,
			normal_from,
			normal_to,
			overweight
			FROM girls_growth_table
			WHERE age = '$age'";
}

$result = mysqli_query($mysqli,$sql);
if (mysqli_num_rows($result) > 0) {                                     

    while($row = mysqli_fetch_assoc($result)) {

    	$severely_underweight = $row['severely_underweight'];
    	$underweight_from = $row['underweight_from'];
    	$underweight_to = $row['underweight_to'];
    	$normal_from = $row['normal_from'];
    	$normal_to = $row['normal_to'];
    	$overweight = $row['overweight'];
    }
 }
$severely_underweight = floatval($severely_underweight);
$underweight_from = floatval($underweight_from);
$underweight_to = floatval($underweight_to);
$normal_from = floatval($normal_from);
$normal_to = floatval($normal_to);	
$overweight = floatval($overweight);

switch ($weight) {

	case ($weight <= $severely_underweight):
		$class = '<span style="color:red;">Severely Underweight</span>';
		break;

	case ($weight >= $underweight_from && $weight <= $underweight_to):
		$class = '<span style="color:#ec750e;">Underweight</span>';
		break;
	
	case ($weight >= $normal_from && $weight <= $normal_to):
		$class = "Normal";
		break;

	case ($weight >= $overweight):
		$class = '<span style="color:#d70ee4;">Overweight</span>';
		break;

	default:
		$class = '<span style="color:green;">Not in the Table</span>';
		break;
}

//get classification****************************************************

$date_now = date('Y-m-d');

$sql = "INSERT INTO tbl_health_profile (								
								date_check_up,
								weight,
								height,
								bmi,
								classification,
								student_id)
								VALUES(								
								'$date_now',
								'$weight',
								'$height',
								'$bmi',
								'$class',
								'$student_id')";

if (mysqli_query($mysqli,$sql)) {

	$row_array['message'] = "Student Health Successfully Saved";
	array_push($json_response,$row_array); 											

}else{

	$row_array['message'] = "Something went wrong";
	array_push($json_response,$row_array); 
}

echo json_encode($json_response); 