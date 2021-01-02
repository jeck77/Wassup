<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
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
    }
    #wapper{
        margin: auto;
        width: 1500px;
        height: 1500px;
    }
    
    #contents{
        font-size: 40px;
        text-align: center;
        width: 100%;
        height: 80%;
        z-index : 10;
        position : relative;
    }
    .content_side{
        width: 10%;
        height: 100%;
        float: left;
    }
    .content_center{
        width: 80%;
        height: 100%;
        float: left;
        font-family : nanumacB;
        margin-top: 8%;
    }
    .content_content{
        margin: auto;
        margin-top: 5%;
        width: 70%;
        height: 80%;
        border-radius: 20px;
    }
    .table{
        width: 100%;
        border: 2px solid white;
        background-color : #272753;
        font-size: 20px;
        text-align: center;
        box-shadow: 0 0 10px #ED85FF, 0 0 10px #ED85FF,
        inset 0 0 10px #ED85FF, inset 0 0 10px #ED85FF;
        border-collapse: collapse;
    }
    tr,td{

    }
   #say{
   margin-top: 100px;
   width: 300px;
   height: 300px;   
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
                    <hr style="width: 40%; margin-top:30px;">
                <div class="content_content">
                <table class="table table-hover">
                   <tr class="header" height="50px;"><td colspan="6" style="padding-top: 70px; padding-bottom: 20px; font-size:17px; font-family:nexonL;"><em>${oList[1].bId }님</em> 주문내역<br><br></td></tr>
                    <tr>
                        <td style="text-align: left; font-size: 40px; font-family: rKorea; padding-top:20px;" colspan="5" >
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>${oList[1].truckName }</b><br>
                        </td>
                        <td style="text-align: left; font-size: 15px; font-family: scDreamL; padding-right:50px;" colspan="1">
                            주문번호 : ${oList[1].receiptCode } <br> 주문일시 : ${oList[1].orderDate }
                        </td>
                    </tr>
                    <tr height="50px;">
                        <td colspan="6"><br><hr style="width: 90%;"><br><br></td>
                    </tr>
                    <tr style="font-size:15px; font-family: nexonL;">
                        <td colspan="2" style="padding-left:130px;">메뉴명 </td>
                        <td colspan="1" style="padding-left:100px;">수량</td>
                        <td colspan="1" style="padding-left:100px;">가격</td>
                        <td colspan="2" style="padding-right:-10px;">주문 가격</td>
                    </tr>
                    <c:forEach items="${oList }" var="order" varStatus="status">
                    <tr height="50px;" style="font-size:22px; font-family: nexonM;">
                        <td colspan="2" style="padding-left:125px;">${order.menuName }</td>
                        <td colspan="1" style="padding-left:100px;">${order.amount }</td>
                        <td colspan="1" style="padding-left:100px;">${order.price } 원</td>
                        <td colspan="2"  id="amount_price${status.index }" style="padding-right:-10px;"></td>
                    </tr>
                    </c:forEach>
                    <tr>
                        <td colspan="6"><br><br><hr style="width: 90%;"><br></td>
                    </tr>
                    <tr height="50px;">
                        <td colspan="4" style="font-size:25px; font-family:scDreamEB;">총 주문 금액</td>
                        <td colspan="2" style="text-align:left; font-family:scDreamM;" id="total"></td>
                    </tr>
                    <tr height="80px;">
                        <td colspan="6"> </td>
                    </tr>
                    <tr>
                        <td colspan="6" height="50px;" style="text-align: left; padding-left: 70px; font-size: 20px; font-family:nanumacB;">
                            〉〉   ${oList[1].bId }님의 요청사항
                        </td>
                        
                    </tr>
                    <tr>
                        <td colspan="6" height="80px;" style="text-align: left; padding-left: 70px; padding-bottom:10px;">
                            <textarea rows="4" cols="45" style="margin-top:20px; margin-bottom:50px; padding:10px; font-size:17px; font-family:scDreamM;">${oList[1].bRequest }</textarea>
                        </td>
                    </tr>
                </table>
                 
                </div>
            </div>
        </div>
    </div>
<hr style="border:1px solid; background-color: white; width: 1500px;">
<%@ include file="/WEB-INF/views/include/footer.html" %>
</body>
</html>