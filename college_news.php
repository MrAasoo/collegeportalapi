<?php


    require "db_connection.php";

    $nId = $_GET["n_id"];
    $nSlider = $_GET["n_slider"];

    //fetch table rows from mysql db
    if($nId != 0){
        $sql = "SELECT * 
                FROM college_events 
                WHERE n_id = '$nId';";
        $result = mysqli_query($db_con, $sql) or die("Error in Selecting " . mysqli_error($db_con));

        if(mysqli_num_rows($result) == 1){
            //create an array
            $emparray = array();
            $row =mysqli_fetch_assoc($result);    
            $emparray[] = $row;
            echo json_encode(array("status" => true, "data" => $emparray));
        }
        else{
            echo json_encode(array("status" => false));
        }
    } else {
        $sql = "SELECT * 
                FROM college_events 
                WHERE n_slider = '$nSlider' 
                ORDER BY n_id DESC";
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