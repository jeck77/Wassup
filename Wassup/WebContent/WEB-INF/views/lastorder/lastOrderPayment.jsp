<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WASSUP - 주문 결제</title>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- 제이쿼리 -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- 다음 주소 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a8cb57d60bbbe20bede9fed1ef145271"></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
$(function() {
	$("#coupon").click(function() {
		alert("라스트오더 메뉴 결제할 시에는 쿠폰을 적용할 수 없습니다.");
		$("#coupon").attr("disable", true);
	});
});
	function paymentBtn() {
		var total = ${total };
		var price = $("#price").val();
		var payway = $("input[name=payway]:checked").val();
		if(payway=='결제완료') {
			var IMP = window.IMP;
		    IMP.init('imp60714204');
		    var msg;
		    
		    IMP.request_pay({
		        pg : 'html5_inicis',
		        pay_method : 'card',
		        merchant_uid : 'merchant_' + new Date().getTime(),
		        name :	'WASSUP',
		        amount : total,
		        buyer_email : 'eye5277@naver.com',
		        buyer_name : '손님',
		        buyer_tel : '010-2538-5276',
		        buyer_addr : '서울시 종로구',
		        buyer_postcode : '123-456'
		    }, function(rsp) {
		        if ( rsp.success ) {
		            //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
		            jQuery.ajax({
		                url: "/payments/complete",
		                type: 'POST',
		                dataType: 'json',
		                data: {
		                    imp_uid : rsp.imp_uid
		                }
		            }).done(function(data) {
		                //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
		                if ( everythings_fine ) {
		                    msg = '결제가 완료되었습니다.';
		                    msg += '\n고유ID : ' + rsp.imp_uid;
		                    msg += '\n상점 거래ID : ' + rsp.merchant_uid;
		                    msg += '\결제 금액 : ' + rsp.paid_amount;
		                    msg += '카드 승인번호 : ' + rsp.apply_num;
		                    
		                    alert(msg);
		                } else {
		                    //[3] 아직 제대로 결제가 되지 않았습니다.
		                    //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
		                }
		            });
		            //성공시 이동할 페이지
		            $('form#paymentForm').submit();
		            
		        } else {
		            msg = '결제에 실패하였습니다.';
		            msg += '에러내용 : ' + rsp.error_msg;
		            //실패시 이동할 페이지
		            alert(msg);
		            return false;
		        }
		    });
		} else if(payway=='현장결제') {
				$('form#paymentForm').submit();
		} else {
			alert("결제 방식을 선택해 주세요.");
			return false;
		}
		}
</script>
<%-- 	$(document).ready(function() {
		var total = 0;
		<c:forEach items="${cart }" var="cart" status="status">
		var amount = ${cart.amount};
		var price = ${cart.price};
		var sum = parseInt(amount) * parseInt(price);
		total += sum;
		</c:forEach>
		$("#total").text(total+"원");
	});  --%>

       <%-- 	$(function() {
		<c:forEach items="${cart }" var="cart" status="status">
		var total = 0;
		var amount = ${cart.amount};
		var price = ${cart.price};
		var sum = parseInt(amount) * parseInt(price);
		total += sum;
		$("#total").html(total+"원");
		</c:forEach>
	});   --%>
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
    }
    #head_content {
        height: 15%;
        text-align: center;
        padding: 50px;
        font-size: 40px;
        font-family : nanumacB;
        margin-top:5%;
    }
    #main_content {
        height: 75%;
    }
    #information {
        width: 70%;
        height: 100%;
        margin: auto;
        background-color: #272753;
        border: 4px solid white;
        box-shadow: 0 0 10px #ED85FF, 0 0 10px #ED85FF,
            inset 0 0 10px #ED85FF, inset 0 0 10px #ED85FF;
    }
    #seller_signup {
        height: 100%;
        font-size: 17px;
        font-weight: bolder;
        font-family : nexonM;
    }
