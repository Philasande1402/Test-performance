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
public class AddServlet extends HttpServlet {
@EJB
    private StudentFacadeLocal sfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String gender = request.getParameter("gender");
        Integer age = Integer.parseInt(request.getParameter("age"));
        Double percMark =Double.parseDouble(request.getParameter("percMark"));
        
        Student student = createStudent(name,surname,gender,age,percMark,id);
        sfl.create(student);
        
        RequestDispatcher disp = request.getRequestDispatcher("add_outcome.jsp");
        disp.forward(request, response);
    }

    private Student createStudent(String name, String surname, String gender, Integer age, Double percMark, Long id) {
        Student student = new Student();
        student.setFirstName(name);
        student.setLastName(surname);
        student.setGender(gender);
        student.setAge(age);
        student.setPercMarkObtained(percMark);
        student.setId(id);
        
        return student;
    }
                
 
}
