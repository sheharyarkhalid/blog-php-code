<?php
include('db.php');
include('./php-files/function.php');

$blog_list_res= get_blog_list($db_conn);

function excerpt($title, $cutOffLength) {

    $charAtPosition = "";
    $titleLength = strlen($title);

    do {
        $cutOffLength++;
        $charAtPosition = substr($title, $cutOffLength, 1);
    } while ($cutOffLength < $titleLength && $charAtPosition != " ");

    return substr($title, 0, $cutOffLength) . '...';

}

?>
<section class="home_section_six">
    <div class="custom_container">
        <div class="home_section_six_header">
            <h3>Blogs</h3>
           
        </div>
        <div class="home_section_six_box">
            <?php 
            
            foreach($blog_list_res as $value){
             
                $img_value=$value['arr_main_img'];

                $art_desc =  json_decode($value['article_des'], true);
                $final_art_des= excerpt(strip_tags(urldecode($art_desc['html'])), 60);

                ?>
         
            <a href="single-article.php?slug=<?= $value['article_slug'];?>" target="blank" class="home_section_six_single_box_main">
            <div class="home_section_six_single_box_figure">
                <?php  echo "<img src='admin/$img_value'>"; ?>
             </div>
            
            <div class="home_section_six_single_box">
            <div class="home_section_six_single_box_des">
                    <div class="home_section_six_single_box_des_tags">
                        <span><?php echo date("F j, Y", strtotime($value['date'])); ?></span>
                        <small>0 Comments</small>
                    </div>
                    <!-- <div class="home_section_six_single_box_des_date_time"><span> September 29, 2022</span></div> -->
                </div>   
            <h3><?php echo $value['article_title'] ?></h3>
            <p><?php echo $final_art_des ?></p>
              <strong>Read Post</strong>
            </div>
        </a> 
<?php    }
            ?>
           
 
        </div>
    </div>
</section>