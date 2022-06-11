<?php

require "db_connection.php";


define('ACCOUNT_SIGN_IN_FAIL', 2);
define('FEEDBACK_SUBMITTED', 1);
define('FEEDBACK_SUBMISSION_FAILED', 0);

$std_id = $_GET["std_id"];
$std_password = $_GET["std_password"];
$feedback_message = $_GET["feedback_message"];

// Current Date and Time
date_default_timezone_set("Asia/Calcutta");
$date = date("Y-m-d");
$time = date("H:i:s");

$sql_check = "select * from student_account where std_id = '$std_id' and std_password = '$std_password'";
$result = mysqli_query($db_con, $sql_check);

if(mysqli_num_rows($result) == 1){
	$sql_insert ="INSERT INTO `table_feedback`(`feedback_message`, `feedback_date`, `feedback_time`, `std_id`) 
					VALUES ('$feedback_message','$date', '$time','$std_id');";
	
	if(mysqli_query($db_con, $sql_insert)){
		$message = FEEDBACK_SUBMITTED;
		$status = true;
	} else {
		$message = FEEDBACK_SUBMISSION_FAILED;
		$status = false;
	}
	
} else {
	$message = ACCOUNT_SIGN_IN_FAIL;
	$status = false;
}

echo json_encode(array("status" => $status, "message" => $message));


mysqli_close($db_con);

?>