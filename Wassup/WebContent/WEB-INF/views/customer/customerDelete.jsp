<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WASSUP - 회원탈퇴</title>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- 제이쿼리 -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- 다음 주소 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a8cb57d60bbbe20bede9fed1ef145271"></script>
    
<script>
 
    $(document).ready(function(){
        <c:if test="${sessionScope.buyer ne null }">
        $("#delete").submit(function() {	//submit 처리니까 폼태그의 아이디값을 넣어야 함
            var pw1 = $("#password").val();
            var pw2 = "${sessionScope.buyer.bPwd}";
            
                if (pw1.length != 0 && pw2.length != 0) {
                    if (pw1 != pw2) {
                       	alert("비밀번호가 일치하지 않습니다.");
                       	return false;
                    }
            }
        });
        </c:if>
        <c:if test="${sessionScope.buyer eq null }">
        $("#delete").submit(function() {
            var pw1 = $("#password").val();
            var pw2 = "${sessionScope.seller.sPwd}";
                if (pw1.length != 0 && pw2.length != 0) {
                    if (pw1 != pw2) {
                       	alert("비밀번호가 일치하지 않습니다.");
                       	return false;
                    }
            }
        });
        </c:if>
    	});

</script>
    
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
    
    #content{
        height: 73%;
        margin-top:4%;
    }
    #head_content {
        height: 23%;
        text-align: center;
        padding: 100px;
        font-size: 40px;
         font-family : nanumacB;
    }
    #main_content {
        height: 63%;
    }
    #information {
        width: 70%;
        height: 95%;
        margin: auto;
        background-color: #272753;
        border: 4px solid white;
        box-shadow: 0 0 10px #ED85FF, 0 0 10px #ED85FF,
            inset 0 0 10px #ED85FF, inset 0 0 10px #ED85FF;
    }
    #seller_signup {
        margin: 45px;
        font-size: 17px;
        font-weight: bolder;
        text-align: center;
        font-family : scDreamL;
    }
    input {
        width : 250px;
        height : 40px;
        margin : 10px;
        font-size : 14px;
        font-family : scDreamL;
    }
    .top_wrap {
        background : white;
        margin : 30px;
        width : 95%;
        height : 200px;
        border : 1px solid white;
    }
    .bottom_wrap {
        background : white;
        margin : 30px;
        width : 95%;
        height : 320px;
        border : 1px solid white;
    }
    .right1_area {
        background : #333366;
        border : 1px solid;
        width : 30%;
        height : 80%;
        margin : 20px;
        float : left;
    }
    .left1_area {
        width : 64%;
        height : 80%;
        margin : 25px 0px 0px 0px;
        float : left;
        color:black;
        font-size : 13px;
        text-align: left;
    }
    .right2_area {
        background : #333366;
        border : 1px solid;
        width : 30%;
        height : 80%;
        margin : 30px;
        float : left;
    }
    .left2_area {
        width : 60%;
        height : 80%;
        margin : 30px 0px 0px 0px;
        float : left;
    }
    .bottom_wrap ul {
         list-style-type: none;
    }
    .bottom_wrap li {
        font-size:15px;
        color : black;
        text-align: left;
        display: inline;
        margin-left: -195px;
    }
    #addr_button {
        width : 80px;
    }
    span {
        margin-left: 280px;
    }
    #btn_content{
        height: 10%;
        text-align: center;
    }
    #btn_div {
        margin-left: 480px;
        margin-top:20px;
    }
    .btn {
        margin: 0px 500px 50px 0px;
        height: 70px;
        width: 140px;
        background-color: #272753;
        color : white;
        border: 4.5px solid white;
        font-size: 22px;
        border-radius: 5px;
        font-family : scDreamL;
    }
   
</style> 
</head>
<body>
    <form action="/customer/delete" method="post" id="delete">
    <!-- 2699c271a5fff1aec7524b070032df00 -->
    <div id="wapper">
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/nav.jsp" %>

        <div id="content">
            <div id="head_content">
                <b>회원 탈퇴</b>
                <hr style="width:40%; margin-top:30px;">
            </div>
            <div id="main_content">
                <div id="information">
                    <div id="seller_signup">
                        <div class="top_wrap">
                            <div class="right1_area">
                                <div style="font-size:60px; text-align: right; margin-right : 30px;">01</div>
                                <div style="margin: 10px 0px 0px 110px;">회원탈퇴 안내</div>
                            </div>
                            <div class="left1_area">
                                고객님께서 회원 탈퇴를 원하신다니저희 쇼핑몰의 서비스가 많이 부족하고 미흡했나 봅니다.<br>
불편하셨던 점이나 불만사항을 알려주시면 적극 반영하여<br> 고객님의 불편함을 해결해 드리도록 노력하겠습니다.<br><br>
■ 아울러 회원 탈퇴시의 아래 사항을 숙지하시기 바랍니다.<br>
1. 회원 탈퇴 시 고객님의 정보는 전자상거래 등에서의 소비자 보호에 관한 법률에 의거한 고객정보 &nbsp;&nbsp;&nbsp;&nbsp;보호정책에따라 관리 됩니다.<br>
2. 기존에 보유하셨던 쿠폰은 탈퇴와 동시에 소멸되오니 유의해 주시기 바랍니다.
                            </div>
                         </div>
                        <div class="bottom_wrap">
                             <div class="right2_area">
                                 <div style="font-size:60px; text-align: right; margin-right : 30px; margin-top : 10px;">02</div>
                                <div style="margin: 10px 0px 0px 140px;">탈퇴하기</div>
                            </div>
                            <div class="left2_area">
                                <ul>
                                    <li>비밀번호 확인 <input type="password" name="password" id="password"></li><br><br>
                                    <li style="margin-right:215px;">불편하셨던 점이 있나요?</li><br>
                                    <li><textarea cols="40" rows="5" style="margin-top:10px; font-size:17px; background:#EAEAEA;"></textarea></li><br>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="btn_content">
                <div id="btn_div">
                        <input type="submit" value="탈퇴" class="btn" id="btn">
                </div>
            </div>
        </div>
    </div>
<hr style="border:1px solid; background-color: white; width: 1500px;">
<%@ include file="/WEB-INF/views/include/footer.html" %>
    </form>
</body>
</html>