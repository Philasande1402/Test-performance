/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.model.ejb.bl;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import za.ac.tut.model.entities.Student;

/**
 *
 * @author Philasande
 */
@Stateless
public class StudentFacade extends AbstractFacade<Student> implements StudentFacadeLocal {

    @PersistenceContext(unitName = "TestPerformanceEJBModuleV1PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public StudentFacade() {
        super(Student.class);
    }

    @Override
    public Student find(String firstName, String lastName) {
        TypedQuery<Student> query =em.createQuery("SELECT s FROM Student s WHERE s.firstName = :firstName AND s.lastName = :lastName",Student.class);
        query.setParameter("firstName", firstName);
        query.setParameter("lastName", lastName);
        List<Student> results = query.getResultList();
        return results.isEmpty() ? null : results.get(0);
    }

    @Override
    public Integer cntAllMaleStudents() {
        Query query = em.createQuery("SELECT COUNT(s) FROM Student s WHERE s.gender ='M'");
        Long cnt = (Long)query.getSingleResult();
        return cnt.intValue();
    }

    @Override
    public Integer cntAllFemaleStudents() {
        Query query =em.createQuery("SELECT COUNT(s) FROM Student s WHERE s.gender ='F'");
        Long cnt= (Long)query.getSingleResult();
        return cnt.intValue();
    }

    @Override
    public Integer cntAllPassedStudents() {
        Query query =em.createQuery("SELECT COUNT(s) FROM Student s WHERE s.percMarkObtained>=50.0");
        Long cnt = (Long)query.getSingleResult();
        return cnt.intValue();
    }

    @Override
    public Integer cntAllFailedStudents() {
        Query query =em.createQuery("SELECT COUNT(s) FROM Student s WHERE s.percMarkObtained<50.0");
        Long cnt = (Long)query.getSingleResult();
        return cnt.intValue();
    }

    @Override
    public Integer cntAllPassedMaleStudents() {
        Query query =em.createQuery("SELECT COUNT(s) FROM Student s WHERE s.percMarkObtained>=50.0 AND s.gender ='M'");
        Long cnt =(Long)query.getSingleResult();
        return cnt.intValue();
    }

    @Override
    public Integer cntAllPassedFemaleStudents() {
        Query query =em.createQuery("SELECT COUNT(s) FROM Student s WHERE s.percMarkObtained>=50.0 AND s.gender ='F'");
        Long cnt =(Long)query.getSingleResult();
        return cnt.intValue();
    }

    @Override
    public Integer cntAllFailedMaleStudents() {
        Query query =em.createQuery("SELECT COUNT(s) FROM Student s WHERE s.percMarkObtained < 50.0 AND s.gender= 'M'");
        Long cnt =(Long)query.getSingleResult();
        return cnt.intValue();
    }

    @Override
    public Integer cntAllFailedFemaleStudents() {
        Query query =em.createQuery("SELECT COUNT(s) FROM Student s WHERE s.percMarkObtained < 50.0 AND s.gender = 'F'");
        Long cnt = (Long) query.getSingleResult();
        return cnt.intValue();
    }

    @Override
    public List<Student> findStudentsWithAgeRange(Integer minAge, Integer maxAge) {
        Query query =em.createQuery("SELECT s FROM Student s WHERE s.age >= :targetMinAge AND s.age <= :targetMaxAge",Student.class);
        query.setParameter("targetMinAge",minAge);
        query.setParameter("targetMaxAge", maxAge);
        return query.getResultList();
    }

    @Override
    public Double getHighestMark() {
        Query query = em.createQuery("SELECT MAX(s.percMarkObtained) FROM Student s");
        Double cnt = (Double) query.getSingleResult();
        return cnt;
    }

    @Override
    public Double getLowestMark() {
        Query query =em.createQuery("SELECT MIN(s.percMarkObtained) FROM Student s");
        Double cnt =(Double) query.getSingleResult();
        return cnt;
    }

    @Override
    public Double getAvgMark() {
        Query query =em.createQuery("SELECT AVG(s.percMarkObtained) FROM Student s");
        Double cnt = (Double) query.getSingleResult();
        return cnt;
    }
    
}
