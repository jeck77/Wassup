<%@page import="wassup.seller.model.vo.Seller"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WASSUP - 메뉴 관리</title>
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
        height: 1700px;
    }
    
    /* content 영역 */
    #content{
        height: 72%;
        font-family : scDreamL;
    }
    
    #head_content {
        height: 15%;
        text-align: center;
        padding-top: 40px;
        font-size: 40px;
        margin-top : 8%;
        font-family : nanumacB;
    }
    #insert_content {
        height:75%;
        text-align: left;
        padding-left: 350px;
        font-size: 27px;
    }
    #menu_insert {
        width: 70%;
        height: 95%;
        background-color: white;
    }
     #menu_column {
        border: 1px solid black;
        margin-top: 20px;
        margin-left: 20px;
        width: 20%;
        height: 95%;
        background-color: #336;
        float: left;
        font-family : scDreamM;
    }
    
    #menu_column li {
        list-style: none;
        text-align: center;
        margin-left: -40px;
        font-size: 18px;
    }
    
    #menu_input {
         border: 1px solid black;
        margin: 20px;
        width: 72%;
        height: 95%;
        float: left;
    }
    
    #menu_input li {
        padding-bottom: 3px;
        list-style: none;
        margin-left: 20px;
        color: black;
        font-size: 15px;
        position: relative;
    }
     #m_name {
        margin-top: 20px;
        margin-bottom: -20px;
        padding: 5px 5px 5px 5px;
    }
    #m_price {
        margin-bottom: -100px;
        padding: 5px 5px 5px 5px;
    }
    #c_name {
        margin-bottom: -20px;
        padding: 5px 5px 5px 5px;
    }
    #submenu_name {
        margin-top: 30px;
        padding: 5px 5px 5px 5px;
    }
    #discount {
    	width : 50px;
        padding: 5px 5px 5px 5px;
    }
    #stock {
   		 width : 90px;
        margin-top: 25px;
        margin-bottom: 25px;
        padding: 5px 5px 5px 5px;
    }
    #image_container {
        border: 1px solid black;
        width: 100px;
        height: 100px;
        float: left;
    }
    img {
        width: 100%;
        height: 100%;
    }
    #summary {
        margin-top:60px;
        padding: 5px 5px 5px 5px;
    }
	#detail {
        margin-top: 25px;
    }
    #btn_content {
        height: 10%;
        text-align: center;
    }
    #btn_submit {
        width: 50%;
        height: 100%;
        float: left;
        padding-left: 500px;
    }
    #btn_cancel {
        width: 50%;
        height: 100%;
        float: left;
        padding-right: 500px;
    }
    .btn_action {
        background-color: #336;
        color: white;
        border: 3px solid;
        width: 180px;
        height: 80px;
        font-size: 20px;
        margin-top: 10px;
    }
   form{
   	display: inline;
   }
   input {
   	 font-size: 13px;
   	 font-family : scDreamL;
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
    <!-- 2699c271a5fff1aec7524b070032df00 -->
    <div id="wapper">
        <%@ include file="/WEB-INF/views/include/header.jsp" %>
		<%@ include file="/WEB-INF/views/include/nav.jsp" %>
		<form action="/menu/insert" method="post" enctype="multipart/form-data" >
        <div id="content">
            <div id="head_content">
                <b>메뉴 등록</b>
                <hr style="width:40%; margin-top:30px;">
            </div>
            <div id="insert_content">
                <div id="menu_insert">
                    <div id="menu_column">
                        <ul>
                            <li>메뉴명</li><br>
                            <li>판매가</li><br>
                            <li>대분류</li><br>
                            <li>소분류</li><br>
                            <li>상품 이미지 등록</li><br><br><br><br><br>
                            <li>상품 요약 설명</li><br>
                            <li>상품 상세 설명</li>
                        </ul>
                    </div>
                    <div id="menu_input">
                        <li><input type="text" id="m_name" name="menuName" required></li><br>
                        <li><input type="text" id="m_price" name="price" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" placeholder="숫자만 입력해주세요" required> 원</li><br>
                        <li><input type="text" id="c_name" name="categoryName" value="${sessionScope.seller.categoryName}" readonly></li>
                        <input type="hidden" id="categoryCode" name="categoryCode" value="${sessionScope.seller.categoryCode}">
                        <input type="hidden" name="sCode" value="${sessionScope.seller.sCode}">
                        <li>
                            <select id="submenu_name" name="subMenuCode" required>
                                <option selected disabled>===분류===</option>
                                <option value="1">대표메뉴</option>
                                <option value="2">전체메뉴</option>
                                <option value="3">추가메뉴</option>
                                <option value="4">사이드메뉴</option>
                                <option value="5">음료</option>
                            </select>
                        </li><br>
                        <li>
                            <div id="image_container">    
                            </div>&nbsp;&nbsp;&nbsp;화면에 보여지는 음식 이미지를 등록합니다.
                            <br><br><br><br><br><br>
                            <input type="file" id="image" name="menuPhoto" accept="image/*" onchange="setThumbnail(event);">
                           	
                        </li>
                        <li><input type="text" id="summary" name="summary" size="60" required></li>
                        <li>
                            <textarea cols=48 rows=9 id="detail" name="detail" placeholder="200자 내로 작성해주세요." maxlength="200" style="font-size: 20px; padding: 10px;" required></textarea>
                        </li>
                    </div>
                </div>
            </div>
            <div id="btn_content">
                <div id="btn_submit">
                    <input type="submit" value="등록하기" class="btn_action">
                </div>
                <div id="btn_cancel">
                    <input type="reset" value="취소하기" class="btn_action">
                </div>
            </div>
        </div>
        </form>
    </div>

    <hr style="border:1px solid; background-color: white; width: 1500px;">
	<%@ include file="/WEB-INF/views/include/footer.html" %>
</body>
</html>