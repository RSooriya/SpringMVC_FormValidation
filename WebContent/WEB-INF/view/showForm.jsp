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
text-align:left;
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
<h2>Application Form</h2>
<form:form action="processForm" modelAttribute="customer">
Field marked with <span class=asterik>*</span> are mandatory
<table>
<tr>
<th>Name<span class="asterik">*</span></th>
<td><form:input path="name"/></td>
<td><form:errors path="name" cssClass="error"/></td>
</tr>
<tr>
<th>Age<span class="asterik">*</span></th>
<td><form:input path="age"/></td>
<td><form:errors path="age" cssClass="error"/></td>
</tr>
<tr>
<th>Phone Number<span class="asterik">*</span></th>
<td><form:input path="phoneNumber"/></td>
<td><form:errors path="phoneNumber" cssClass="error"/></td>
<td></td>
</tr>
<tr>
<th>Pincode</th>
<td><form:input path="pincode"/></td>
<td><form:errors path="pincode" cssClass="error"/></td>
</tr>
<tr>
<th>Course Code<span class="asterik">*</span></th>
<td><form:input path="courseCode"/></td>
<td><form:errors path="courseCode" cssClass="error"/></td>
</tr>
<tr>
<td><input type="submit" value="Submit"></td>
</tr>
</table>
</form:form>
</body>
</html>