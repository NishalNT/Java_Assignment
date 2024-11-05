<%@page import="org.canara.models.Employee"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>EmployeeList</title>
	</head>
	<body>
		<div class="main">
			<h1>List Of Employees</h1>
		<table border="1">
            <thead>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Phone Number</th>
                </tr>
            </thead>
            <tbody>
                <%
                    ArrayList<Employee> employeeList = (ArrayList<Employee>) request.getAttribute("employeeList");
                    if (employeeList != null) {
                        for (Employee emp : employeeList) {
                %>
                <tr>
                    <td><%= emp.getFirstName() %></td>
                    <td><%= emp.getLastName() %></td>
                    <td><%= emp.getPhoneNo() %></td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="3">No employees found</td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
		</div>
	</body>
</html>