/*
    input {
        width : 250px;
        height : 40px;
        margin : 10px;
        font-size : 14px;
        
    }
*/
    .top_wrap {
        background : white;
        margin: 40px 200px 40px 200px;
        width : 60%;
        height: 90%;
/*        border : 1px solid white;*/
    }
    .area1 {
        width : 100%;
        height : 25%;
        float : left;
/*        border : 1px solid black;*/
        
    }
    .area1_1 {
        color:white;
        font-size:25px;
        text-align:left;
        background-color : #333366;
        border : 1px solid black;
        width : 50%;
        height : 37%;
        margin: 20px;
        margin-bottom: 0px;
        padding-left: 10px;
        line-height: 3;
    }
    .area1_2{
        color : black;
        width: 100%;
        height: 50%;
/*        border : 1px solid black;*/
        line-height: 2;
    }
    .area_content {
        float: left;
        width: 50%;
        height: 100%;
        padding-top: 20px;
        padding-left: 50px;
        font-size: 20px;
    }
    .area2 {
        width : 100%;
        height : 40%;
        float : left;
/*        border : 1px solid black;*/
    }
    .area2_1 {
        color:white;
        font-size:25px;
        text-align:left;
        background-color : #333366;
/*        border : 1px solid black;*/
        width : 50%;
        height : 24%;
        margin: 20px 0px 0px 20px;
        margin-bottom: 0px;
        padding-left: 10px;
        line-height: 3;
    }
    .area2_2 {
        color: black;
        text-align: left;
        height: 75%;
        
    }
    .area_payway1 {
        height: 20%;
        text-align: left;
        line-height: 5;
        margin-left: 50px;
    }
    .area_payway2 {
        height: 60%;
        text-align: left;
        line-height: 7.5;
        margin-left: 60px;
    }
    .area3 {
        width : 100%;
        height : 35%;
        float : left;
/*        border : 1px solid black;*/
    }
    .area3_1 {
        color:white;
        font-size:25px;
        text-align:left;
        background-color : #333366;
/*        border : 1px solid black;*/
        width : 50%;
        height : 27%;
        margin: 20px 0px 0px 20px;
        margin-bottom: 0px;
        padding-left: 10px;
        line-height: 3;
    }
    .area3_2 {
        color: black;
        padding-left: 50px;
        margin-bottom: 10px;
    }
    .area3_3 {
        margin-left: 50px;
    }
    #btn_content{
        height: 8%;
        
    }
    #btn_div {
        height: 100%;
        text-align: center;
        
    }
    .btn {
        background-color: #336;
        color: white;
        border: 3px solid white;
        font-size: 20px;
        height: 70px;
        width: 170px;
        margin-top: 40px;
        font-family : scDreamL;
    }
    
   
</style> 
</head>
<body>
    <form action="/lastorder/order" method="post" id="paymentForm">
    <input type="text" name="truckName" value="${truckName }">
    <!-- 2699c271a5fff1aec7524b070032df00 -->
    <div id="wapper">
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/nav.jsp" %>

        <div id="content">
            <div id="head_content">
                <b>주문 결제</b>
                <hr style="width:40%; margin-top:30px;">
            </div>
            <div id="main_content">
                <div id="information">
                    <div id="seller_signup">
                        <div class="top_wrap">
                            <div class="area1">
                                <div class="area1_1">주문금액</div>
                                <div class="area1_2">
                                    <div class="area_content"> 총 결제 금액</div>
                                    <div class="area_content" id="total">${total }원</div>
                                    <c:forEach items="${cart }" var="cart" varStatus="status">
                                    <input type="hidden" name="menuCode${status.index }" id="menuCode" value="${cart.lastorderCode }">
                                    <input type="hidden" name="menuName${status.index }" id="menuName" value="${cart.lastMenuName }">
                                    <input type="hidden" name="price${status.index }" id="price" value="${cart.lastPrice }">
                                    <input type="hidden" name="amount${status.index }" id="amount" value="${cart.amount }">
                                    <input type="hidden" name="orderStatus${status.index }" id="orderStatus" value="주문">
                                    <input type="hidden" name="sCode${status.index }" id="sCode" value="${cart.sCode }">
                                    <input type="hidden" name="discount${status.index }" id="discount" value="${cart.discount }">
                                    <input type="hidden" name="truckName" id="truckName" value="${sessionScope.truckName }">
                                    <input type="hidden" name="stock${status.index }" id="stock" value="${cart.stock }">
                                    <c:if test="${status.last }"> <input type="hidden" name="count" value="${status.index }"></c:if>
                                    </c:forEach>
                                </div>
                            </div>
                            <hr>
                            <div class="area2">
                                <div class="area2_1">결제하기</div>
                                <div class="area2_2">
                                    <div class="area_payway1">
                                    <label>
                                        <input type="radio" name="payway" id="payway" value="현장결제">현장 결제(현금, 카드)
                                    </div>
                                    <div class="area_payway1">
                                        <input type="radio" name="payway" id="payway" value="결제완료">간편 결제
                                    </div>
                                    <div class="area_payway2">
                                        할인 쿠폰 적용 : 
                                        <select id="coupon" name="coupon">
                                            <option selected disabled>==쿠폰 선택==</option>
                                        <c:forEach items="${coupon }" var="coupon" varStatus="status">
                                            <option>신규가입 10% 쿠폰</option>
                                            <option>할로윈 축제 깜짝 5%</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="area3">
                                <div class="area3_1">
                                    요청사항
                                </div>
                                <br>
                                <div class="area3_2">
                                    트럭 사장님께
                                </div>
                                <div class="area3_3">
                                    <textarea id="textBox" name="bRequest" cols="35" rows="3.5" style="border: 3.5px solid black; border-radius: 5px; font-size: 16px;" maxlength="100"></textarea>
                                    <!-- <input type="text" name="bRequest" id="bRequest"> --> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="btn_content">
                <div id="btn_div">
                    <input type="button" value="결제하기" class="btn" onclick="paymentBtn()">
                </div>
            </div>
        </div>
    </div>
    <hr style="border:1px solid; background-color: white; width: 1500px;">
<%@ include file="/WEB-INF/views/include/footer.html" %>
    </form>
</body>
</html>