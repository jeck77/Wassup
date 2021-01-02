<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WASSUP - 이벤트</title>
</head>
<body>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- 제이쿼리 -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- 다음 주소 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a8cb57d60bbbe20bede9fed1ef145271"></script>
    
<style>
    
    body{
        color: white;
        background: #333366;
    }
    /* a 태그 주석 없애기 */
    
    a:link {text-decoration: none; color: white;}
    a:visited {text-decoration: none; color: white;}
    a:active {text-decoration: none; color: white;}
    a:hover {text-decoration:  none; color: white;}
    
    div{
        border-color: white;
        box-sizing: border-box;
        /*border:solid 1px;*/
    }
    #wapper{
        margin: auto;
        width: 1500px;
        height: 1500px;
    }
    #header{
        width: 100%;
        height: 15%;
    }
    #log{
        text-align: center;
        font-size: 100px;
        padding: 65px 100px 30px 500px;
        float: left;
        width: 75%;
        height: 100%;
        text-decoration: none;
    }

    #myinfo{
        float: left;
        width: 25%;
        height: 100%;
        text-align:left;
        line-height: 26;
    }
    #navi{
        width: 100%;
        height: 2.5%;
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
        /*border: 1px solid gray;*/
    }
    #navi li a {
        display: block;
        color: black;    
    }
    #navi li a:hover {
        background-color: azure;
        color: pink;    
    }
    .foodNav {
        display: none;
    }
    #navi li:hover ul {
        display: block;
    }
    #navi li:hover ul li {
        margin-left:10px;
        width:80%;
    }
    
    #content{
        margin-top : 100px;
        height: 73%;
        width : 100%;
    }
 
    .event_area{
        width: 60%;
        height: 17%;
         margin-top: 1.5%;
        margin-left: 21%;
    }
    .event_area:nth-last-child(4){
        margin-top: 6%;
    }
    .content-header {
        width : 100%;
        text-align: center;
        font-size : 40px;
        padding-bottom : 15px;
    }
    
    #footer{
        height: 9%;
    }
    img {
        width : 100%;
        height:100%;
    }
   
</style> 
</head>
<body>
	<form action="#" method="post">
    <!-- 2699c271a5fff1aec7524b070032df00 -->
    <div id="wapper">
        <div id="header">
            <div id="log">
                <a href="/">wassup</a>
            </div>
            <div id="myinfo">
                <a href="#">로그인·회원가입</a> /
                <a href="#">마이페이지</a> /
                <a href="#">주문표</a>
            </div>
        </div>
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
                <li><a href="#"><b>고객센터</b></a></li>
            </ul>
        </div>
        

        <div id="content">
            <div class="content-header">쿠폰 / 이벤트</div>
            <hr style="width: 40%; margin-top:0; background-color:white;">
            <div class=event_area><img src="/img/%EC%9D%B4%EB%B2%A4%ED%8A%B81.png"></div>
            <div class=event_area><img src="/img/%EC%9D%B4%EB%B2%A4%ED%8A%B82.png"></div>
            <div class=event_area><img src="img/%EC%9D%B4%EB%B2%A4%ED%8A%B83.png"></div>
            <div class=event_area><img src="img/%EC%9D%B4%EB%B2%A4%ED%8A%B84.png"></div>
        </div>
        <div id=footer> footerfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooterfooter
        </div>
    </div>
    </form>
</body>
</html>