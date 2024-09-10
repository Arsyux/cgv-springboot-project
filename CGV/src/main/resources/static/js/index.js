$(document).ready(function() {
    
    // 메인 광고 랜덤 선택
    random_ad = Math.floor(Math.random() * 4 + 1);
    switch(random_ad) {
        case 1:
            $('#mainvideo_src').attr("src", 'videos/main_pilot.mp4');
            $('#main_ticketing').attr("href", '/ticket?ticket=pilot');
            break;
        case 2:
            $('#mainvideo_src').attr("src", 'videos/main_happy.mp4');
            $('#main_ticketing').attr("href", '/ticket?ticket=happy');
            break;
        case 3:
            $('#mainvideo_src').attr("src", 'videos/main_lives.mp4');
            $('#main_ticketing').attr("href", '/ticket?ticket=lives');
            break;
        case 4:
            $('#mainvideo_src').attr("src", 'videos/main_rock.mp4');
            $('#main_ticketing').attr("href", '/ticket?ticket=rock');
            break;
        default:
            $('#mainvideo_src').attr("src", 'videos/main_pilot.mp4');
            $('#main_ticketing').attr("href", '/ticket?ticket=pilot');
            break;
    }
});

function main_movie_play() {
    if($("#main_movie_play").attr("src").includes("pause")) {
        $("#main_movie_play").attr("src", "images/common/play.png");
        $("#mainvideo_src").get(0).pause();
    } else {
        $("#main_movie_play").attr("src", "images/common/pause.png");
        $("#mainvideo_src").get(0).play();
    }
}

function main_movie_sound() {
    if($("#main_movie_sound").attr("src").includes("soundOff")) {
        $("#main_movie_sound").attr("src", "images/common/soundOn.png");
        $("#mainvideo_src").get(0).muted = false;
    } else {
        $("#main_movie_sound").attr("src", "images/common/soundOff.png");
        $("#mainvideo_src").get(0).muted = true;
    }
}