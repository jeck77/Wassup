<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WASSUP - 판매자 리뷰 답글</title>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

<script>
$(document).ready(function(){
	<c:forEach items="${rplyList }" var="reply">
	console.log(${reply.reviewCode});
	console.log($(".review").is("#"+${reply.reviewCode}));
	console.log($("#"+${reply.reviewCode}).children().last());
	$("#"+${reply.reviewCode}).children().last().children().remove();
	$("#"+${reply.reviewCode}).children().last().text('답글완료');
	</c:forEach>
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
/*        border:solid 1px;*/
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
        height: 76%;
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
        margin-top : 9%;
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
        background: #272753;
        font-size: 20px;
        text-align: center;
		
        box-shadow: 0 0 10px #ED85FF, 0 0 10px #ED85FF,
        inset 0 0 10px #ED85FF, inset 0 0 10px #ED85FF;
        border-collapse: collapse;
    }
    th{
       padding : 20px;
        border-bottom: solid 2px white;
        font-size : 19px;
        font-family : scDreamM;
    }
    td{
    	height : 60px;
        border-bottom: solid 2px white;
        font-family : scDreamL;
        font-size: 17px;
    }
    
    .btn {
        height: 40px;
        width: 80px;
        background-color: #333366;
        border: 2px solid white;
        font-size: 15px;
        border-radius: 5px;
        color:white;
        font-family : scDreamL;
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
                            리뷰 관리
                    <hr style="width: 40%; margin-top:30px;">
                <div class="content_content">
                <table class="table table-hover">
                    <thead style="border: 1px solid white">
                     <tr height="50px;"><th>리뷰 번호</th><th>주문 번호</th><th>고객 명</th><th>별점</th><th>리뷰 작성일</th><th>리뷰 버튼</th></tr>
                    </thead>
 				<c:forEach items="${rList }" var="review">
					<tr height="50px;" class="review" id="${review.reviewCode }"><td>${review.reviewCode }</td><td>${review.orderCode }</td><td>${review.bName }</td><td>${review.grade }</td><td>${review.reviewDate }</td><td><input type="button" value="답글 작성" class="btn" onclick="location.href='/seller/replyWrite?reviewCode=${review.reviewCode }&&orderCode=${review.orderCode }'"></td>
					</tr>
				</c:forEach>
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