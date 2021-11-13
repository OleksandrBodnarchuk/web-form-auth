<%--
  Created by IntelliJ IDEA.
  User: oleksandrbodnarchuk
  Date: 11/13/2021
  Time: 8:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/calculator" method="post">
    <fieldset>
        <legend>Insert Numbers</legend>
        <label>
            <input type="number" name="first">
        </label>
        <label>
            <select name="operator">
                <option value="+">+</option>
                <option value="-">-</option>
                <option value="*">*</option>
                <option value="/">/</option>
            </select>
        </label>
        <label>
            <input type="number" name="second">
        </label>
    </fieldset>
    <button type="submit">Submit</button>
</form>
</body>
</html>
