<?php
include '../db_connect.php'

$user_id = $_POST['user_id'];
$mygroup_id = $_POST['group_id'];

    $sql = "SELECT * FROM folder where folder_id !='1' and group_id = '$mygroup_id'";
    $q = mysqli_query($conn,$sql) or die (mysqli_error($conn));

        $response["data"] = array();
        while ($data = mysqli_fetch_array($q)) {
            $list["folder_id"] = $data["folder_id"];
            $list["file_path"] = $data["folder_path"];
            $group_id =$data["group_id"];
     
            if($group_id==0){
                $list["group_name"] =  "admin";
            }else{
                $sql2 = "SELECT group_name FROM groups where group_id = '$group_id'";
                $q2 = mysqli_query($conn,$sql2) or die (mysqli_error($conn));
             
                            while($r = mysqli_fetch_assoc($q2))
                            {
                        
                                $list["group_name"] =  $r['group_name'];
                            }
            }
            $list["filename"] = $data["folder_name"];
            $list["date_created"] = $data["date_created"];
            $list["desc"] = $data["desc"];
            array_push($response["data"], $list);
        }
    	echo json_encode($response);



?>