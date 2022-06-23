<?php

    require "db_connection.php";

    $stdId = $_GET["std_id"];

    //fetch table rows from mysql db
    
    $sql = "SELECT classroom_disscussion_groups.room_key, classroom_disscussion_groups.room_name 
            FROM student_account 
            RIGHT JOIN classroom_disscussion_groups
            ON student_account.std_sem = classroom_disscussion_groups.std_sem AND student_account.branch_id = classroom_disscussion_groups.branch_id
            WHERE std_id = '$stdId' ;";
    
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
    
    //close the db connection
    mysqli_close($db_con);

?>