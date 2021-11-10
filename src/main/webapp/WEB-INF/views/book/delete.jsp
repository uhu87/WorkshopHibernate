<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html; charset=UTF-8" %>

<h2>Do you want to remove ${book.title} by ${book.title}?</h2>

<form method="post">
    <input type="hidden" name="toRemoveId" value="${book.id}">
    <button type="submit" value="yes" name="confirmed">YES</button>
    <button type="submit" value="no" name="confirmed">NO</button>
</form>