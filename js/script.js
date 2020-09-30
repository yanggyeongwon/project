$(()=>{

    mainpage_effect();

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
        console.log("사진 오버")
        $(this).toggleClass("images_scale")
    })

    let user_scroll;
    let scroll_top = 0;
    let start_scroll = 3;
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
            $(".menu").removeClass('nav-down').addClass('nav-up');
        }else{
            if(st + $(window).height() < $(document).height()){
                $(".menu").removeClass('nav-up').addClass('nav-down');
            }
        }
        scroll_top = st;
    }
})