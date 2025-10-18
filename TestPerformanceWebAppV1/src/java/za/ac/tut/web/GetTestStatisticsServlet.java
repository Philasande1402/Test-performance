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
public class GetTestStatisticsServlet extends HttpServlet {
@EJB
    private StudentFacadeLocal sfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Student> list = sfl.findAll();
        Integer cnt =sfl.count();
        Double lowestMark =sfl.getLowestMark();
        Double highestMark =sfl.getHighestMark();
        Double avgMark =sfl.getAvgMark();
        Integer cntPassed =sfl.cntAllPassedStudents();
        Integer cntFailed =sfl.cntAllFailedStudents();
        Integer cntMale =sfl.cntAllMaleStudents();
        Integer cntFemale =sfl.cntAllFemaleStudents();
        Integer cntMalesPassed =sfl.cntAllPassedMaleStudents();
        Integer cntFemalePassed =sfl.cntAllPassedFemaleStudents();
        Integer cntMalesFailed =sfl.cntAllFailedMaleStudents();
        Integer cntFemaleFailed =sfl.cntAllFailedFemaleStudents();
        
        request.setAttribute("list", list);
        request.setAttribute("cnt", cnt);
        request.setAttribute("lowestMark", lowestMark);
        request.setAttribute("highestMark", highestMark);
        request.setAttribute("avgMark", avgMark);
        request.setAttribute("cntPassed", cntPassed);
        request.setAttribute("cntFailed", cntFailed);
        request.setAttribute("cntMale", cntMale);
        request.setAttribute("cntFemale", cntFemale);
        request.setAttribute("cntMalesPassed", cntMalesPassed);
        request.setAttribute("cntFemalePassed", cntFemalePassed);
        request.setAttribute("cntMalesFailed", cntMalesFailed);
        request.setAttribute("cntFemaleFailed", cntFemaleFailed);
         
        RequestDispatcher disp = request.getRequestDispatcher("get_test_statistics_outcome.jsp");
        disp.forward(request, response);
    }

}
