<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WASSUP - 리뷰 작성</title>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- 제이쿼리 -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- 다음 주소 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a8cb57d60bbbe20bede9fed1ef145271"></script>
    
<script>

$(document).ready(function(){
   $('#review_grade a').click(function(){
      $(this).parent().children("a").removeClass("on");
      $(this).addClass("on").prevAll("a").addClass("on");
      console.log($(this).attr("value"));
      $("#gradeValue").val($(this).attr("value"));
      });
});

function priview(event) {
    for (var image of event.target.files) {
        var reader = new FileReader();
        reader.onload = function(event) {
            var img = document.createElement("img");
            img.setAttribute("class","img_review");
            img.setAttribute("src", event.target.result);
            document.querySelector("div#review_img").innerHTML = "";
            document.querySelector("div#review_img").appendChild(img);
            
        }; 
        console.log(image);
        reader.readAsDataURL(image); 
    }  
}
</script>

<style>
@font-face {
	font-family : 'Bangers';
	src : url("/fonts/Bangers-Regular.ttf") format('truetype');
}
@font-face {
	font-family : 'rKorea';
	src : url("/fonts/RecipekoreaFONT.ttf") format('truetype');
}
@font-face {
	font-family : 'nexonM';
	src : url("/fonts/NEXON Lv2 Gothic Medium.ttf") format('truetype');
}
@font-face {
	font-family : 'nexonL';
	src : url("/fonts/NEXON Lv2 Gothic Light.ttf") format('truetype');
}
@font-face {
	font-family : 'nexonB';
	src : url("/fonts/NEXON Lv2 Gothic Bold.ttf") format('truetype');
}
@font-face {
	font-family : 'nanumacB';
	src : url("/fonts/NanumSquare_acB.ttf") format('truetype');
}
@font-face {
	font-family : 'nanumacEB';
	src : url("/fonts/NanumSquare_acEB.ttf") format('truetype');
}
@font-face {
	font-family : 'nanumEB';
	src : url("/fonts/NanumSquareEB.ttf") format('truetype');
}
@font-face {
	font-family : 'scDreamEB';
	src : url("/fonts/SCDream9.otf") format('truetype');
}
@font-face {
	font-family : 'scDreamM';
	src : url("/fonts/SCDream6.otf") format('truetype');
}
@font-face {
	font-family : 'scDreamL';
	src : url("/fonts/SCDream3.otf") format('truetype');
}
    form {
      display: inline;;
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
/*        border:solid 1px;   */
    }
    #wapper{
        margin: auto;
        width: 1500px;
        height: 1700px;
    }

    #review_grade a{ text-decoration: none; color: gray; }
    
    #review_grade a.on{ color: gold; }
    
    #content{
        width:100%;
        margin-top: 5.5%;
        height: 80%;
        text-align: center;
        font-size: 30px;
    }
    #header_content {
        height: 15%;
        text-align: center;
        padding: 40px;
        font-size: 40px;
        font-family : nanumacB;
    }
    #main_content {
        height: 68%;
    }
    #review_content {
        border: 1px solid;
        width: 60%;
        height: 100%;
        margin: 0px 300px 0px 300px;
        border: 4px solid white;
        box-shadow: 0 0 10px #ED85FF, 0 0 10px #ED85FF,
            inset 0 0 10px #ED85FF, inset 0 0 10px #ED85FF;
        background-color: #272753;
    }
    #review_header {
        height: 12%;
        padding: 27px;
        font-size: 35px;
        font-family : rKorea;
        line-height :2.5;
    }
    #review_img {
        height: 35%;
        margin-top: 30px;
        margin-bottom: 10px;
    }
    #review_file {
        text-align: right;
    }
    .img_review {
        height: 100%;
        width: 70%;
    }
    .line {
        width: 90%;
    }
    #review_input {
        height: 40%;
    }
    #review_explanation {
        height: 20%;
        text-align: left;
    }
    #review_account {
        width: 65%;
        float: left;
        height: 100%;
        padding-left: 110px;
        padding-top:20px;
        margin-bottom:20px;
        font-size: 30px;
        font-family : scDreamM;
    }
    #review_grade {
        width: 35%;
        float: left;
        height: 100%;
        padding-top:20px;
    }
    #review_textarea {
        height: 70%;
        margin-bottom : 20px;
    }
    #btn_content {
        height: 10%;
    }
    #review_insert {
        width: 11%;
        height: 55%;
        line-height: 1.9;
        float: left;
        margin-left: 540px;
        margin-top: 40px;
    }
    #review_insert a {
        display: block;
    }
    #review_reset {
        width: 11%;
        height: 55%;
        line-height: 1.9;
        float: left;
        margin-left: 80px;
        margin-top: 40px;
    }
    #review_insert a {
        display: block;
    }
    	.btn {
    	width:100%;
    	height: 100%;
        background-color: #272753;
        color : white;
        border: 4.5px solid white;
        font-size: 22px;
        float: left;
        border-radius: 5px;
        font-family: scDreamL;
    }
</style> 
</head>
<body>

    <!-- 2699c271a5fff1aec7524b070032df00 -->
    <div id="wapper">
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/nav.jsp" %>
         <form action="/buyer/reviewInsert" method="post" enctype="multipart/form-data">
         	<input type="hidden" name="sCode" value="${oList[0].sCode }"> 
			<input type="hidden" name="receiptCode" value="${oList[0].receiptCode }"> 
								
        <div id="content">
            <div id="header_content">
                <b>리뷰 작성</b>
                <hr style="width:40%; margin-top:30px;">
            </div>
            <div id="main_content">
                <div id="review_content">
                    <div id="review_header">
                        ${oList[0].truckName }
                    </div>
                    <hr class="line">
                    <div id="review_img">
                    </div>
                    <div id="review_file">
                        <input type="file" id="reviewP" name="reviewP" accept="image/*" onchange="priview(event);">
                    </div>
                    <hr class="line">
                    <div id="review_input">
                        <div id="review_explanation">
                            <div id="review_account">
                                댓글 작성란
                            </div>
                            <div id="review_grade">
                                <a value="1" class="on">★</a> <!-- 자식들-->
                                <a value="2">★</a> 
                                <a value="3">★</a>
                                <a value="4">★</a>
                                <a value="5">★</a> 
                                <input type="hidden" name="grade" id="gradeValue" value="1">
                            </div>
                        </div>
                        <div id="review_textarea">
                            <textarea name="reviewContents" cols="55" rows="7" style="font-size: 20px; font-family: scDreamM; padding:10px;"></textarea>
                        </div><br><br>
                    </div>
                </div>
                
            </div>
            <div id="btn_content">
                <div id="review_insert">
                    <input type="submit" value="작성" class="btn">
                </div>
                <div id="review_reset">
                    <input type="reset" value="취소" class="btn">
                </div>
            </div>
        </div>
        </form>
    </div>
<hr style="border:1px solid; background-color: white; width: 1500px;">
<%@ include file="/WEB-INF/views/include/footer.html" %>
</body>
</html>