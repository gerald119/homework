<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head> -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <style rel="stylesheet" type="text/css">
        .carousel{
            display: none;
        }
    </style>
    <script src="https://code.jquery.com/jquery-1.12.4.js"
        integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU=" 
        crossorigin="anonymous"></script>
        <script type="text/javascript">
var before1;
$(function(){
    var callback=function(){
        if(before1) $('.carousel').append(before1);
        before1=$('.carousel li').first();
        before1.insertBefore('.carousel');
    }
    setInterval(callback,1000);
});

//div>ul.carousel>(li>img[src='imgs/small0.jfif'])*6
    </script>
</head>
<body>
<%@ include file="./template/header.jspf" %>

<div>
        <ul class="carousel">
            
         
            
            <li><img src="imgs/img03.png" alt="" width=800px height=400px;></li>
            <li><img src="imgs/img03.png" alt="" width=800px height=400px;></li>
            <li><img src="imgs/img04.png" alt="" width=800px height=400px;></li>
            <li><img src="imgs/img05.png" alt="" width=800px height=400px;></li>
            <li><img src="imgs/img02.png" alt="" width=800px height=400px;></li>
            <li><img src="imgs/img06.png" alt="" width=800px height=400px;></li>
            
            
            
        </ul>
    </div>
<%@ include file="./template/footer.jspf" %>
</body>
</html>



