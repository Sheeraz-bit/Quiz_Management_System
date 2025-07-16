package dao;

import jakarta.persistence.*;
import util.JPAUtil;

import java.util.List;

import entity.Quiz;
import entity.Report;
import entity.Response;
import entity.Student;

public class Details {

    public static void quizDetails() {
    	EntityManager em = JPAUtil.getEntityManagerFactory().createEntityManager();
        List<Quiz> list = em.createQuery("FROM Quiz", Quiz.class).getResultList();
        System.out.println("Quiz Questions:");
        for (Quiz q : list) {
            System.out.println("[" + q.getQuizId() + "] " + q.getQuestion() + 
                " (Answer: " + q.getAnswer() + ")");
        }
        em.close();
    }

    public static void stuDetails() {
    	EntityManager em = JPAUtil.getEntityManagerFactory().createEntityManager();
        List<Student> list = em.createQuery("FROM Student", Student.class).getResultList();
        System.out.println(" Student Details:");
        for (Student s : list) {
            System.out.println("Roll No: " + s.getRollNo() + ", Name: " + s.getName());
        }
        em.close();
    }

    public static void repDetails() {
    	EntityManager em = JPAUtil.getEntityManagerFactory().createEntityManager();
        List<Report> list = em.createQuery("FROM Report", Report.class).getResultList();
        System.out.println(" Report:");
        for (Report r : list) {
            System.out.println("Student: " + r.getStudent().getName() + 
                ", Score: " + r.getMarks());
        }
        em.close();
    }

    public static void resDetails() {
    	EntityManager em = JPAUtil.getEntityManagerFactory().createEntityManager();
        List<Response> list = em.createQuery("FROM Response", Response.class).getResultList();
        System.out.println(" Student Responses:");
        for (Response r : list) {
            System.out.println("Student: " + r.getStudent().getName() + 
                ", Q: " + r.getQuiz().getQuestion() + 
                ", Ans: " + r.getAns() + 
                ", Correct: " + r.getQuiz().getAnswer());
        }
        em.close();
    }
}
