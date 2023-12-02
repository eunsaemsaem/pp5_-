<%--
  Created by IntelliJ IDEA.
  User: eunsaem
  Date: 2023/12/01
  Time: 5:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>board list</title>

<%--    <script>--%>
<%--        function delete_ok(id) {--%>
<%--            var a = comfirm("정말 삭제하시겠습니까?");--%>
<%--            if (a) location.href='deleteok/' + id;--%>
<%--        }--%>
<%--    </script>--%>

    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            padding: 8px;
            border: 1px solid #ddd;
            text-align: left;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        th {
            background-color: #04AA6D;
            color: white;
        }

        th, td {
            font-family: sans-serif;
            font-size: 14px;
            font-weight: normal;
        }

        td.content {
            max-height: 70px;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        button[type="button"] {
            padding: 12px 20px;
            font-size: 16px;
            background-color: #04AA6D;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button[type="button"]:hover {
            background-color: #04AA6D;
        }

    </style>
</head>
<body>

<table>
    <tr>
        <th>No.</th>
        <th>Title</th>
        <th>Writer</th>
        <th>Content</th>
        <th>Category</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.getSeq()}</td>
            <td>${u.getTitle()}</td>
            <td>${u.getWriter()}</td>
            <td>${u.getContent()}</td>
            <td>${u.getCategory()}</td>
            <td><a href="editform/${u.seq}">Edit</a></td>
            <td><a href="deleteok/${u.seq}">delete</a></td>
        </tr>
    </c:forEach>
</table>
<br><button type="button" onclick="location.href='add'">new post</button>

</body>
</html>
