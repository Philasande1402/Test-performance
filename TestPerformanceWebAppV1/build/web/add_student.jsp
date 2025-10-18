<%-- 
    Document   : add_student
    Created on : 13 Apr 2025, 1:18:03 AM
    Author     : Philasande
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student Page</title>
    </head>
    <body>
        <h1>Add student</h1>
        <p>
            Please add student details below:
        </p>
        <form action="AddServlet.do" method="POST">
            <table>
                <tr>
                    <td>Student number :</td>
                    <td><input type="text" name="id"/></td>
                </tr>
                
                <tr>
                    <td>Name :</td>
                    <td><input type="text" name="name"/></td>
                </tr>
                
                <tr>
                    <td>Surname :</td>
                    <td><input type="text" name="surname"/></td>
                </tr>
                
                <tr>
                    <td>Age :</td>
                    <td><input type="text" name="age"/></td>
                </tr>
                
                <tr>
                    <td>Gender :</td>
                    <td>
                        <select name="gender">
                            <option value="F">Female</option>
                            <option value="M">Male</option>
                        </select>
                    </td>
                </tr>
                
                <tr>
                    <td>Mark obtained :</td>
                    <td><input type="text" name="percMark"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="ADD STUDENT"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
