/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.model.ejb.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.model.entities.Student;

/**
 *
 * @author Philasande
 */
@Local
public interface StudentFacadeLocal {

    void create(Student student);

    void edit(Student student);

    void remove(Student student);

    Student find(Object id);
    Student find(String firstName,String lastName);
    
    List<Student> findAll();
    Integer cntAllMaleStudents();
    Integer cntAllFemaleStudents();
    Integer cntAllPassedStudents();
    Integer cntAllFailedStudents();
    Integer cntAllPassedMaleStudents();
    Integer cntAllPassedFemaleStudents();
    Integer cntAllFailedMaleStudents();
    Integer cntAllFailedFemaleStudents();
    List<Student> findStudentsWithAgeRange(Integer minAge,Integer maxAge);

    List<Student> findRange(int[] range);
    Double getHighestMark();
    Double getLowestMark();
    Double getAvgMark();

    int count();
    
}
