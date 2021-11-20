<?php


session_start();
include '../../../db_connect.php';
$user_id = $_SESSION['user_id'];
    $sql = "SELECT * FROM files where user_id = '$user_id' and folder_id ='0'";
    $q = mysqli_query($conn,$sql) or die (mysqli_error($conn));

        $response["data"] = array();
        while ($data = mysqli_fetch_array($q)) {
            $list["f_id"] = $data["f_id"];
            $list["folder_id"] = $data["folder_id"];
            $list["user_id"] = $data["user_id"];
            $list["date_uploaded"] = $data["date_uploaded"];
            $list["filename"] = $data["filename"];
            $list["file_type"] = $data["file_type"];
            $list["remarks"] = $data["remarks"];
            $list["file_type"] = $data["file_type"];
            $list["file_path"] = $data["file_path"];
            array_push($response["data"], $list);
        }
    	echo json_encode($response);



?>