/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
public class GetStudentUsingAgeServlet extends HttpServlet {
@EJB
    private StudentFacadeLocal sfl;
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer minAge = Integer.parseInt(request.getParameter("minAge"));
        Integer maxAge = Integer.parseInt(request.getParameter("maxAge"));
        
        request.setAttribute("minAge", minAge);
        request.setAttribute("maxAge", maxAge);
        List<Student> list =sfl.findStudentsWithAgeRange(minAge, maxAge);
        request.setAttribute("list", list);
        
        RequestDispatcher disp = request.getRequestDispatcher("get_student_using_age_outcome.jsp");
        disp.forward(request, response);
    }

}
