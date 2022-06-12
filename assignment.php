<?php

    require "db_connection.php";

    $std_id = $_GET["std_id"];
    $assi_id = $_GET["assi_id"];

    
    //fetch table rows from mysql db 
    if($assi_id == "0"){
        $sql = "SELECT assignment_info.assi_id, assignment_info.assi_title, assignment_info.assi_date, assignment_info.assi_details 
            FROM assignment_info RIGHT JOIN student_account 
            ON assignment_info.branch_id = student_account.branch_id 
            AND assignment_info.std_sem = student_account.std_sem 
            WHERE student_account.std_id = '$std_id' 
            ORDER BY assi_id DESC;";
        $result = mysqli_query($db_con, $sql) or die("Error in Selecting " . mysqli_error($db_con));

        if(mysqli_num_rows($result) >= 1){
            //create an array
            $emparray = array();

            while($row =mysqli_fetch_assoc($result))
            {
                $emparray[] = $row;
            }
            echo json_encode(array("status" => true, "data" => $emparray));
        } else {
           echo json_encode(array("status" => false)); 
        }
    } else {
        $sql = "SELECT assignment_info.assi_title, assignment_info.assi_date, assignment_info.assi_details, assignment_info.assi_due_date, assignment_info.assi_path, faculty_info.faculty_name 
                FROM assignment_info LEFT JOIN faculty_info 
                ON assignment_info.faculty_id = faculty_info.faculty_id 
                WHERE assignment_info.assi_id = '$assi_id';";
        $result = mysqli_query($db_con, $sql) or die("Error in Selecting " . mysqli_error($db_con));
        if(mysqli_num_rows($result) > 0){
            //create an array
            $emparray = array();
            $row =mysqli_fetch_assoc($result);
            $emparray[] = $row;
            echo json_encode(array("status" => true, "data" => $emparray));
        }else{
            echo json_encode(array("status" => false));
        }
    }
    

    //close the db connection
    mysqli_close($db_con);
?>