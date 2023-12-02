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

    <script>
        function delete_ok(id) {
            var a = comfirm("정말 삭제하시겠습니까?");
            if (a) location.href='deleteok/' + id;
        }
    </script>
</head>
<body>

<table>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.getSeq()}</td>
            <td>${u.getTitle()}</td>
            <td>${u.getWriter()}</td>
            <td>${u.getContent()}</td>
            <td>${u.getCategory()}</td>
            <td><a href="editform/${u.seq}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">delete</a></td>
        </tr>
    </c:forEach>
</table>
<br><button type="button" onclick="location.href='add'">new post</button>

</body>
</html>
