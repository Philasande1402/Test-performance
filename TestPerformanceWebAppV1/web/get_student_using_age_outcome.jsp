<%-- 
    Document   : get_student_using_age_outcome
    Created on : 13 Apr 2025, 2:55:51 AM
    Author     : Philasande
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.model.entities.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get student using age outcome Page</title>
    </head>
    <body>
        <h1>Get student using age outcome</h1>
        <%
             List<Student> lis= (List<Student>)request.getAttribute("list");
             Integer minAge = (Integer) request.getAttribute("minAge");
             Integer maxAge = (Integer) request.getAttribute("maxAge");
             
        %>
        <p>
            Below are the students within the age group <b><%=minAge%></b> and <b><%=maxAge%></b>.
        </p>
        <table>
            <%
                for(int i=0;i<lis.size();i++){
                Student stu = lis.get(i);
                Long id = stu.getId();
                String name = stu.getFirstName();
                String surname =stu.getLastName();
                String gender = stu.getGender();
                Integer age = stu.getAge();
                Double percMark =stu.getPercMarkObtained();
                %>
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
                    <td><%=percMark%></td>
                </tr>
                <%
                    }
%>
                
        </table>
                <p>
                Please click <a href="menu.jsp">here</a> to go back to menu page or <a href="index.html">here</a> to the main page.
            </p>
    </body>
</html>
