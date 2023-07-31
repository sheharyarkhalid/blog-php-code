
    $(document).ready(function() {  

        $('.mobile_res_toggle_btn').click(function () {
            $('.mobile_res_toggle_content').toggleClass('responsive_bar');
        });
        

        }); 
      
        $(document).ready(function () {
            $(".insta_custom_section_slide").slick({
              slidesToShow: 1,
              slidesToScroll: 1,
              autoplay: true,
              autoplaySpeed: 1400,
              dots: false,
              arrows: false,
              responsive: [
                {
                  breakpoint: 1024,
                  settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    autoplay: true,
                    autoplaySpeed: 1400,
                    dots: false,
                    arrows: false,
                  },
                },
                {
                  breakpoint: 767,
                  settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    autoplay: true,
                    autoplaySpeed: 1400,
                         dots: false,
                         arrows: false,
                  },
                },
                {
                  breakpoint: 540,
                  settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    autoplay: true,
                    autoplaySpeed: 1400,
                        dots: false,
                        arrows: false,
                  },
                },
                {
                  breakpoint: 400,
                  settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    autoplay: true,
                    autoplaySpeed: 1400,
                         dots: false,
                         arrows: false,
                  },
                },
              ],
            });

            $(".insta_custom_section_slide_two").slick({
              slidesToShow: 1,
              slidesToScroll: 1,
              autoplay: true,
              autoplaySpeed: 1400,
              dots: false,
              arrows: false,
              responsive: [
                {
                  breakpoint: 1024,
                  settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    autoplay: true,
                    autoplaySpeed: 1400,
                    dots: false,
                    arrows: false,
                  },
                },
                {
                  breakpoint: 767,
                  settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    autoplay: true,
                    autoplaySpeed: 1400,
                         dots: false,
                         arrows: false,
                  },
                },
                {
                  breakpoint: 540,
                  settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    autoplay: true,
                    autoplaySpeed: 1400,
                        dots: false,
                        arrows: false,
                  },
                },
                {
                  breakpoint: 400,
                  settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    autoplay: true,
                    autoplaySpeed: 1400,
                         dots: false,
                         arrows: false,
                  },
                },
              ],
            });
         
         
        
              $("#search_button").click(function(e){
                e.preventDefault();
                var data = $("#search_input").val();
                var action="search_post";
                $.ajax({
                  type: "GET",
                  url: "./php-files/function.php",
                  data:{"action": action, "data" : data},
                  success:function (data) {
                    var response = JSON.parse(data);
                    if(response.success == true){
                      console.log(data);
                      $('.category_page_alert').addClass('show');
                      $('.category_page_alert p').text('Article Deleted !');
                      setTimeout(function() {
                        $('.category_page_alert').removeClass('show');
                        $("#row"+val).fadeOut();
                        $("#row"+val).remove();
                      }, 3000);
                   
                    }
          
                  } 
                }); 
            });
          
         
         
          });