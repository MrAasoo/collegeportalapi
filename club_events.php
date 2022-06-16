<?php


    require "db_connection.php";

    $eventId = $_GET["event_id"];
    $eventType = $_GET["event_type"];
    $clubId = $_GET["club_id"];

    //fetch table rows from mysql db
    if($eventId != 0){
        $sql = "SELECT event_id, event_type, event_topic, event_motive, event_post_date, event_date, event_image_path
                FROM club_events 
                WHERE event_id = '$eventId' AND club_id = '$clubId';";
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
        $sql = "SELECT event_id, club_id, event_topic, event_motive, event_post_date
                FROM club_events 
                WHERE club_id = '$clubId' AND event_type = '$eventType'
                ORDER BY club_id DESC";
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