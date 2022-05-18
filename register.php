<?php

require "db_connection.php";

$std_id = $_GET["std_id"];
$std_name = $_GET["std_name"];
$std_password = $_GET["std_password"];
$std_department = $_GET["std_department"];
$std_image = "$std_id.jpg";

$sql_check = "select * from student_account where std_id = '$std_id'";
$result = mysqli_query($db_con, $sql_check);
if(mysqli_num_rows($result) > 0){
	$account = "exist";
} 
else {
	$sql_insert = "insert into student_account(std_id, std_password, std_name, std_department, std_image, std_status) values('$std_id', '$std_password', '$std_name', '$std_department','$std_image', '3')";

	if(mysqli_query($db_con, $sql_insert)){
		$account = "inserted";
	} else {
		$account = "failed";
	}

}



echo json_encode(array("response" => $account));

mysqli_close($db_con);

?>