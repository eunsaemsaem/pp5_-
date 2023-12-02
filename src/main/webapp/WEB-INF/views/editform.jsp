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

    <style>
        #edit {
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 80%;
            max-width: 600px;
        }

        #edit input[type="text"],
        #edit input[type="submit"],
        #edit input[type="button"] {
            width: calc(100% - 10px);
            margin: 5px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }

        #edit input[type="submit"],
        #edit input[type="button"] {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }

        #edit input[type="button"] {
            background-color: #f44336;
        }


    </style>
</head>
<body>

<%--@elvariable id="boardVO" type=""--%>
<form:form modelAttribute="boardVO" method="post" action="../editok">
    <form:hidden path="seq"/>
    <table id="edit">
        <tr><td>title</td><td><form:input path="title"/></td></tr>
        <tr><td>writer</td><td><form:input path="writer"/></td></tr>
        <tr><td>content</td><td><form:input path="content"/></td></tr>
        <tr><td>category</td><td><form:input path="category"/></td></tr>
    </table>
    <input type="submit" class="postlink" value="edit">
    <input type="button" class="postlink" value="cancel" onclick="history.back()">
</form:form>

</body>
</html>
