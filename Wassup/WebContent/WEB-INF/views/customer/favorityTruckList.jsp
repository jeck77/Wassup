<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WASSUP - 찜한트럭</title>
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
       /*  border:solid 1px white; */
    }
    #wapper{
        margin: auto;
        width: 1500px;
        height: 1600px;
    }
    
    /* content 영역 */
    #content{
        height: 72%;
        margin-top : 8%;
    }
    
    #head_content {
        height: 15%;
        text-align: center;
        margin-bottom : 1%;
        padding-top: 40px;
        font-size: 40px;
        font-family : nanumacB;
    }
    #lastorder_content {
        height:75%;
        text-align: left;
        padding-left: 350px;
        font-size: 27px;
    }
    #lastorder_list {
        height: 100%;
        width: 70%;
        background-color: #272753;
        border: 4px solid white;
        box-shadow: 0 0 10px #ED85FF, 0 0 10px #ED85FF,
            inset 0 0 10px #ED85FF, inset 0 0 10px #ED85FF;
    }
    .store {
        height: 16%;
        margin : 27px 50px 5px 50px;
        background-color: #272753;
        border-bottom: 1px solid white;
        font-family : scDreamL;
    }
    .store:last-child {
       border-bottom: none;
    }
    .store_img {
        width: 110px;
        height : 100px;
        margin: 8px;
        float: left;
        margin-left : 30px;
    }
    .store_content {
        width: 60%;
        height: 100%;
        float: left;
    }
    .store_name {
        height: 50%;
        font-weight: 1000;
        padding: 10px;
        font-size: 26px;
        margin-left : 30px;
        margin-top:8px;
    }
    .store_menu {
        height: 50%;
        font-weight: 500;
        padding-left: 15px;
        font-size: 16px;
        margin-top : -2px;
         margin-left : 25px;
    }
    .store_discount {
        float: left;
        width: 10%;
        height: 100%;
    }
    .img_discount {
        width: 100%;
        height: 100%;
    }
    .line {
        margin-left: 30px;
        margin-right: 30px;
        border-color: lightgray;
    }
    #page_content {
        height: 10%;
        margin-top: 20px;
        font-size: 20px;
        text-align: center;
    }
     #deleteBtn {
    	width : 80%;
    	height : 35px;
    	font-size: 15px;
    	color : black;
    	float : right;
    	margin-top: 60px;
    	background-color : #FFE400;
    	color : #541300;
    	border-radius : 5px;
    	font-family : scDreamL;
    	outline : 0;
    	border: none;
    }
   
</style> 
<script> 
    function setThumbnail(event) {
        for (var image of event.target.files) {
            var reader = new FileReader();
            reader.onload = function(event) {
                var img = document.createElement("img");
                img.setAttribute("src", event.target.result);
                document.querySelector("div#image_container").appendChild(img);
            }; 
            console.log(image);
            reader.readAsDataURL(image); 
        }
    }
</script>

</head>
<body>
    <form action="#" method="post">
    <!-- 2699c271a5fff1aec7524b070032df00 -->
    <div id="wapper">
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/nav.jsp" %>

        <div id="content">
            <div id="head_content">
                <b>찜한 트럭</b>
                <hr style="width:40%; margin-top:30px;">
            </div>
            <div id="lastorder_content">
                <div id="lastorder_list">
                    <c:forEach items="${truck }" var="truck" varStatus="status">
                    <div class="store">
                        <img class="store_img" src="${truck.logoPhotoPath }">
                        <div class="store_content">
                            <a href="/select/onetruck?sCode=${truck.sCode}"><div class="store_name">${truck.truckName }</div></a>
                            <div class="store_menu">${truck.truckAddr }</div>
                        </div>
                        <div class="store_discount">
                            <button id="deleteBtn" type="button" onclick="location.href='/buyer/favorityDelete?truckName=${truck.truckName}'">삭제</button>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
            <div id="page_content">${pageNavi }
            </div>
        </div>
    </div>
<hr style="border:1px solid; background-color: white; width: 1500px;">
<%@ include file="/WEB-INF/views/include/footer.html" %>
    </form>
</body>
</html>