<?php

include ('../db_connect.php');
session_start();
$user_id = $_SESSION['user_id'];
$desc = $_POST['desc'];
$profile_name = $_POST['profile_name'];

$target_dir = "../uploads/".$profile_name;


// To create the nested structure, the $recursive parameter 
// to mkdir() must be specified.

if (!mkdir($target_dir, 0777, true)) {
    die('Failed to create directories...');
}else{
    date_default_timezone_set('Asia/Manila');
    $todays_date = date("Y-m-d H:i:s");
    $sql="INSERT INTO `folder` (`folder_id`, `user_id`, `folder_path`, `folder_name`, `desc`, `date_created`) VALUES (NULL, '$user_id', '$target_dir', '$profile_name', '$desc ', '$todays_date');";
    $q = mysqli_query($conn,$sql) or die (mysqli_error($conn));
    if($q){
      header('location: ../admin/index.php?page=documentprofile');
    }else{
      echo "Sorry, there was an error uploading your file.";
    }

}

// INSERT INTO `files` (`f_id`, `user_id`, `filename`, `file_type`, `date_uploaded`, `remarks`, `file_path`) VALUES (NULL, '', 'test', 'testtes', '', 'test', 'test');
?>