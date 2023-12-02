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

    <style>
        #edit {
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 80%;
            max-width: 600px;
        }

        #edit input[type="text"] {
            width: calc(100% - 10px);
            margin: 5px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }

        #edit button {
            margin: 10px 5px;
            padding: 8px 16px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        #edit button:nth-of-type(1) {
            background-color: #f44336;
            color: white;
        }

        #edit button:nth-of-type(2) {
            background-color: #4CAF50;
            color: white;
        }

    </style>
</head>
<body>

<form action="addok" method="post">
    <table id="edit">
        <tr><td>Title</td><td><input type="text" name="title"/></td></tr>
        <tr><td>Writer</td><td><input type="text" name="writer"/></td></tr>
        <tr><td>Content</td><td><input type="text" name="content"/></td></tr>
        <tr><td>Category</td><td><input type="text" name="category"/></td></tr>
    </table>
    <button type="button" onclick="location.href='list'">view list</button>
    <button type="submit">submit</button>
</form>

</body>
</html>
