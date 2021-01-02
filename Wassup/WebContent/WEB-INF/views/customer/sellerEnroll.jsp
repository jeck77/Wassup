<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WASSUP - 판매자 회원가입</title>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- 제이쿼리 -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- 다음 주소 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a8cb57d60bbbe20bede9fed1ef145271"></script>
    
<script>
    $(function() {
    $("#pw_check").keyup(function() {
        var pw1 = $("#password").val();
            if (pw1 == "") {
                alert("비밀번호를 입력하세요.");
                    $("#pw_check").val("");
                        $("#password").focus();
                    }
        var pw2 = $("#pw_check").val();
            if (pw1.length != 0 && pw2.length != 0) {
                if (pw1 == pw2) {
                    $("#out").html("비밀번호가 일치합니다.");
                    $("#out").css("color", "yellow");
                    $("#out").css("font-weight", "bolder");
                } else {
                    $("#out").html("비밀번호가 일치하지 않습니다.");
                    $("#out").css("color", "red");
                    $("#out").css("font-weight", "bolder");
                }
        }
    });
    $("#nick").bind("keyup",function(){
        re = /[~!@\#$%^&*\()\-=+_']/gi; 
        var temp=$("#nick").val();
        if(re.test(temp)){
        alert("특수문자는 입력할 수 없습니다");
        $("#nick").val(temp.replace(re,"")); 
        return false;   
        } 
    });
   
    $("#password").bind("keyup",function(){
        re = /[^(a-zA-Z0-9)]/; 
        var temp=$("#password").val();
        if(re.test(temp)){
        alert("한글은 입력할 수 없습니다.");
        $("#password").val(temp.replace(re,"")); 
        return false;
        } 
     });
});
    
    function addrSearch() {
        new daum.Postcode({
        oncomplete: function(data) {
            var roadAddr = data.roadAddress;
            $("#addr").val(roadAddr);
        }
    }).open();
    }
    
    function goBack() {
    	window.history.back();
    }
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
        height: 1950px;
    }
    
    #content{
        height: 80%;
    }
    #head_content {
        height: 17%;
        text-align: center;
        margin-top : 5%;
         margin-bottom : -1%;
        padding: 100px;
        font-size: 40px;
        font-family : nanumacB;
    }
    #main_content {
        height:68%;
    }
    #information {
        width: 70%;
        height: 96%;
        margin: auto;
        background-color: #272753;
        border: 4px solid white;
        box-shadow: 0 0 10px #ED85FF, 0 0 10px #ED85FF,
            inset 0 0 10px #ED85FF, inset 0 0 10px #ED85FF;
    }
    #seller_signup {
        margin: 55px;
        font-size: 17px;
        font-weight: bolder;
        text-align: center;
        font-family : scDreamL;
    }
   /* .signup_wrap{
        margin-left : 380px;
    }*/
    input {
        width : 250px;
        height : 40px;
        margin : 10px;
        font-size : 14px;
         font-family : scDreamL;
    }
    .signup_wrap ul {
        margin-right:300px;
         list-style-type: none;
    }
    .signup_wrap li {
         text-align: right;
            display: inline-block;
            width: 150px;
    }
    #addr_button {
        width : 80px;
    }
    .signup_wrap li:nth-last-child(3) {
        float : right;
        margin-right: -80px;
        margin-left : -100px;
        margin-top : 2px;
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
    }
    .btn {
        margin: 0px 0px 80px 80px;
        height: 70px;
        width: 140px;
        background-color: #272753;
        color : white;
        border: 4.5px solid white;
        font-size: 26px;
        float: left;
        border-radius: 5px;
         font-family : scDreamL;
    }
   
</style> 
</head>
<body>
    <form action="/seller/enroll" method="post">
    <!-- 2699c271a5fff1aec7524b070032df00 -->
    <div id="wapper">
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/nav.jsp" %>
        

        <div id="content">
            <div id="head_content">
                <b>판매자 회원가입</b>
                <hr style="width:40%; margin-top:30px;">
            </div>
            <div id="main_content">
                <div id="information">
                    <div id="seller_signup">
                        <div class="signup_wrap">
                            <ul>
                                <li><label for="userId">아이디</label></li>
                                <li><input type="text" name="userId" id="userId" maxlength="8" placeholder=" 3~8자의 영문/숫자 조합으로 입력" required></li>
                                <br>
                                <li><label for="password">비밀번호</label></li>
                                <li><input type="password" name="password" id="password" maxlength="8" placeholder=" 5~8자의 영문/숫자 조합으로 입력" required></li>
                                <br>
                                <li><label for="pw_check">비밀번호확인</label></li>
                                <li><input type="password" name="pw_check" id="pw_check" maxlength="8" required></li>
                                <br><span id="out"></span>
                                <hr style="width:80%; margin-top:30px; margin-right:-60px; border-style: dashed">
                                <br>
                                <li><label for="name">사업주 명</label></li>
                                <li><input type="text" name="name" id="name" maxlength="8" size="13" required></li>
                                <br>
                                <li><label for="nick">닉네임</label></li>
                                <li><input type="text" name="nick" id="nick" maxlength="6" placeholder=" 1~6자의 특수문자 제외 입력" required></li>
                                <br>
                                <li><label for="sCoop_no">사업자 등록번호</label></li>
                                <li><input type="text" name="sCoop_no" maxlength="12" id="sCoop_no" placeholder="  ' - ' 포함하여 입력해 주세요" required></li><br>
                                <li><label for="date">생년월일</label></li>
                                <li><input type="date" name="birth" id="birth" size="10" required></li><br>
                                <hr style="width:80%; margin-top:30px; margin-right:-60px; border-style: dashed"><br>
                                <li><label for="truck_name">푸드트럭 명</label></li>
                                <li><input type="text" name="truck_name" id="truck_name" required></li><br>
                                <li><label for="phone">전화번호</label></li>
                                <li><input type="tel" name="phone" maxlength="13" id="phone" placeholder="  ' - ' 포함하여 입력해 주세요" required></li><br>
                                <li><label for="category">업종 카테고리</label></li>
                                <li>
                                <select name="category" style="width:259.5px; height:45px; margin:10px 10px 10px 10px; font-size:15px; vertical-align:middle; text-align-last: center;" required>
                                    <option value="01">한식</option>
                                    <option value="02">중식</option>
                                    <option value="03">일식</option>
                                    <option value="04">양식</option>
                                    <option value="05">치킨</option>
                                    <option value="06">디저트</option>
                                    <option value="07">주류</option>
                                    <option value="08">패스트푸드</option>
                                </select>
                                </li>
                                <br>
                                <li><label for="addr">푸드트럭 현주소</label></li>
                                <li><input type="text" name="addr" id="addr" required></li>
                                <li><input type="button" id="addr_button" onclick="addrSearch()" value="검색"></li><br><br>
                            </ul>
                         </div>
                    </div>
                </div>
            </div>
            <div id="btn_content">
                <div id="btn_div">
                        <input type="submit" value="회원가입" class="btn">
                        <input type="button" value="취소" class="btn" onclick="goBack();">
                </div>
            </div>
        </div>
    </div>
<hr style="border:1px solid; background-color: white; width: 1500px;">
<%@ include file="/WEB-INF/views/include/footer.html" %>
    </form>
</body>
</html>
</body>
</html>