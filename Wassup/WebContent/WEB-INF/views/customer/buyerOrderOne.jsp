<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="UTF-8">
<title>WASSUP - 상세 주문 확인</title>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
   $(document).ready(function(){
      var obj = {};
      var total = 0;
      <c:forEach items="${oList }" var="order" varStatus="status">
      var price = ${order.price};
      var amount = ${order.amount};
      var sum = parseInt(price) * parseInt(amount);
      total += sum;
      $("#amount_price${status.index}").text(sum + " 원");
      obj.key${status.index} = sum;
      </c:forEach> 

      $("#total").text(total + "원");
   });

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
	src : url("/fonts/SCDream4.otf") format('truetype');
} 

body {

   color: white;
   background: #333366;
}
/* a 태그 주석 없애기 */
a:link {
   text-decoration: none;
   color: white;
}

a:visited {
   text-decoration: none;
   color: white;
}

a:active {
   text-decoration: none;
   color: white;
}

a:hover {
   text-decoration: none;
   color: white;
}

div {
   border-color: white;
   box-sizing: border-box;
}

#wapper {
   margin: auto;
   width: 1500px;
   height: 1800px;
}

#contents {
   font-size: 35px;
   text-align: center;
   width: 100%;
   height: 76%;
   z-index : 10;
   position : relative;
}

.content_side {
   width: 10%;
   height: 100%;
   float: left;
}

.content_center {
   margin-top: 8%;
   width: 80%;
   height: 100%;
   float: left;
   font-family : nanumacB;
}

.content_content {
   margin: auto;
   margin-top: 5%;
   width: 70%;
   height: 80%;
   border-radius: 20px;
}

.table {
   width: 100%;
   border: 2px solid white;
   background-color: #272753;
   font-size: 20px;
   text-align: center;
   box-shadow: 0 0 10px #ED85FF, 0 0 10px #ED85FF, inset 0 0 10px #ED85FF,
      inset 0 0 10px #ED85FF;
  border-collapse: collapse;
}

#Nick {
   padding-top: 70px; 
   padding-bottom: 40px;
   padding-left: 380px;
   text-align: left;
   font-size:17px; 
   font-family:nexonL;
}

#say {
	margin-left:80px;
	width:70%;
	height:45%;
}
</style>
</head>
<body>
    <div id="wapper">
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/nav.jsp" %>
        <div id="contents">

            <div class="content_side"></div>
            <div class="content_center">
                            상세 주문내역
                    <hr style="width: 30%; margin-top:10px;">
                <div class="content_content">
                <table class="table table-hover">
                   <tr class="header" height="100px;"><td colspan="6" id="Nick"><em>${oList[0].bId }님</em> 주문내역</td></tr>
                    <tr><td style="text-align: left; padding-top: 10px; font-size: 50px; font-family:rKorea;" colspan="5" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>${oList[0].truckName }</b></td>
                    <td style="text-align: right; padding-right:10%; font-size: 17px; font-family: scDreamL;" colspan="1" width="100%;" >주문번호 : ${oList[0].receiptCode } <br> 주문일시 : ${oList[0].orderDate }</td></tr>
                    <tr height="50px;"><td colspan="6"><br><br><hr style="width: 70%;"></td></tr>
                    <tr height="100px;"><td colspan="2" style="padding-left:10%;" width="30%;" >메뉴명 </td><td colspan="1" style="padding-left:3%;" width="10%;">수량</td><td colspan="1" width="20%;">가격</td><td colspan="2" style="padding-right:3%;" width="35%;">주문 가격</td></tr>
                    <c:forEach items="${oList }" var="order" varStatus="status">
                    <tr height="55px;"><td colspan="2" style="padding-left:10%;" width="30%;" >${order.menuName }</td><td colspan="1" style="padding-left:3%;">${order.amount }</td><td colspan="1"  width="20%;">${order.price } 원</td><td colspan="2"  id="amount_price${status.index }" style="padding-right:3%;" width="35%;"></td></tr>
                    </c:forEach>
                    <tr>
                        <td colspan="6" height="100px;"><hr style="width: 70%;"><br></td>
                    </tr>
                    <tr height="30px;" style="font-size : 25px; font-family:scDreamEB;"> <td colspan="4" >총 주문 금액</td>
                    <td colspan="2" style="text-align: left; font-family:scDreamM; font-size:23px;" id="total"></td></tr>
                    <tr height="20px;"><td colspan="6"> </td></tr>
                    <tr><td colspan="6"><img src="/img/category/${oList[0].orderStatus }.png" id="say"></td></tr>
                </table>
                 
                </div>
            </div>
            <div class="content_side">
            </div>
        </div>
    </div>
<hr style="border:1px solid; background-color: white; width: 1500px;">
<%@ include file="/WEB-INF/views/include/footer.html" %>
</body>
</html>