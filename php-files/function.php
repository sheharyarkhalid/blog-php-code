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

 ?>