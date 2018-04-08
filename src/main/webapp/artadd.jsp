<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/3
  Time: 9:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加页面</title>
</head>
<body>

<div style="background-color: darkseagreen;height: 100%;width: 100%">
    <form action="/addArt.do" method="post">
        作者:<input type="text" name="dlName"><br>
        作品:<input type="text" name="dlWork"><br>
        时间:<input type="text" name="dlTime"><br>
        书籍介绍:<textarea  rows="5" cols="20" name="dlWdesc"></textarea><br><!-- 描述内容多,使用textarea标签 ; 不多,使用input标签下的文本-->
        <input type="submit" value="添加">
    </form>
</div>



</body>
</html>
