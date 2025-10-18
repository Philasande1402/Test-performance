<%-- 
    Document   : get_test_statistics_outcome
    Created on : 13 Apr 2025, 11:39:48 PM
    Author     : Philasande
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.model.entities.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get List Outcome Page</title>
    </head>
    <body>
        <h1>Get List outcome.</h1>
       <%
                List<Student> list = (List<Student>) request.getAttribute("list");
                Integer cnt = (Integer) request.getAttribute("cnt");
                Double lowestMark = (Double) request.getAttribute("lowestMark");
                Double highestMark = (Double) request.getAttribute("highestMark");
                Double avg = (Double) request.getAttribute("avgMark");
                Integer cntPassed = (Integer) request.getAttribute("cntPassed");
                Integer cntFailed = (Integer) request.getAttribute("cntFailed");
                Integer cntMale = (Integer) request.getAttribute("cntMale");
                Integer cntFemale = (Integer) request.getAttribute("cntFemale");
                Integer cntMalePassed = (Integer) request.getAttribute("cntMalesPassed");
                Integer cntFemalePassed = (Integer) request.getAttribute("cntFemalePassed");
                Integer cntMalesFailed = (Integer) request.getAttribute("cntMalesFailed");
                Integer cntFemaleFailed = (Integer) request.getAttribute("cntFemaleFailed");
        %>
       
        <table>
            <tr>
                <td>Number of student in the database is :</td>
                <td><b><%=cnt%></b></td>
            </tr>
            <tr>
                <td>Lowest number is :</td>
                <td><b><%=lowestMark%>%</b></td>
            </tr>
            <tr>
                <td>Highest number is :</td>
                <td><b><%=highestMark%>%</b></td>
            </tr>
            <tr>
                <td>Average number is :</td>
                <td><b><%=avg%>%</b></td>
            </tr>
            <tr>
                <td>Number of passed students :</td>
                <td><b><%=cntPassed%></b></td>
            </tr>
            <tr>
                <td>Number of failed students :</td>
                <td><b><%=cntFailed%></b></td>
            </tr>
             <tr>
                <td>Number of male students :</td>
                <td><b><%=cntMale%></b></td>
            </tr>
            <tr>
                <td>Number of females students :</td>
                <td><b><%=cntFemale%></b></td>
            </tr>
            <tr>
                <td>Number of males passed students :</td>
                <td><b><%=cntMalePassed%></b></td>
            </tr>
            <tr>
                <td>Number of females passed students :</td>
                <td><b><%=cntFemalePassed%></b></td>
            </tr>
            <tr>
                <td>Number of males failed students :</td>
                <td><b><%=cntMalesFailed%></b></td>
            </tr>
            <tr>
                <td>Number of females failed students :</td>
                <td><b><%=cntFemaleFailed%></b></td>
            </tr>
            
        </table>
            
            <p>
                Below is the class list:
            </p>
            <table>
            
            <%
                for(int i=0; i<list.size(); i++) {
                    Student stu = list.get(i);
                    Long id = stu.getId();
                    String name = stu.getFirstName();
                    String surname = stu.getLastName();
                    String gender = stu.getGender();
                    Integer age = stu.getAge();
                    Double percMarkObtained = stu.getPercMarkObtained();
            %>
            <tr>
                <td><b>ID :</b></td>
                <td><b><%=id%></b></td>
            </tr>
            <tr>
                <td>NAME :</td>
                <td><%=name%></td>
            </tr>
            <tr>
                <td>SURNAME :</td>
                <td><%=surname%></td>
            </tr>
            <tr>
                <td>GENDER :</td>
                <td><%=gender%></td>
            </tr>
            <tr>
                <td>AGE :</td>
                <td><%=age%></td>
            </tr>
            <tr>
                <td>Mark obtained :</td>
                <td><%=percMarkObtained%></td>
            </tr>
            <% } %>
        </table>
        <p>
            Please click <a href="menu.jsp">here</a> to go back on the menu page and <a href="index.html">here</a> to main page.
        </p>
    </body>
</html>
