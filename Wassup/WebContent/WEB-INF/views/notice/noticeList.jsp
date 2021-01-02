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
        height: 1500px;
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
    #notice_content {     
        height: 100%;
        padding: 0px 300px 0px 300px;
    }
    #table_content {
        text-align: center;
        background-color: white;
        border: 2px solid white;
        box-shadow: 0 0 10px #ED85FF, 0 0 10px #ED85FF,
            inset 0 0 10px #ED85FF, inset 0 0 10px #ED85FF;
        color : black;
        font-size : 15px;
        font-family : scDreamL;
    }
    #table_content th {
        background-color: #272753;
        color: white;
    }
    #table_content th:first-child {
        width: 10%;
    }
    #table_content th:nth-child(2) {
        width: 35%;
    }
    #table_content th:nth-child(3) {
        width: 13%;
    }
    #table_content th:nth-child(4) {
        width: 20%;
    }
    #table_content th:last-child {
        width: 10%;
    }
    #table_content tr>td:nth-child(2) {
        padding-left: 30px;
        text-align: left;
    }
    #footer_content {
    	margin-top : -5%;
        height: 15%;
        font-size : 20px;
        text-align: center;
    }
     #table_content tr>td:nth-child(2)>a {
        color : black;
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
                <div id="notice_content">
                    <table id="table_content" class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">번호</th>
                                <th scope="col">제목</th>
                                <th scope="col">작성자</th>
                                <th scope="col">작성일</th>
                                <th scope="col">조회수</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${notice }" var="notice" varStatus="status">
                            <tr>
                                <td>${notice.noticeNo }</td>
                                <td><a href="/notice/selectHits?noticeNo=${notice.noticeNo}&hits=${notice.hits}">${notice.noticeName }</a></td>
                                <td>${notice.adminId }</td>
                                <td>${notice.noticeDate }</td>
                                <td>${notice.hits }</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <div id="footer_content"> ${pageNavi } </div>
        </div>
    </div>
<hr style="border:1px solid; background-color: white; width: 1500px;">
<%@ include file="/WEB-INF/views/include/footer.html" %>  
    </form>
</body>
</html>