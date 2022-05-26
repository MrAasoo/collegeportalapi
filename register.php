<?php

require "db_connection.php";

$std_id = $_GET["std_id"];
$std_name = $_GET["std_name"];
$std_password = $_GET["std_password"];
$std_sem = $_GET["std_sem"];
$std_accadmic = $_GET["std_accadmic"];
$department_id = $_GET["department_id"];
$branch_id = $_GET["branch_id"];

$sql_check = "select * from student_account where std_id = '$std_id'";
$result = mysqli_query($db_con, $sql_check);
if(mysqli_num_rows($result) == 1){
	$account = "exist";
} else {
	$sql_insert = " INSERT INTO student_account(std_id, std_password, std_name, std_image, std_sem, std_accadmic, department_id, branch_id, std_status) VALUES ('$std_id', '$std_password', '$std_name', '','$std_sem', '$std_accadmic', '$department_id', '$branch_id', '3');";
 
	if(mysqli_query($db_con, $sql_insert)){
		$account = "inserted";
	} else {
		$account = "failed";
	}

}

echo json_encode(array("response" => $account));

mysqli_close($db_con);

?>