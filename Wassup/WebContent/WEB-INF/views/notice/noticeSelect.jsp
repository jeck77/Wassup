<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WASSUP - 공지사항</title>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<!-- 제이쿼리 -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- 다음 주소 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a8cb57d60bbbe20bede9fed1ef145271"></script>
    
<style>
@font-face {
	font-family : 'Bangers';
	src : url("../fonts/Bangers-Regular.ttf") format('truetype');
}
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
@font-face {
	font-family : 'nanumacB';
	src : url("../fonts/NanumSquare_acB.ttf") format('truetype');
}
@font-face {
	font-family : 'nanumacEB';
	src : url("../fonts/NanumSquare_acEB.ttf") format('truetype');
}
@font-face {
	font-family : 'nanumEB';
	src : url("../fonts/NanumSquareEB.ttf") format('truetype');
}
@font-face {
	font-family : 'scDreamEB';
	src : url("../fonts/SCDream9.otf") format('truetype');
}
@font-face {
	font-family : 'scDreamM';
	src : url("../fonts/SCDream6.otf") format('truetype');
}
@font-face {
	font-family : 'scDreamL';
	src : url("../fonts/SCDream3.otf") format('truetype');
}    
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
        height: 1300px;
    }
    
    /* content 영역 */
    #content{
        height: 66%;
        margin-top : 8%;
    }
    #header_content {
        height: 17%;
        font-size: 40px; 
        font-weight: 1000;
        padding-left: 300px;
        padding-top: 60px;
        font-family : nanumacB;
    }
    
    #main_content {
        height: 65%;
    }
    #select_content {
        height: 100%;
        margin: 0px 300px 0px 300px;
        background-color: #272753;
        border: 4px solid white;
        box-shadow: 0 0 10px #ED85FF, 0 0 10px #ED85FF,
            inset 0 0 10px #ED85FF, inset 0 0 10px #ED85FF;
        color: white;
    }
    #title {
        padding: 40px 0px 0px 50px;
        font-weight: 1000;
        font-size: 25px;
        font-family : scDreamM;
    }
    #substance {
        padding: 10px 0px 0px 50px; 
        font-size: 21px;
        height: 60%;
    }
    #substance pre {
        color: white;
        font-family : scDreamL;
    }
    #rest {
        font-size: 14px;
        margin: 25px 0px 30px 0px;
        font-family : scDreamL;
    }
    #writer {
        float: left;
        margin-left: 50px;
        width: 100px;
        height: 100%;
    }
    #time {
        float: left;
        margin-left: 30px;
        width: 150px;
    }
    #hit {
        float: left;
        width: 100px;
    }
    #btn_list {
        float: left;
        margin-left: 300px;
        width: 100px;
        
    }
    #btn_style {
        background-color: whitesmoke;
        width: 100px;
        height: 35px;
        text-align: center;
        line-height: 2.5;
        border-radius: 5px;
        
    }
    #btn_style a {
        color: black;
        display: block;
        border-radius: 5px;
        font-size: 15px;
    }
    .line {
        margin-left: 30px;
        margin-right: 30px;
        border-color: lightgray;
    }
    #footer_content {
        height: 15%;
        text-align: center;
    }
    #footer{
        height: 10%;
    }
   
</style> 
</head>
<body>
    <form action="#" method="post">
    <!-- 2699c271a5fff1aec7524b070032df00 -->
    <div id="wapper">
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/nav.jsp" %>

        <div id="content">
            <div id="header_content">
                <div>
                    공지사항
                </div>
            </div>
            <div id="main_content">
                <div id="select_content">
                    <div id="title">
                       ${notice.noticeName }
                    </div>
                    <hr class="line">
                    <div id="substance">
                        <pre> ${notice.noticeContent } </pre>
                    </div>
                    <hr class="line">
                    <div id="rest">
                        <div id="writer">
                            작성자 : ${notice.adminId }
                        </div>
                        <div id="time">
                            시간 : ${notice.noticeDate }
                        </div>
                        <div id="hit">
                            조회수&nbsp;&nbsp;${notice.hits }
                        </div>
                        <div id="btn_list">
                            <div id="btn_style">
                                <a href="/notice/listForm">목록</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="footer_content">
                
            </div>
        </div>
    </div>
<hr style="border:1px solid; background-color: white; width: 1500px;">
<%@ include file="/WEB-INF/views/include/footer.html" %>
    </form>
</body>
</html>