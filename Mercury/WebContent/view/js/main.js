$(document).ready(function(){

    $("#setting-button").click(function(){
        $(".box-spec").toggle();
        $('html,body').animate({
        	scrollTop: $(".box-spec").offset().top},'slow'
        );
    });


    /***** DROP-DOWN MENU *****/

    $(".login").click(function(){
        if( $("#menu-login-false").css('display') == 'none') {
        	$('#menu-login-false').show();
		} else {
			$('#menu-login-false').hide();
		}
    });
    $('.container-2').click(function() {
		if( $("#menu-login-false").css('display') == 'block') {
        	$('#menu-login-false').hide();
		} 		
	});

	$(".user-menu").click(function(){
        if( $("#menu-login-true").css('display') == 'none') {
        	$('#menu-login-true').show();
		} else {
			$('#menu-login-true').hide();
		}
    });
    $('.container-2').click(function() {
		if( $("#menu-login-true").css('display') == 'block') {
        	$('#menu-login-true').hide();
		} 		
	});
      	


});