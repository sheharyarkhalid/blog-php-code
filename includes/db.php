<?php 

error_reporting(E_ALL);

$db['host_name']="localhost";
$db['user_name']="root";
$db['user_pass']="password";
$db['database']="blog_cms";



$db_conn=mysqli_connect($db['host_name'],$db['user_name'],$db['user_pass'],$db['database']);

if($db_conn){
    //echo "database connect";
}
else{
    echo "Failed to connect to MySQL: " .  mysqli_connect_error();
    exit();
}


?>

