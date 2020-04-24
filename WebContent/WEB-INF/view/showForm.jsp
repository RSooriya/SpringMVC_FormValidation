<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table
{
border-spacing:10px;
}
.asterik
{
color:red;
}
.error
{
color:red;
}
</style>
</head>
<body>
<form:form action="processForm" modelAttribute="customer">
Field marked with <span class=asterik>*</span> are mandatory
<table>
<tr>
<td>Name<span class="asterik">*</span></td>
<td><form:input path="name"/></td>
<td><form:errors path="name" cssClass="error"/></td>
</tr>
<tr>
<td>Age<span class="asterik">*</span></td>
<td><form:input path="age"/></td>
<td><form:errors path="age" cssClass="error"/></td>
</tr>
<tr>
<td>Phone Number</td>
<td><form:input path="phoneNumber"/></td>
</tr>
<tr>
<td>Pincode</td>
<td><form:input path="pincode"/></td>
</tr>
<tr>
<td>Course Code</td>
<td><form:input path="courseCode"/></td>
</tr>
<tr>
<td><input type="submit" value="Submit"></td>
</tr>
</table>
</form:form>
</body>
</html>