<?php

session_start();
$user_id = $_SESSION['user_id'];
    $conn = mysqli_connect("localhost","root","") or die (mysqli_error($conn));
    $db = mysqli_select_db($conn,"db_fms");
    $sql = "SELECT * FROM folder where folder_id !='1'";
    $q = mysqli_query($conn,$sql) or die (mysqli_error($conn));

        $response["data"] = array();
        while ($data = mysqli_fetch_array($q)) {
            $list["folder_id"] = $data["folder_id"];
            $list["folder_path"] = $data["folder_path"];
            $list["folder_name"] = $data["folder_name"];
            $list["date_created"] = $data["date_created"];
            $list["desc"] = $data["desc"];
            array_push($response["data"], $list);
        }
    	echo json_encode($response);



?>