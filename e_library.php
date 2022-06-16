<?php


require "db_connection.php";

    $req_type = $_GET["req_type"];
        
    
    
    $sql = "SELECT * FROM e_library WHERE book_type = '$req_type';";
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

        
    //close the db connection
    mysqli_close($db_con);

?>