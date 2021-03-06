<%@ page import="java.util.List" %>
<%@ page import="club.banyuan.entity.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="css/common.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<form action="select.do" method="post">
    <div class="wrap">
        <!-- main begin-->
        <div class="sale">
            <h1 class="lf">在线拍卖系统</h1>
            <div class="logout right"><a href="login.html" title="注销">注销</a></div>
        </div>
        <div class="forms">
            <label for="name">名称</label>
            <input name="inputName" type="text" class="nwinput" id="name"/>
            <label for="names">描述</label>
            <input name="description" type="text" id="names" class="nwinput"/>
            <label for="time">开始时间</label>
            <input name="startTime" type="text" id="time" class="nwinput"/>
            <label for="end-time">结束时间</label>
            <input name="endTime" type="text" id="end-time" class="nwinput" />
            <label for="price">起拍价</label>
            <input name="startPrice" type="text" id="price" class="nwinput" />
            <a href="localhost:8080/select.jsp"><input name="" type="button"  value="查询" class="spbg buttombg f14  sale-buttom"/></a>
        </div>
        <div class="items">
            <ul class="rows even strong">
                <li>名称</li>
                <li class="list-wd">描述</li>
                <li>开始时间</li>
                <li>结束时间</li>
                <li>起拍价</li>
                <li class="borderno">操作</li>
            </ul>

            <%
                List<Product> list = (ArrayList<Product>)session.getAttribute("list");
                for (Product product : list) {
                    %>
                <ul class="rows">
                <li><a href="国书" title=""><%=product.getProductName()%></a></li>
                <li class="list-wd"><%=product.getDescription()%></li>
                <li><%=product.getStartTime()%></li>
                <li><%=product.getEndTime()%></li>
                <li><%=product.getStartPrice()%></li>
                <li class="borderno red"><a href="#">竞拍</a></li>
            </ul>
            <%
                }
                %>
            <div class="page">
                <a href="#" title="">首页</a>
                <a href="#" title="">上一页</a>
                <span class="red">前5页</span>
                <a href="#" title="">1</a>
                <a href="#" title="">2</a>
                <a href="#" title="">3</a>
                <a href="#" title="">4</a>
                <a href="#" title="">5</a>
                <a href="#" title="">下一页</a>
                <a href="#" title="">尾页</a>
            </div>
        </div>
        <!-- main end-->
    </div>
</body>
</html>

