<%--
  Created by IntelliJ IDEA.
  User: eunsaem
  Date: 2023/12/01
  Time: 10:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="addok" method="post">
    <table id="edit">
        <tr><td>title</td><td><input type="text" name="title"/></td></tr>
        <tr><td>writer</td><td><input type="text" name="writer"/></td></tr>
    </table>
    <button type="button" onclick="location.href='list'">view list</button>
    <button type="submit">submit</button>
</form>

</body>
</html>
