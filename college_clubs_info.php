<?php

require "db_connection.php";

define('GET_CLUB_DATA', "1");
define('IS_STUDENT_CLUB_MEMBER', "2");
define('GET_STUDENT_CLUB_STATUS', "3");

    $std_id = $_GET["std_id"];
    $club_id = $_GET["club_id"];
    $req = $_GET["req"];

    //create an array
    $emparray = array();

    // Queries
    if($req == GET_CLUB_DATA) {
        $sql = "SELECT * FROM club_list WHERE club_id = '$club_id';";
    } else if($req == IS_STUDENT_CLUB_MEMBER){
        $sql = "SELECT * FROM club_members WHERE club_id = '$club_id' AND std_id = '$std_id';";
    } else if($req == GET_STUDENT_CLUB_STATUS)  {
        $sql = "SELECT CM.club_id, CM.join_date, CM.member_status, CM.member_type, CL.club_name, CL.club_motive, CL.club_start_date, CL.club_logo, CL.club_background_image
        FROM club_members AS CM
        LEFT JOIN club_list AS CL
        ON  CM.club_id = CL.club_id 
        WHERE CM.std_id = '$std_id' AND CM.club_id = '$club_id' ;";    
    } 


    // sql result
    $result = mysqli_query($db_con, $sql) or die("Error in Selecting " . mysqli_error($db_con));

    if(mysqli_num_rows($result) >= 1){

        while($row = mysqli_fetch_assoc($result))
        {
            $emparray[] = $row;
        }

        if($req == GET_CLUB_DATA){
            // Total members in group
            $total_mem_sql = "SELECT COUNT(club_id) AS 'members' FROM club_members where club_id = '$club_id' AND member_status = 1 ;";
            $total_members_res = mysqli_query($db_con, $total_mem_sql);
            $total_member = mysqli_fetch_assoc($total_members_res);

            echo json_encode(array("status" => true, "data" => $emparray, "total_members" =>  $total_member["members"]));
        } else {
            echo json_encode(array("status" => true, "data" => $emparray));
        }
    } else {
        echo json_encode(array("status" => false)); 
    }
    
    //close the db connection
    mysqli_close($db_con);
?>