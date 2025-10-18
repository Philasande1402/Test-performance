<%-- 
    Document   : get_student_using_id_outcome
    Created on : 13 Apr 2025, 2:39:37 AM
    Author     : Philasande
--%>

<%@page import="za.ac.tut.model.entities.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get student using ID Outcome Page</title>
    </head>
    <body>
        <h1>Get student using id outcome</h1>
        <%
            Student p =(Student) request.getAttribute("student");
            Long id = p.getId();
            String name = p.getFirstName();
            String surname = p.getLastName();
            String gender = p.getGender();
            Integer age = p.getAge();
            Double percMark = p.getPercMarkObtained();
        %>
        <p>
            Below are the details of the student:
        </p>
        <table>
            <tr>
                <td>ID :</td>
                <td><%=id%></td>
            </tr>
            <tr>
                <td>Name :</td>
                <td><%=name%></td>
            </tr>
            <tr>
                <td>Surname :</td>
                <td><%=surname%></td>
            </tr>
            <tr>
                <td>Gender :</td>
                <td><%=gender%></td>
            </tr>
            <tr>
                <td>Age :</td>
                <td><%=age%></td>
            </tr>
            <tr>
                <td>Percentage Marks :</td>
                <td><%=percMark%></td>
            </tr>
        </table>
            <p>
                Please click <a href="menu.jsp">here</a> to go back to menu page or <a href="index.html">here</a> to the main page.
            </p>
    </body>
</html>
