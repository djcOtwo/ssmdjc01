<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/4
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>列表页面</title>
    <style>
        div{
            background-color: goldenrod;
        }
    </style>
</head>
<body>
<div>
    <a href="artadd.jsp">添加书籍</a>
</div>

<hr style="background-color: red;height: 5px;">

<form action="" method="post">
    <div >
        <table border="0";>
            <tr>
                <td>全选</td>
                <td>书籍编号</td>
                <td>书籍作者</td>
                <td>书籍名称</td>
                <td>书籍时间</td>
                <td>书籍描述</td>
            </tr>
            <c:forEach items="${listArt}" var="art" varStatus="i">
                <tr>
                   <td><input type="checkbox" name="id"></td>
                    <td>${i.count}</td>
                    <td>${art.dlName}</td>
                    <td>${art.dlWork}</td>
                    <td>${art.dlTime}</td>
                    <td><textarea>${art.dlWdesc}</textarea> </td>
                    <td><a href="/delArt.do?id=${art.dlUid}">删除</a>&nbsp;&nbsp;&nbsp;<a href="/findById.do?id=${art.dlUid}">修改</a></td>
                </tr>
            </c:forEach>
            <tr>
                <td><a href="/listPageArt.do?page=1">首页</a></td>
                <%--需要把当前页传递过来--%>
                <c:if test="${pageDTO.curPage>1}">
                    <td><a href="/listPageArt.do?page=${pageDTO.curPage-1}">上一页</a></td>
                </c:if>

                <c:forEach var="i" begin="1" end="${pageDTO.maxPage}">
                    <td><a href="/listPageArt.do?page=${i}">${i}&nbsp;&nbsp;&nbsp;</a></td>
                </c:forEach>

                <c:if test="${pageDTO.curPage<pageDTO.maxPage}">
                    <td><a href="/listPageArt.do?page=${pageDTO.curPage+1}">下一页</a></td>
                </c:if>
                <%--需要获得最大页数--%>
                <td><a href="/listPageArt.do?page=${pageDTO.maxPage}">尾页</a></td>
            </tr>
            <tr>
                <td><a href="/listArt.do">查看全部</a></td>
            </tr>
        </table>
    </div>
</form>

</body>
</html>
