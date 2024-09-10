$(document).ready(function() {
    // 4가지 광고 중 랜덤하게 선택
    let random_ad = Math.floor(Math.random() * 4 + 1);
    switch(random_ad) {
        case 1:
            $('#header_adImg').attr("src", '../images/header_pilot.png');
            $('#header_ad').css("background", '#0065D4');
			$('#header_adClose').css("background", '#0065D4');
            break;
        case 2:
            $('#header_adImg').attr("src", '../images/header_happy.png');
            $('#header_ad').css("background", '#2C72B8');
			$('#header_adClose').css("background", '#2C72B8');
            break;
        case 3:
            $('#header_adImg').attr("src", '../images/header_lives.png');
            $('#header_ad').css("background", '#C4E3FF');
			$('#header_adClose').css("background", '#C4E3FF');
            break;
        case 4:
            $('#header_adImg').attr("src", '../images/header_rock.png');
            $('#header_ad').css("background", '#000000');
			$('#header_adClose').css("background", '#000000');
            break;
        default:
            $('#header_adImg').attr("src", '../images/header_pilot.png');
            $('#header_ad').css("background", '#0065D4');
			$('#header_adClose').css("background", '#0065D4');
            break;
    }
});

$(window).on('scroll',function(){
    if($(window).scrollTop()){
        $('#nav_wrap').addClass('active');
        $('#logoImg').attr('src', "../images/common/cgv_logo_w.png");
        $('#loginPassword').attr('src', "../images/common/loginPassword_w.png");
        $('#loginJoin').attr('src', "../images/common/loginJoin_w.png");
        $('#loginCustomer').attr('src', "../images/common/loginCustomer_w.png");
		$('div.fix_ticketingBox a.ticketing').css('cursor', 'pointer');
		$('div.fix_ticketingBox a.fix_ticketing_ImgBox').css('cursor', 'pointer');
		$('#fix_ticketing').css('opacity', '1');
    }else{
        $('#nav_wrap').removeClass('active');
        $('#logoImg').attr('src', "../images/common/cgv_logo.png");
        $('#loginPassword').attr('src', "../images/common/loginPassword.png");
        $('#loginJoin').attr('src', "../images/common/loginJoin.png");
        $('#loginCustomer').attr('src', "../images/common/loginCustomer.png");
		$('div.fix_ticketingBox a.ticketing').css('cursor', 'default');
		$('div.fix_ticketingBox a.fix_ticketing_ImgBox').css('cursor', 'default');
		$('#fix_ticketing').css('opacity', '0');
		
		
    }
});

function header_ad_close() {
	$('#header_adImg').css("display", 'none');
	$('#header_ad').css("display", 'none');
	$('#header_adClose').css("display", 'none');
	
	// index일 경우 영화 영역을 당겨옴
	if($('#mainMovieSection').length != 0) {
		$('#mainMovieSection').css("top", '0');
	}
}

function go_top() {
	if($('#fix_ticketing').css('opacity') == 1) {
		$('html').scrollTop('0');		
	}
}