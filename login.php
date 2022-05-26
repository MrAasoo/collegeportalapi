<?php

require "db_connection.php";



define ('STUDENT_ID_NOT_FOUND', 201);
define ('STUDENT_PASSWORD_DO_NOT_MATCH', 202);
define ('STUDENT_ACCOUNT_NOT_VERIFIED', 203);
define ('STUDENT_ACCOUNT_BLOCKED', 204);



$std_id = $_GET["std_id"];
$std_password = $_GET["std_password"];

$sql = "select * from student_account where std_id = '$std_id'";
$result = mysqli_query($db_con, $sql);

if(!mysqli_num_rows($result) == 1){
	$error = true;	
	$error_code = STUDENT_ID_NOT_FOUND;
	echo json_encode(array("error" => $error, "code" => $error_code));
} else {
	
	$sql_validate = "select * from student_account where std_id = '$std_id' and std_password = '$std_password'";
	$result = mysqli_query($db_con, $sql_validate);
	
	if(!mysqli_num_rows($result) > 0){
	$error = true;
	$error_code = STUDENT_PASSWORD_DO_NOT_MATCH;
	echo json_encode(array("error" => $error, "code" => $error_code));

	
		
	} else {
		$row = mysqli_fetch_assoc($result);
		switch($row["std_status"]){
		case 1:
			$error = true;
			$error_code = STUDENT_ACCOUNT_NOT_VERIFIED;
			echo json_encode(array("error" => $error, "code" => $error_code, "message" => $row["std_name"]));
			break;
		case 2:
			$std_info = array();

			
		
			$std_info['stdId'] = $row["std_id"];
			$std_info['stdName'] = $row["std_name"];
			$std_info['stdImage'] = $row["std_image"];
			
			$department_id = $row["department_id"];
			$sql_dep = "select * from  department_info where department_id = '$department_id'";
			$result_dep = mysqli_query($db_con, $sql_dep);
			$row_dep = mysqli_fetch_assoc($result_dep);
			$std_info['stdDepartment'] = $row_dep["department_name"];
			$std_info['stdDepartmentId'] = $row_dep["department_id"];

			$branch_id = $row["branch_id"];
			$sql_branch = "select * from  branch_info where branch_id = '$branch_id'";
			$result_branch = mysqli_query($db_con, $sql_branch);
			$row_branc = mysqli_fetch_assoc($result_branch);
			$std_info['stdBranchName'] = $row_branc["branch_name"];
			$std_info['stdBranchId'] = $row["branch_id"];
		
			$error = false;
			echo json_encode(array("error" => $error, "info" => $std_info));
			break;
		case 3:
			$error = true;
			$error_code = STUDENT_ACCOUNT_BLOCKED;
			echo json_encode(array("error" => $error, "code" => $error_code, "message" => $row["std_name"]));
			break;


		}
		
	}
}

mysqli_close($db_con);

?>