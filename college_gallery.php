<?php

    require "db_connection.php";

    $media_type = $_GET["gallery_type"];

    
    //fetch table rows from mysql db 
    $sql = "select * from college_gallery where media_type = '$media_type'";
    $result = mysqli_query($db_con, $sql) or die("Error in Selecting " . mysqli_error($db_con));

    if(mysqli_num_rows($result) > 0){

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

    

    //close the db connection
    mysqli_close($db_con);
?>