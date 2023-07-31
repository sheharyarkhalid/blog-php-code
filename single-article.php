<?php
include('includes/db.php');
include('./php-files/function.php');
?>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8" />
    <title>Blog</title>
    <meta name="description" content="Blog">
    <meta name="copyright" content="Blog">
    <meta name="author" content="Blog">
    <meta name="email" content="Blog@gmail.com">
    <meta name="Distribution" content="Global">
    <meta name="Rating" content="General">
    <meta name="Robots" content="INDEX,FOLLOW">
    <meta name="Revisit-after" content="31 Days">

    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600;1,700&family=Plus+Jakarta+Sans:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/single_article.css">

    <script type="text/javascript" src="./javascript/script.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.css" rel="stylesheet">

</head>

<?php

if(isset($_POST['submit_article_comment'])){
    $responce=add_article_comment($db_conn,$_POST);

    if ($responce == '1' || $responce == 'true') {

        ?>
            <script>
              $(document).ready(function() {
                $('.category_page_alert').addClass('show');
                $('.category_page_alert p').text('Comment added. it will show when admin aprove !');
                setTimeout(function() {
                  $('.category_page_alert').removeClass('show');
                }, 4000);
        
              });
            </script>
        
          <?php } else {
          }
        
          //  echo $responce;
        

}

$slug = $_GET['slug'];
if ($slug == '') {
    header('Location:index.php');
}
//echo $slug;
$res_single_art = get_single_art_data($db_conn, $slug);

$final_date = date("F j, Y", strtotime($res_single_art['date']));

$img_value = $res_single_art['arr_main_img'];
$art_desc =  json_decode($res_single_art['article_des'], true);
$final_art_des = urldecode($art_desc['html']);

// echo $final_date;
// echo '<pre>';
//print_r($final_art_des);
//echo $art_desc;

?>

<div class="alert alert-success alert-dismissible fade category_page_alert" role="alert">
    <p></p>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
  </div>


<div class="single_article_parent">
    <div class="custom_container">
        <div class="single_article_box">

            <div class="single_article_data">
                <div class="single_article_bread_crums">
                    <a>Home</a><i class="fal fa-angle-right"></i><a>slug name</a>
                </div>
                <div class="single_article_heading">
                    <h3><?php echo $res_single_art['article_title'] ?></h3>
                </div>
                <div class="single_article_short_detail">
                    <div class="single_article_short_detial_left">
                        <figure><img src="./images/avtar.png"> <span>By Watson</span></figure>
                        <small><?php echo $final_date ?></small>
                    </div>
                    <div class="single_article_short_detial_right">
                        <i class="fas fa-envelope"></i>
                        <small>0</small>
                    </div>
                </div>
                <div class="article_share_button">
                    <a class="fb"><i class="fab fa-facebook-f " aria-hidden="true"></i></a>
                    <a class="insta"><i class="fab fa-instagram " aria-hidden="true"></i></a>
                    <a class="twitter"><i class="fab fa-twitter " aria-hidden="true"></i></a>
                    <a class="whatsapp"><i class="fab fa-whatsapp " aria-hidden="true"></i></a>
                </div>
                <div class="single_article_main_img">
                    <figure>
                        <?php echo "<img src='admin/$img_value'>" ?>
                    </figure>
                </div>
                <div class="single_article_main_detail">
                    <?php echo $final_art_des ?>
                </div>

                <div class="article_coment_section">

                    <section class="blog_section_one">

                        <form method="POST" >
                            <div class="blog_page_form_content">

                                <div class="blog_form_fields">
                                    <span>Author Name</span>
                                    <input type="text" placeholder="Enter your full name" required="" name="name" value="" />

                                </div>


                                <div class="blog_form_fields">
                                    <span>Email</span>
                                    <input type="text" placeholder="Enter your email address" required="" name="email" value="" />

                                </div>

                                <div class="blog_form_fields">
                                    <span>Message</span>
                                    <textarea placeholder="Type your message here..." cols="20" rows="4" name="message" required></textarea>

                                </div>
                                <input type="hidden" name="article_id" value="<?php echo $res_single_art['article_id'] ; ?>" />


                                <div class="blog_form_submit_btn">
                                    <button id="article_comment" name="submit_article_comment" type="submit">

                                        Submit
                                    </button>
                                </div>
                            </div>
                        </form>


                    </section>





                </div>

            </div>

            <div class="">

                <div class="search_bar_section">

                    <form>
                        <input type="search" id="search_input" placeholder="Search" aria-label="Search">
                        <button id="search_button" type="submit">Search</button>
                    </form>

                </div>

            </div>


        </div>

    </div>

</div>

</html>