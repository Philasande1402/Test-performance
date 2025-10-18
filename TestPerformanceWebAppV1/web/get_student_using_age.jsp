<%-- 
    Document   : get_student_using_age
    Created on : 13 Apr 2025, 1:37:13 AM
    Author     : Philasande
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get student using age Page</title>
    </head>
    <body>
        <h1>Get student using age.</h1>
        <p>
            Please enter the age values of the student below.
        </p>
        <form action="GetStudentUsingAgeServlet.do" method="POST">
            <table>
                <tr>
                    <td>Minimum AGE :</td>
                    <td><input type="text" name="minAge"/></td>
                </tr>
                
                <tr>
                    <td>Maximum AGE :</td>
                    <td><input type="text" name="maxAge"/></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
