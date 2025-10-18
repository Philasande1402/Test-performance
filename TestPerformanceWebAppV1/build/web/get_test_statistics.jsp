<%-- 
    Document   : get_test_statistics
    Created on : 13 Apr 2025, 1:25:34 AM
    Author     : Philasande
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Test Statistics Page</title>
    </head>
    <body>
        <h1>Get test statistics</h1>
        <p>
            Please click on the button below to get test statistics.
        </p>
        <form action="GetTestStatisticsServlet.do" method="POST">
            <table>
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET TEST STATISTICS"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
