<?php

require "db_connection.php";

define('CLUB_MEMBER_LIST', 201);
define('CLUB_MEMBER_LIST_ADMIN', 202);
define('JOIN_CLUB', 2010);
define('CANCEL_REQ', 2020);
define('LEAVE_CLUB', 2030);
define('ACCEPT_MEMBER', 2040);
define('REMOVE_MEMBER', 2050);
define('BLOCK_MEMBER', 2060);
define('UNBLOCK_MEMBER', 2070);

    $req = $_GET["req"];
    $club_id = $_GET["club_id"];
    $std_id = $_GET["std_id"];
    $sr_no = $_GET["sr_no"];


    
    // Current Date and Time
    date_default_timezone_set("Asia/Calcutta");
    $date = date("Y-m-d");
    //$time = date("H:i:s");
    
    $result = "";

    switch($req){
        case CLUB_MEMBER_LIST:
            $sql = "SELECT club_members.member_type, club_members.join_date, student_account.std_name, student_account.std_image, branch_info.branch_name 
                    FROM club_members 
                    LEFT JOIN student_account 
                    ON club_members.std_id = student_account.std_id 
                    LEFT JOIN branch_info 
                    ON student_account.branch_id = branch_info.branch_id 
                    WHERE club_members.club_id = '$club_id' AND club_members.member_status = 1;";
            break;

        case CLUB_MEMBER_LIST_ADMIN:
            $sql = "SELECT club_members.sr_no, club_members.member_status, club_members.member_type, club_members.join_date, club_members.std_id, student_account.std_name, student_account.std_image, branch_info.branch_name 
                    FROM club_members 
                    LEFT JOIN student_account 
                    ON club_members.std_id = student_account.std_id 
                    LEFT JOIN branch_info 
                    ON student_account.branch_id = branch_info.branch_id 
                    WHERE club_members.club_id = '$club_id';";
            break;

        case JOIN_CLUB:
            $sql_check = "SELECT club_id, std_id 
                            FROM club_members
                            WHERE club_id = '$club_id' AND std_id = '$std_id';";
            
            $result = mysqli_query($db_con, $sql_check);
            if(mysqli_num_rows($result) == 1){
                $result = "exist";
            } else {
                $sql = "INSERT INTO club_members(club_id, std_id, join_date, member_status, member_type) VALUES ('$club_id', '$std_id','$date', '2','2')";
            }
            break;

        case CANCEL_REQ:
            $sql = "DELETE FROM club_members WHERE sr_no = $sr_no AND std_id = '$std_id';";
            break;

        case LEAVE_CLUB:
            $sql = "DELETE FROM club_members WHERE sr_no = $sr_no AND std_id = '$std_id';";
            break;

        case ACCEPT_MEMBER:
            $sql = "UPDATE club_members SET member_status = '1' WHERE sr_no = $sr_no AND std_id = '$std_id';";
            break; 

        case REMOVE_MEMBER:
            $sql = "DELETE FROM club_members WHERE sr_no = $sr_no AND std_id = '$std_id';";
            break;

        case BLOCK_MEMBER:
            $sql = "UPDATE club_members SET member_status = '3' WHERE sr_no = $sr_no AND std_id = '$std_id';";
            break;

        case UNBLOCK_MEMBER:
            $sql = "UPDATE club_members SET member_status = '1' WHERE sr_no = $sr_no AND std_id = '$std_id';";
            break;  

    }

    if($result == "exist"){
        echo json_encode(array("status" => false, "result" => $result));

    } if($req == CLUB_MEMBER_LIST || $req == CLUB_MEMBER_LIST_ADMIN){
        $result = mysqli_query($db_con, $sql) or die("Error in Selecting " . mysqli_error($db_con));

        if(mysqli_num_rows($result) > 0){
    
            while($row = mysqli_fetch_assoc($result))
            {
                $emparray[] = $row;
            }

            echo json_encode(array("status" => true, "data" => $emparray));
        } else {
            echo json_encode(array("status" => false)); 
        }

    } else {
        if(mysqli_query($db_con, $sql)){
            echo json_encode(array("status" => true, "result" => $req));
        } else {
            echo json_encode(array("status" => false, "result" => $req));
        }
    }

    
    //close the db connection
    mysqli_close($db_con);
?>