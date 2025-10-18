<%-- 
    Document   : get_student_using_id
    Created on : 13 Apr 2025, 1:29:00 AM
    Author     : Philasande
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Student Using ID Page</title>
    </head>
    <body>
        <h1>Get student using id</h1>
        <p>
            Please enter the ID of the student below.
        </p>
        <form action="GetStudentUsingServlet.do" method="POST">
            <table>
                <tr>
                    <td>ID :</td>
                    <td><input type="text" name="id"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
