<?php

    require "db_connection.php";

    //fetch table rows from mysql db
    $sql = "select * from college_contact";
    $result = mysqli_query($db_con, $sql) or die("Error in Selecting " . mysqli_error($db_con));


    //create an array
    $emparray = array();
    while($row =mysqli_fetch_assoc($result))
    {
        $emparray[] = $row;
    }
    echo json_encode(array("status" => true, "data" => $emparray));
    
    //close the db connection
    mysqli_close($db_con);

?>