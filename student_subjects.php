<?php

    require "db_connection.php";

    $std_id = $_GET["std_id"];

    $sql = "SELECT subject_details.subject_code, subject_details.subject_name, faculty_info.faculty_name 
    FROM student_account 
    LEFT JOIN subject_details 
    ON student_account.branch_id = subject_details.branch_id 
    AND student_account.std_sem = subject_details.std_sem 
    LEFT JOIN faculty_info 
    ON subject_details.faculty_id =faculty_info.faculty_id 
    WHERE student_account.std_id = '$std_id';";

    $result = mysqli_query($db_con, $sql) or die("Error in Selecting " . mysqli_error($db_con));

    //create an array
    $emparray = array();
    if(mysqli_num_rows($result) >= 1){
        while($row =mysqli_fetch_assoc($result))
        {
            $emparray[] = $row;
        }
        echo json_encode(array("status" => true, "data" => $emparray));
    } else {
        echo json_encode(array("status" => false));
    }
?>