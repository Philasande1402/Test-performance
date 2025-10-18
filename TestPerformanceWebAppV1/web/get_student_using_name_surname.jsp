<%-- 
    Document   : get_student_using_name_surname
    Created on : 13 Apr 2025, 1:32:48 AM
    Author     : Philasande
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Student Using Name AND Surname Page</title>
    </head>
    <body>
        <h1>Get student using name and surname</h1>
        <p>
            Please enter the name and surname of the student below.
        </p>
        <form action="GetStudentUsingNameSurname.do" method="POST">
            <table>
                <tr>
                    <td>Name :</td>
                    <td><input type="text" name="name"/></td>
                </tr>
                <tr>
                    <td>Surname :</td>
                    <td><input type="text" name="surname"/></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
