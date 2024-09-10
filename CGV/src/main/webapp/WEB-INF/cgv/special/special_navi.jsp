<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<input id="page" type="number" value="${ page }" hidden="hidden">
<div id="special_nav">
	<img id="special_arrow_left" onclick="special_prev()" src="images/common/special_arrow.svg">
	
	<div class="cinemaArea">
	
		
		<!-- page 1 -->
		<a id="IMAX" href="special?cinema=IMAX" class="cinemaBox">
			<img class="cinemaImg" src="images/common/special_logo_IMAX.png">
		</a>
		<a id="4DX" href="special?cinema=4DX" class="cinemaBox">
			<img class="cinemaImg" src="images/common/special_logo_4DX.png">
		</a>
		<a id="U4DX" href="special?cinema=U4DX" class="cinemaBox">
			<img class="cinemaImg" src="images/common/special_logo_U4DX.png">
		</a>
		<a id="ScreenX" href="special?cinema=ScreenX" class="cinemaBox">
			<img class="cinemaImg" src="images/common/special_logo_ScreenX.png">
		</a>
		<a id="SPHEREX" href="special?cinema=SPHEREX" class="cinemaBox">
			<img class="cinemaImg" src="images/common/special_logo_SPHEREX.png">
		</a>
		<a id="SOUNDX" href="special?cinema=SOUNDX" class="cinemaBox">
			<img class="cinemaImg" src="images/common/special_logo_SOUNDX.png">
		</a>
		<a id="STARIUM" href="special?cinema=STARIUM" class="cinemaBox">
			<img class="cinemaImg" src="images/common/special_logo_STARIUM.png">
		</a>
		
		
		<!-- page 2 -->
		<a id="PRIVATEBOX" href="special?cinema=PRIVATEBOX" class="cinemaBox">
			<img class="cinemaImg" src="images/common/special_logo_PRIVATEBOX.png">
		</a>
		<a id="DOLBY" href="special?cinema=DOLBY" class="cinemaBox">
			<img class="cinemaImg" src="images/common/special_logo_DOLBY.png">
		</a>
		<a id="SUITE" href="special?cinema=SUITE" class="cinemaBox">
			<img class="cinemaImg" src="images/common/special_logo_SUITE.png">
		</a>
		<a id="CHEF" href="special?cinema=CHEF" class="cinemaBox">
			<img class="cinemaImg" src="images/common/special_logo_CHEF.png">
		</a>
		<a id="TEMPUR" href="special?cinema=TEMPUR" class="cinemaBox">
			<img class="cinemaImg" src="images/common/special_logo_TEMPUR.png">
		</a>
		<a id="GOLD" href="special?cinema=GOLD" class="cinemaBox">
			<img class="cinemaImg" src="images/common/special_logo_GOLD.png">
		</a>
		<a id="PRIVATE" href="special?cinema=PRIVATE" class="cinemaBox">
			<img class="cinemaImg" src="images/common/special_logo_PRIVATE.png">
		</a>
		
		
		<!-- page 3 -->
		<a id="PREMIUM" href="special?cinema=PREMIUM" class="cinemaBox">
			<img class="cinemaImg" src="images/common/special_logo_PREMIUM.png">
		</a>
		<a id="FORET" href="special?cinema=FORET" class="cinemaBox">
			<img class="cinemaImg" src="images/common/special_logo_FORET.png">
		</a>
		<a id="LIVING" href="special?cinema=LIVING" class="cinemaBox">
			<img class="cinemaImg" src="images/common/special_logo_LIVING.png">
		</a>
		
	</div>
	
	
	<img id="special_arrow_right" onclick="special_next()" src="images/common/special_arrow.svg"><br>
	
</div>
<c:if test="${ page == 1 }">
	<style>
		.cinemaBox {
			transform: translateX(0px);
		}
		#special_arrow_left {
			opacity: 0.2;
			cursor: auto;
		}
		#special_arrow_right {
			opacity: 1;
			cursor: pointer;
		}
	</style>
</c:if>
<c:if test="${ page == 2 }">
	<style>
		.cinemaBox {
			transform: translateX(-700px);
		}
		#special_arrow_left {
			opacity: 1;
			cursor: pointer;
		}
		#special_arrow_right {
			opacity: 1;
			cursor: pointer;
		}
	</style>
</c:if>
<c:if test="${ page == 3 }">
	<style>
		.cinemaBox {
			transform: translateX(-1000px);
		}
		#special_arrow_right {
			opacity: 0.2;
			cursor: auto;
		}
	</style>
</c:if>
<script>
	$("#${ cinema }").css("border", "2px solid #fb4357");
</script>