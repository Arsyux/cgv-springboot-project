$(document).ready(function () {
    $(".bxslider").bxSlider( {
        controls: true,
        /*
		auto: true,
		loop: true,
		*/
        slideWidth: 1000,
        pager: false,
		randomStart: false,
		video: false,
		preloadImages: 'visible',
		mode: 'fade'
    });
	
	$(".bxsliderV")	.bxSlider( {
        controls: true,
        /*
		auto: true,
		loop: true,
		*/
        slideWidth: 1000,
        pager: false,
		randomStart: false,
		video: true,
		preloadImages: 'visible',
		mode: 'fade'
    });
	
});

function special_prev() {
	let nowPage = $("#page").val();
	
	if(nowPage == 3) {
		$(".cinemaBox").css("transform", "translateX(-940px)");
		$("#page").val(2);
		
		$("#special_arrow_right").css("opacity", "1");
		$("#special_arrow_right").css("cursor", "pointer");
		
	} else if(nowPage == 2) {
		$(".cinemaBox").css("transform", "translateX(0px)");
		$("#page").val(1);
		$("#special_arrow_left").css("opacity", "0.2");
		$("#special_arrow_left").css("cursor", "auto");
		
		$("#special_arrow_right").css("opacity", "1");
		$("#special_arrow_right").css("cursor", "pointer");
	}

}

function special_next() {
	let nowPage = $("#page").val();

	if(nowPage == 1) {
		$(".cinemaBox").css("transform", "translateX(-940px)");
		$("#page").val(2);
		$("#special_arrow_left").css("opacity", "1");
		$("#special_arrow_left").css("cursor", "pointer");
		
	} else if(nowPage == 2) {
		$(".cinemaBox").css("transform", "translateX(-1330px)");
		$("#page").val(3);
		
		$("#special_arrow_left").css("opacity", "1");
		$("#special_arrow_left").css("cursor", "pointer");
		
		$("#special_arrow_right").css("opacity", "0.2");
		$("#special_arrow_right").css("cursor", "auto");
	}
	
}
