<?php

include ('../db_connect.php');
session_start();
$user_id = $_SESSION['user_id'];

$target_dir = "../uploads/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));


// Check if file already exists
if (file_exists($target_file)) {
  echo "Sorry, file already exists.";
  $uploadOk = 0;
}

// Check file size
if ($_FILES["fileToUpload"]["size"] > 500000) {
  echo "Sorry, your file is too large.";
  $uploadOk = 0;
}

// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
  echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
  if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
   
    $sql="INSERT INTO `files` (`f_id`, `user_id`, `filename`, `file_type`, `date_uploaded`, `feedback`, `file_path`) VALUES (NULL, '$user_id', 'test', 'testtes', '', 'test', 'test');";
    $q = mysqli_query($conn,$sql) or die (mysqli_error($conn));
    if($sql){
      header('location: ../admin/index.php?page=files');
    }else{
      echo "Sorry, there was an error uploading your file.";
    }
  } else {
    echo "Sorry, there was an error uploading your file.";
  }
}

// INSERT INTO `files` (`f_id`, `user_id`, `filename`, `file_type`, `date_uploaded`, `feedback`, `file_path`) VALUES (NULL, '', 'test', 'testtes', '', 'test', 'test');
?>