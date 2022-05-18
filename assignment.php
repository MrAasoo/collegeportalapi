<?php

    require "db_connection.php";

    $assi_id = $_GET["assi_id"];

    
    //fetch table rows from mysql db 
    if($assi_id == "0"){
        $sql = "select assi_id, assi_title, assi_date, assi_details from assignment_info order by assi_id desc";
        $result = mysqli_query($db_con, $sql) or die("Error in Selecting " . mysqli_error($db_con));

        //create an array
        $emparray = array();
        while($row =mysqli_fetch_assoc($result))
        {
            $emparray[] = $row;
        }
        echo json_encode(array("status" => true, "data" => $emparray));
    } else {
        $sql = "select assi_title, assi_date, assi_details, assi_due_date, faculty_name from assignment_info join faculty_info where assi_id = '$assi_id' and assignment_info.faculty_id = faculty_info.faculty_id";
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