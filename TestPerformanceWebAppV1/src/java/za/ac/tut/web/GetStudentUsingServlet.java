/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.ejb.bl.StudentFacadeLocal;
import za.ac.tut.model.entities.Student;

/**
 *
 * @author Philasande
 */
public class GetStudentUsingServlet extends HttpServlet {
@EJB
    private StudentFacadeLocal sfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        
        Student student =sfl.find(id);
        request.setAttribute("student", student);
        
        RequestDispatcher disp = request.getRequestDispatcher("get_student_using_id_outcome.jsp");
        disp.forward(request, response);
    }


}
