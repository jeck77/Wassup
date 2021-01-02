<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
@font-face {
	font-family : 'rKorea';
	src : url("../fonts/RecipekoreaFONT.ttf") format('truetype');
}
@font-face {
	font-family : 'nexonM';
	src : url("../fonts/NEXON Lv2 Gothic Medium.ttf") format('truetype');
}
@font-face {
	font-family : 'nexonL';
	src : url("../fonts/NEXON Lv2 Gothic Light.ttf") format('truetype');
}
@font-face {
	font-family : 'nexonB';
	src : url("../fonts/NEXON Lv2 Gothic Bold.ttf") format('truetype');
}
	#navi{
        width: 100%;
        height: 2.5%;
        font-family : nexonM;
        /*background-color: gray;*/
    }
    #navi li {
        background-color: white;
        float: left;
        list-style: none;
        width: 24%;
        height: 63px;
        line-height: 3.3;
        font-size: 19px;
        text-align: center;
        z-index: 50;
        position : relative;
        /*border: 1px solid gray;*/
    }
    #navi li a {
        display: block;
        color: black;
    }
    #navi li a:hover {
        background-color: #dee5f1;
        color: pink;
        transition-duration : 0.4s;
    }
    .foodNav {
        visibility: hidden;
        opacity: 0;
        transition: all 1s ease 0s, visibility 0s linear 3s;
    }
    #navi li:hover ul {
       visibility: hidden;
       opacity: 1;
       
    }
    #navi li:hover ul li {
    	font-family : nexonM;
  		 visibility: visible;
        margin-left:10px;
        width:80%;
        transition-delay: all 2s ease 0s, visibility 0s linear 3s;
    }
</style>

<div id="navi">
	<ul>
		<li><a href="#"><b>음식</b></a>
			<ul class="foodNav">
				<li><a href="#">한식</a></li>
				<li><a href="#">중식</a></li>
				<li><a href="#">일식</a></li>
				<li><a href="#">양식</a></li>
				<li><a href="#">치킨</a></li>
				<li><a href="#">디저트</a></li>   
				<li><a href="#">주류</a></li>
				<li><a href="#">패스트푸드</a></li>
			</ul>
		</li>
		<li><a href="#"><b>라스트오더</b></a></li>
		<li><a href="#"><b>쿠폰/이벤트</b></a></li>
		<li><a href="/notice/listForm"><b>공지사항</b></a></li>
	</ul>
</div>