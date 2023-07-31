<?php 

function get_blog_list($db_conn){

 
$get_art="SELECT * from `articles`"; 

$run_get_query=$db_conn->query($get_art);
// $ret[] ='';
// while($data = $run_get_query->fetch_assoc()){
//     $ret[] = $data;
// } 

// $teste=json_decode($run_get_query);
    
// echo urldecode($teste->html);
// $tets= urldecode($teste);


$res = $run_get_query -> fetch_all(MYSQLI_ASSOC);



 return $res;

}
 
function get_single_art_data($db_conn,$slug){

    $get_art="SELECT * from `articles` WHERE article_slug='$slug'"; 
    $run_get_query=$db_conn->query($get_art);
    $res = $run_get_query -> fetch_all(MYSQLI_ASSOC);
    return $res[0];
}

function add_article_comment($db_conn,$data){

$name=$data['name'];
$email=$data['email'];
$message=$data['message'];
$article_id=$data['article_id'];
$date=date("Y/m/d");

$status='false';
//print_r($name);
$add_comment= "INSERT INTO `comments` (`article_id`, `autor_name`, `autour_email`, `message`, `status`, `date`) values ('$article_id','$name','$email','$message','$status','$date')";
 $run_add_comment_query=mysqli_query($db_conn,$add_comment);

 $update_article_comment_count="UPDATE `articles` SET `comment_count`=comment_count + 1 WHERE article_id=$article_id ";
 $update_article_comment_count=mysqli_query($db_conn,$update_article_comment_count);


 return $run_add_comment_query;



}


 ?>