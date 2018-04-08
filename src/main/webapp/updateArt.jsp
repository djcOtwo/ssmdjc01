<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/4
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>修改页面</title>
</head>
<body>

<div style="background-color: peachpuff;height: 100%;width: 100%">
    <form action="/updateArt.do?id=${dto.dlUid}" method="post">
        作者:<input type="text" name="dlName" value="${dto.dlName}"><br>
        作品:<input type="text" name="dlWork" value="${dto.dlWork}"><br>
        时间:<input type="text" name="dlTime" value="${dto.dlTime}"><br>
        书籍介绍:<textarea rows="5" cols="20" name="dlWdesc" >${dto.dlWdesc}</textarea><br>
        <input type="submit" value="确认修改">
    </form>
</div>

</body>
</html>
