<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>WASSUP - 주문 내역</title>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function(){
		var status = $("#status").val();
		console.log(status);
		 if(status == "주문"){
			$(".order").css("background","#272753");
		}else if(status == "수락"){
			$(".agree").css("background","#272753");
		}else if(status == "완료"){
			$(".finish").css("background","#272753");
		}else{
			$(".all").css("background","#272753");
		}
	})
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
        box-sizing: border-box;

    }
    #wapper{
        margin: auto;
        width: 1500px;
        height: 1600px;
    }

    #contents{
        font-size: 40px;
        text-align: center;
        width: 100%;
        height: 65%;
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
        width: 80%;
        height: 80%;
        background-color : rgb(70, 70, 140);
        box-shadow: 0 0 10px #ED85FF, 0 0 10px #ED85FF,
        inset 0 0 10px #ED85FF, inset 0 0 10px #ED85FF;
        border: 2px solid white;
    }
    .content_header{
        border: 2px;
        width: 100%;
        height: 11%;
        box-shadow: 0 0 10px #ED85FF, 0 0 10px #ED85FF,
        inset 0 0 10px #ED85FF, inset 0 0 10px #ED85FF;
        font-family : scDreamM;
    }
    .header_content{
     	float: left;
    	width: 25%;
    	height: 100%;
   		font-size: 25px;
        line-height: 90px;
        border: 2px solid white;
        box-shadow: 0 0 5px #ED85FF, 0 0 5px #ED85FF,
        inset 0 0 10px #ED85FF, inset 0 0 5px #ED85FF;
    }
    .select{
        background: #272753;
    }
    .content_table{
        width: 100%;
        height: 89%;
        background: #272753;
        float: left;
    }

    table{
        width: 100%;
        text-align: center;
        padding : 10px;
    }
    th {
    	font-family : nexonL;
    	font-size : 19px;
    	padding : 10px;
    }
    tr,td{
    	font-family : scDreamL;
        font-size: 16px;
    }
    .btn {
        height: 40px;
        width: 80px;
        background-color: #333366;
        border: 2px solid white;
        font-size: 15px;
        border-radius: 5px;
        color: white;
        font-family : scDreamL;
    }
    </style>
</head>
<body>

    <div id="wapper">
	<input type="hidden" value="${select }" id="status">
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/nav.jsp" %>
        <div id="contents">
            <div class="content_side"></div>
            <div class="content_center">
                            주문 내역
                    <hr style="width:50%; margin-top:30px;">
                <div class="content_content">
                    <div class="content_header">
                        <a href="/seller/list/order"><div class="header_content all">전체 주문</div></a>
                        <a href="/seller/list/order?status=주문"><div class="header_content order">주문 상태</div></a>
                        <a href="/seller/list/order?status=수락"><div class="header_content agree">수락 상태</div></a>
                        <a href="/seller/list/order?status=완료"><div class="header_content last finish">완료 상태</div></a>
                    </div>
                    <div class="content_table" style="overflow: auto">
                    <table>
                    <c:if test="${select eq '완료'}">
                    <tr><th style="height: 50px;">주문코드</th><th style="height: 50px;">주문 아이디</th><th style="height: 50px;">총 주문 가격</th ><th style="height: 50px;">결제 방식</th><th style="height: 50px;">주문 날짜</th><th style="height: 50px;">주문 상태</th><th style="height: 50px;">상세보기</th></tr>
                    </c:if>
                    <c:if test="${select ne '완료'}">
                    <tr><th style="height: 50px;">주문코드</th><th style="height: 50px;">주문 아이디</th><th style="height: 50px;">총 주문 가격</th ><th style="height: 50px;">결제 방식</th><th style="height: 50px;">주문 날짜</th><th style="height: 50px;">주문 상태</th><th style="height: 50px;">상태 버튼</th><th style="height: 50px;">상세보기</th></tr>
                    </c:if>
						<c:forEach items="${oList }" var="order">
						<tr> <td style="height: 50px;">${order.receiptCode }</td><td style="height: 50px;">${order.bId }</td> <td style="height: 50px;">${order.price }</td><td style="height: 50px;">${order.paymentWays }</td><td style="height: 50px;">${order.orderDate }</td><c:if test="${order.orderStatus ne '완료' }"><td style="height: 50px;">${order.orderStatus }</td></c:if><td style="height: 50px;"><c:if test="${order.orderStatus eq '완료'}" >완료</c:if><c:if test="${order.orderStatus eq '주문'}"><input type="button" value="수락" onclick="location.href='/order/update?status=수락&receiptCode=${order.receiptCode}'" class="btn"></c:if><c:if test="${order.orderStatus eq '수락'}"><input type="button" value="완료" onclick="location.href='/order/update?status=완료&receiptCode=${order.receiptCode}'" class="btn"></c:if></td><td><input type="button" value="상세보기" onclick="location.href='/seller/order?receiptCode=${order.receiptCode }'" class="btn"></td></tr> 
						</c:forEach>
                    </table>
                    </div>
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