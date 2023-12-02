<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <title>edit form</title>
</head>
<body>

<%--@elvariable id="boardVO" type="com"--%>
<form:form commandName="boardVO" method="post" action="../editok/${seq}">
    <form:hidden path="seq"/>
    <table id="edit">
        <tr><td>title</td><td><form:input path="title"/></td></tr>
        <tr><td>writer</td><td><form:input path="writer"/></td></tr>
    </table>
    <input type="submit" value="edit">
    <input type="button" value="cancel" onclick="history.back()">
</form:form>

</body>
</html>
