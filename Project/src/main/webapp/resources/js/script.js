$(()=>{

    mainpage_effect();


    $(document).ready(function(){
        $(window).scroll(function(){
          if($(this).scrollTop() > 200 ){
            $(".totop_arrow1").fadeIn();
          }else{
            $(".totop_arrow1").fadeOut();
          }
        });
        $(".totop_arrow1").click(function(){
          $("html, body").animate({
              scrollTop : 0
          },400);
          return false;
        });
      });

	$('.bottom_product').on({
		click : function(){
			location.href="product.prd";
		}
	});
	
    $("#mypage span").hide();
    $("#mypage").on({
        mouseenter: function() {
            $("#mypage span").show();
        },
        mouseleave: function() {
            $("#mypage span").hide()
        }
    })
    
    $("#basket span").hide();
    $("#basket").on({
        mouseenter: function() {
            $("#basket span").show();
        },
        mouseleave: function() {
            $("#basket span").hide()
        }
    })
    
    function mainpage_effect(){
        $("#images img:gt(0)").hide();
        setInterval(function() { 
            $('#images img:first').fadeOut(1000).next().fadeIn(1000).end().appendTo('#images');
        },3000);
    }
   

    $(".menu").hover(function(){
        console.log("메뉴 오버")
        $(this).toggleClass("menu_color")
    })

    $(".images_show").hover(function(){
        $(this).toggleClass("images_scale")
    })

    $(".images_show p").hide();
    $(".images_show").on({
        mouseenter: function() {
            const images_index = $(".images_show").index(this);
            $(".images_show p").eq(images_index).show();
        },
        mouseleave: function() {
            $(".images_show p").hide()
        }
    })
    $("#filter").click(function(){
        console.log("filter");
        $(".product_list_btn_hover").toggleClass("active")
        $("#product_list_btn").slideToggle();

    })


    //메뉴 스크롤 이벤트
    let user_scroll;
    let scroll_top = 0;
    let start_scroll = 2;
    const nav_height = $(".menu").outerHeight();

    $(window).scroll(function(e){
        user_scroll = true;
    })

    setInterval(function(){
        if(user_scroll){
            scrolls();
            user_scroll = false;
        }
    },1000);

    function scrolls(){
        var st = $(this).scrollTop();

        if(Math.abs(scroll_top - st) <= start_scroll)
            return;
        if(st > scroll_top && st > nav_height){
            $(".menu").stop().animate({top: -100})
        }else{
            if(st + $(window).height() < $(document).height()){
                $(".menu").stop().animate({top: 0})
            }
        }
        scroll_top = st;
    }

	
	var formData = new FormData($(''))

	
		




});
