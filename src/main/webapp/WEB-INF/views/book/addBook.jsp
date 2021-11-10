<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>SAVE BOOK</title>
</head>
<body>

        <form:form modelAttribute="book">

        <form:hidden path="id"/><br/>
        Author: <form:input path="author"/><br/>
        <form:errors path="author"/><br/>
        ISBN: <form:input path="isbn"/><br/>
        <form:errors path="isbn"/><br/>
        Publisher: <form:input path="publisher"/>
        <form:errors path="publisher"/><br/>
        Title: <form:input path="title"/>
        <form:errors path="title"/><br/>
        Type: <form:input path="type"/>
        <form:errors path="type"/><br/>

        <input type="submit" value="SAVE BOOK"><br/>

    </form:form>

</body>
</html>



<%--
<form:form modelAttribute="book" action="/book/form/save">

    Title: <form:input path="title"/><br/>
    <form:errors path="title"/><br/>

    Description: <form:textarea path="description"/><br/>
    <form:errors path="description"/><br/>

    Publisher: <form:select path="publisher.id" items="${publishers}" itemLabel="name" itemValue="id"/><br/>
    <form:errors path="publisher"/><br/>

    Authors: <form:checkboxes multiple="true" path="authors" items="${authors}" itemValue="id" itemLabel="fullName"/><br/>
    <form:errors path="authors"/><br/>

    Rating: <form:input path="rating" type="number"/> <br/>
    <form:errors path="rating"/><br/>

    pages: <form:input path="pages" type="number"/> <br/>
    <form:errors path="pages"/><br/>

    <input type="submit" value="ADD BOOK"><br/>

</form:form>--%>
