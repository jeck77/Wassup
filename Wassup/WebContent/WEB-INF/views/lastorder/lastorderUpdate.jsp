<%@page import="wassup.seller.model.vo.Seller"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WASSUP - 라스트오더 수정</title>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- 제이쿼리 -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- 다음 주소 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a8cb57d60bbbe20bede9fed1ef145271"></script>
<script type="text/javascript">
    $(document).ready(function() {
       
       $("#submenu_code").val("${lastorder.lastSubMenuCode}").attr("selected", "selected");
   })
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
    #header{
        width: 100%;
        height: 15%;
    }
    #log{
        text-align: center;
        font-size: 100px;
        padding: 45px 100px 30px 500px;
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
        line-height: 23;
    }

    #navi{
        width: 100%;
        height: 7%;
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
       width:90%;
    }
    
    /* content 영역 */
    #content{
       font-family: nanumacB;
        height: 72%;
    }
    
    #head_content {
        height: 12%;
        text-align: center;
        margin-top:8%;
        font-size: 40px;
    }
    #insert_content {
        height:75%;
        text-align: left;
        padding-left: 350px;
        font-size: 27px;
    }
    #lastorder_insert {
        width: 70%;
        height: 95%;
        background-color: white;
        font-family : scDreamM;
    }
    #menu_column {
        border: 1px solid black;
        margin-top: 20px;
        margin-left: 20px;
        width: 20%;
        height: 95%;
        background-color: #336;
        float: left;
    }
    
    #menu_column li {
        list-style: none;
        text-align: center;
        margin-left: -40px;
        font-size: 18px;
    }
    
    #lastorder_input {
        border: 1px solid black;
        margin: 20px;
        width: 72%;
        height: 95%;
        float: left;
    }
    
    #lastorder_input li {
        list-style: none;
        margin-left: 20px;
        color: black;
        font-size: 15px;
        position: relative;
        margin-top: 5px;
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
    #submenu_code {
        margin-top: 30px;
        padding: 5px 5px 5px 5px;
    }
    #discount {
       margin-top:23px;
        padding: 5px 5px 5px 5px;
    }
    #stock {
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

    #summary {
        margin-top: 40px;
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
        width: 40%;
        height: 100%;
        float: left;
        padding-left: 530px;
    }
    #btn_cancel {
        width: 40%;
        height: 100%;
        float: left;
         padding-left: 10px;
    }
    .btn_action {
        background-color: #336;
        color: white;
        border: 3px solid;
        width: 170px;
        height: 65px;
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

</head>
<body>
    <!-- 2699c271a5fff1aec7524b070032df00 -->
    <div id="wapper">
     <%@ include file="/WEB-INF/views/include/header.jsp"%>
      <%@ include file="/WEB-INF/views/include/nav.jsp"%>
      <form action="/lastorder/update2" method="post">
        <div id="content">
            <div id="head_content">
                <b>라스트오더 수정</b>
                <hr style="width:40%; margin-top:30px;">
            </div>
            <div id="insert_content">
                <div id="lastorder_insert">
                    <div id="menu_column">
                        <ul>
                            <li>메뉴명</li><br>
                            <li>판매가</li><br>
                            <li>대분류</li><br>
                            <li>소분류</li><br>
                            <li>할인율</li><br>
                     <li>수량</li><br>   <br>
                            <li>상품 요약 설명</li><br>
                            <li>상품 상세 설명</li>
                        </ul>
                    </div>
                    <div id="lastorder_input">
                       <input type="hidden" id="lastorderCode" name="lastorderCode" value="${lastorder.lastorderCode }">
                        <li><input type="text" id="m_name" name="lastMenuName" value="${lastorder.lastMenuName}" required readonly></li><br>
                        <li><input type="text" id="m_price" name="lastPrice" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" 
                                 placeholder="숫자만 입력해주세요" value="${lastorder.lastPrice}" required readonly> 원</li><br>
                        <li><input type="text" id="c_name" name="categoryName" value="${sessionScope.seller.categoryName}" readonly></li>
                        <input type="hidden" id="categoryCode" name="lastCategory" value="${sessionScope.seller.categoryCode}">
                        <input type="hidden" name="lastsCode" value="${sessionScope.seller.sCode}">
                        <li>
                            <select name="lastSubMenuCode" id="submenu_code" required>
                                <option disabled>===분류===</option>
                                <option value="1" id="1">대표메뉴</option>
                                <option value="2" id="2">전체메뉴</option>
                                <option value="3" id="3">추가메뉴</option>
                                <option value="4" id="4">사이드메뉴</option>
                                <option value="5" id="5">음료</option>
                            </select>
                        </li>
                        <li><input type="number" id="discount" name="discount" placeholder="5단위" min="5" max="100" step="5" value="${lastorder.discount }" required> %</li>
                  <li><input type="number" id="stock" name="stock" placeholder="1~100" min="1" max="100" value="${lastorder.stock }" required> EA</li>
                   
                        <li><input type="text" id="summary" name="lastSummary" size="60" value="${lastorder.lastSummary}" required readonly></li>
                        <li>
                            <textarea cols=48 rows=8 id="detail" maxlength="200"
                                   name="lastDetail" style="font-size: 20px; padding: 10px;" id="text"required readonly>${lastorder.lastDetail }</textarea>
                        </li>
                    </div>
                </div>
            </div>
            <div id="btn_content">
                <div id="btn_submit">
                    <input type="submit" value="수정하기" class="btn_action">
                </div>
                <div id="btn_cancel">
                    <input type="reset" value="취소하기" class="btn_action">
                </div>
            </div>
        </div>
        </form>
    <hr style="border:1px solid; background-color: white; width: 1500px;">
  <%@ include file="/WEB-INF/views/include/footer.html" %>
    </div>
</body>
</html>