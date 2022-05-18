<?php

require "db_connection.php";



define ('STUDENT_ID_PASS_ERROR', 205);
define ('STUDENT_DATA_NOT_FOUND', 206);



$std_id = $_GET["std_id"];
$std_password = $_GET["std_password"];


// Check for id pass
$sql = "select * from student_account where std_id = '$std_id'  and std_password = '$std_password'";
$result = mysqli_query($db_con, $sql);

// id or pass did not match
if(!mysqli_num_rows($result) > 0){
	$error = true;	
	$error_code = STUDENT_ID_PASS_ERROR;
	echo json_encode(array("error" => $error, "code" => $error_code));

} else {
//id pass ok
	$sql = "select * from student_account join student_bio on student_account.std_id = student_bio.std_id where student_account.std_id = '$std_id'";
	$result = mysqli_query($db_con, $sql);
	
	// record not found
	if(!mysqli_num_rows($result) > 0){
		$error = true;
		$error_code = STUDENT_DATA_NOT_FOUND;
		echo json_encode(array("error" => $error, "code" => $error_code));
	
	// recourd found
	} else {
		$row = mysqli_fetch_assoc($result);
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
		$std_info['stdBranchFullName'] = $row_branc["branch_full_name"];
		$std_info['stdBranchId'] = $row["branch_id"];

		$std_info['stdSem'] = $row["std_sem"];
		$std_info['stdAcademic'] = $row["std_accadmic"];

		$std_info['stdFather'] = $row["std_father"];
		$std_info['stdMother'] = $row["std_mother"];
		$std_info['stdDob'] = $row["std_dob"];
		$std_info['stdContact'] = $row["std_contact"];
		$std_info['stdEmail'] = $row["std_email"];

		$std_info['stdCity'] = $row["std_city"];
		$std_info['stdDist'] = $row["std_dist"];
		$std_info['stdPin'] = $row["std_pin"];

		
		$error = false;
		echo json_encode(array("error" => $error, "info" => $std_info));
				
	}
}

mysqli_close($db_con);

?>