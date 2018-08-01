$(document).ready(function(){
	$('#menu').slicknav();
	$("#responsive-video").fitVids();

	$(".discript1").hide();
	$(".toogle_button1").click(function(){
		$(".discript1").slideToggle("slow");
	});
	$(".discript2").hide();
	$(".toogle_button2").click(function(){
		$(".discript2").slideToggle("slow");
	});
	$(".discript3").hide();
	$(".toogle_button3").click(function(){
		$(".discript3").slideToggle("slow");
	});
	$(".discript4").hide();
	$(".toogle_button4").click(function(){
		$(".discript4").slideToggle("slow");
	});

	$(".scrole_auto").hide();
	$(window).scroll(function(){
    	if($(this).scrollTop()>200){
    		$('.scrole_auto').fadeIn();
    	}else{
    		$('.scrole_auto').fadeOut();
    	}
    });
	

	$('.scrole_auto').click(function(){
		$("html,body").animate({
			scrollTop:0
		},600);
		return flase;
		});


/* socal pack */
	$(".sid_socal").hide();
	$(window).scroll(function(){
    	if($(this).scrollTop()>200){
    		$('.sid_socal').fadeIn();
    	}else{
    		$('.sid_socal').fadeOut();
    	}
    });
	

	



		$(".second_socal").hide();
	$(window).scroll(function(){
    	if($(this).scrollTop()>200){
    		$('.second_socal').fadeIn();
    	}else{
    		$('.second_socal').fadeOut();
    	}
    });
	

	



		$(".thrd_section").hide();
	$(window).scroll(function(){
    	if($(this).scrollTop()>200){
    		$('.thrd_section').fadeIn();
    	}else{
    		$('.thrd_section').fadeOut();
    	}
    });
	

	


		$(".forth_section").hide();
	$(window).scroll(function(){
    	if($(this).scrollTop()>200){
    		$('.forth_section').fadeIn();
    	}else{
    		$('.forth_section').fadeOut();
    	}
    });

    $(".nav_bar_main").sticky({
    	topSpacing:0,
    	'zIndex':"",


    });
   
	

	


});