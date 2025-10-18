<%-- 
    Document   : get_student_name_surname_otcome
    Created on : 13 Apr 2025, 2:46:36 AM
    Author     : Philasande
--%>

<%@page import="za.ac.tut.model.entities.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get student using name and surname outcome Page</title>
    </head>
    <body>
        <h1>Get student using name and surname outcome</h1>
        <%
             Student p =(Student) request.getAttribute("student");
             Long id = p.getId();
             String name =p.getFirstName();
             String surname =p.getLastName();
             String gender = p.getGender();
             Integer age = p.getAge();
             Double percMarkObtained = p.getPercMarkObtained();
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
                <td>Percentage Mark :</td>
                <td><%=percMarkObtained%></td>
            </tr>
            
        </table>
            
            <p>
                Please click <a href="menu.jsp">here</a> to go back to menu page or <a href="index.html">here</a> to the main page.
            </p>
    </body>
</html>
