<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WASSUP - 마이페이지</title>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
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
        height: 60%;
        margin-top: 8%;
    }
    #head_content {
        height: 20%;
        text-align: center;
        padding: 40px;
        font-size: 40px;
        font-family : nanumacB;
    }
    #main_content {
        height: 60%;
    }
    #information {
        width: 60%;
        height: 92%;
        margin: auto;
        background-color: #272753;
        border: 4px solid white;
        box-shadow: 0 0 10px #ED85FF, 0 0 10px #ED85FF,
            inset 0 0 10px #ED85FF, inset 0 0 10px #ED85FF;
    }
    #buyer_info {
        margin-top: 35px;
    }
    .b_info {
        margin: 0px 50px 0px 50px;
        padding: 1px 50px 1px 50px;
        height: 70px;
        font-size: 20px;
        line-height: 3;
        font-family : nexonL;
        /*border: 1px solid;*/
    }
    .b_info_1 {
        width: 45%;
        float: left;
        font-weight: bold;
        padding-left: 10px;
    }
    .b_info_2 {
        width: 25%;
        float: left;
    }
    .b_info_3 {
        width: 30%;
        float: left;
        padding: 0px 0px 0px 150px;
        text-align: center;
    }
    .b_info_4 {
        width: 45%;
        float: left;
        padding: 0px 0px 0px 230px;
        text-align: center;
    }
    
    .b_info_5 {
        width:0%;
        float: left;
        text-align: center;
        padding-left: 12px;
    }

    .btn_style {
        display: block;
        border-radius: 5px;
        height: 35px;
        width: 60px;
        line-height: 2.4;
        margin: 16px;
        background-color : white;
       color : #541300;
       border-radius : 5px;
       font-family : scDreamL;
       outline : 0;
       border: none;
        font-size: 15px;
    }
    .line {
        border: 1px solid;
        margin: 0px 70px 0px 70px;
    }
    #btn_content{
        height: 15%;
        text-align: center;
        font-family : scDreamL;
    }
    #btn_div {
        margin-left: 10px;
    }
    .btn1 {
        margin: 0px 500px 0px 350px;
        height: 70px;
        width: 140px;
        background-color: #272753;
        border: 2px solid white;
        font-size: 22px;
        line-height: 3.1;
        float: left;
        border-radius: 5px;
    }
    .btn1 a {
        display: block;
    }
    .btn2 {
        margin: 0px 0px 0px 0px;
        height: 70px;
        width: 140px;
        background-color: #272753;
        border: 2px solid white;
        font-size: 22px;
        line-height: 3.1;
        float: left;
        border-radius: 5px;
    }
    .btn2 a {
        display: block;
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
            <div id="head_content">
                <b>마이페이지</b>
                <hr style="width:40%; margin-top:30px;">
            </div>
            <div id="main_content">
                <div id="information">
                    <div id="buyer_info">
                        <div class="b_info">
                            <div class="b_info_1">회원구분</div>
                            <div class="b_info_2">일반회원</div>
                        </div>
                        <div class="line"></div>
                        <div class="b_info">
                            <div class="b_info_1">총 구매액</div>
                            <div class="b_info_2">${order.price } 원</div>
                        </div>
                        <div class="line"></div>
                        <div class="b_info">
                            <div class="b_info_1">할인 쿠폰</div>
                            <div class="b_info_2">${coupon.count } 매</div>
                            <div class="b_info_3">
                                <a href="#" class="btn_style" style="color: black">상세</a>
                            </div>
                        </div>
                        <div class="line"></div>
                        <div class="b_info">
                            <div class="b_info_1">찜한 트럭</div>
                            <div class="b_info_2">${favority.count }개</div>
                            <div class="b_info_3">
                                <a href="/buyer/favorityForm" class="btn_style" style="color: black">상세</a>
                            </div>
                        </div>
                        <div class="line"></div>
                        <div class="b_info">
                            <div class="b_info_1">리뷰 관리</div>
                            <div class="b_info_2">${review.count }개</div>
                            <div class="b_info_3">
                                <a href="/buyer/review" class="btn_style" style="color: black">상세</a>
                            </div>
                        </div>
                        <div class="line"></div>
                        <div class="b_info">
                            <div class="b_info_1">내 정보</div>
                            <div class="b_info_4">
                                <a href="/buyer/info" class="btn_style" style="color: black">수정</a>
                            </div>
                            <div class="b_info_5">
                                <a href="/customer/deleteForm" class="btn_style" style="color: black">탈퇴</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="btn_content">
                <div id="btn_div">
                    <div class="btn1"><a href="/notice/listForm">공지사항</a></div>
                    <div class="btn2"><a href="/buyer/list/order">실시간 현황</a></div>
                </div>
            </div>
        </div>
    </div>
<hr style="border:1px solid; background-color: white; width: 1500px;">
<%@ include file="/WEB-INF/views/include/footer.html" %>
    </form>
</body>
</html>