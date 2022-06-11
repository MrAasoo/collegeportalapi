<?php

require "db_connection.php";

    $std_id = $_GET["std_id"];

    if($std_id == "0"){
        $sql = "SELECT club_id, club_name, club_start_date, club_logo FROM club_list;";
    } else {
        $sql = "SELECT club_list.club_id, club_list.club_name, club_list.club_logo, club_members.join_date 
                FROM club_members 
                LEFT JOIN club_list 
                ON club_members.club_id = club_list.club_id 
                WHERE club_members.std_id = '$std_id' 
                ORDER BY club_id ASC;";

    }
    
    $result = mysqli_query($db_con, $sql) or die("Error in Selecting " . mysqli_error($db_con));

    if(mysqli_num_rows($result) >= 1){
        //create an array
        $emparray = array();

        while($row = mysqli_fetch_assoc($result))
        {
            $emparray[] = $row;
        }
        echo json_encode(array("status" => true, "data" => $emparray));
    } else {
        echo json_encode(array("status" => false)); 
    }

?>