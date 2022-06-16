<?php

    require "db_connection.php";

    $nId = $_GET["notice_id"];
    $departmentId = $_GET["department_id"];
    $branchId = $_GET["branch_id"];

    //fetch table rows from mysql db
    if($nId != 0){
        $sql = "SELECT * 
                FROM class_notices 
                WHERE notice_id = '$nId'";
        $result = mysqli_query($db_con, $sql) or die("Error in Selecting " . mysqli_error($db_con));
        if(mysqli_num_rows($result) == 1){
            //create an array
            $emparray = array();
            $row = mysqli_fetch_assoc($result);
            $emparray[] = $row;
            echo json_encode(array("status" => true, "data" => $emparray));
        }
        else{
            echo json_encode(array("status" => false));
        }
    } else {
        $sql = "SELECT notice_id, notice_title,  notice_message, notice_date 
                FROM class_notices 
                WHERE department_id = '$departmentId' AND branch_id = '$branchId' 
                ORDER BY notice_id DESC";
        $result = mysqli_query($db_con, $sql) or die("Error in Selecting " . mysqli_error($db_con));
        if(mysqli_num_rows($result) > 0){
            //create an array
            $emparray = array();
            while($row =mysqli_fetch_assoc($result))
            {
                $emparray[] = $row;
            }
            echo json_encode(array("status" => true, "data" => $emparray));
        }
        else{
            echo json_encode(array("status" => false));
        }
    }
    
    //close the db connection
    mysqli_close($db_con);

?>