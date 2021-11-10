<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Book List</title>
</head>
<body>

<table border="1">
    <thead>
    <th>isbn</th>
    <th>title</th>
    <th>author</th>
    <th>details</th>
    <th>edit</th>
    <th>delete</th>
    </thead>
    <tbody>
    <c:forEach items="${books}" var="book">
        <tr>
            <td><c:out value="${book.isbn}"/></td>
            <td><c:out value="${book.title}"/></td>
            <td><c:out value="${book.author}"/></td>
            <td><a href="details?id=${book.id}">details</a> </td>
            <td><a href="edit?id=${book.id}">edit</a> </td>
            <td><a href="delete?id=${book.id}">delete</a> </td>
        </tr>
    </c:forEach>
    </tbody>
    <a href="add">ADD BOOK</a>
</table>
</body>
</html>

