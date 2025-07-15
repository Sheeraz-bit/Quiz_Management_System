package dao;

import entity.Quiz;
import entity.Student;
import entity.Report;
import entity.Response;
import jakarta.persistence.*;
import util.JPAUtil;
import java.util.*;

public class ExamServices {

    public static Scanner sc=new Scanner(System.in);

    public static void insertQuiz() {
    	EntityManager em = JPAUtil.getEntityManagerFactory().createEntityManager();

        try {
            System.out.print("Enter question: ");
            sc.nextLine();
            String question = sc.nextLine();

            System.out.print("Enter option A: ");
            String a = sc.nextLine();

            System.out.print("Enter option B: ");
            String b = sc.nextLine();

            System.out.print("Enter option C: ");
            String c = sc.nextLine();

            System.out.print("Enter option D: ");
            String d = sc.nextLine();

            System.out.print("Enter correct answer (A/B/C/D): ");
            String ans = sc.next().toUpperCase();

            Quiz quiz = new Quiz();
            quiz.setQuestion(question);
            quiz.setOptA(a);
            quiz.setOptB(b);
            quiz.setOptC(c);
            quiz.setOptD(d);
            quiz.setAnswer(ans);

            em.getTransaction().begin();
            em.persist(quiz);
            em.getTransaction().commit();

            System.out.println("Quiz question inserted successfully!");

        } catch (Exception e) {
            System.out.println("Error while inserting quiz: " + e.getMessage());
            e.printStackTrace();
        } finally {
            em.close();
        }
    }// insert quiz close

    public static void startExam() {
    	EntityManager em = JPAUtil.getEntityManagerFactory().createEntityManager();


        try {
            System.out.print("Enter Roll Number: ");
            int roll = sc.nextInt();
            sc.nextLine();

            System.out.print("Enter Name: ");
            String name = sc.nextLine();

            Student stu = new Student();
            stu.setRollNo(roll);
            stu.setName(name);

            em.getTransaction().begin();
            em.persist(stu);
            em.getTransaction().commit();

            TypedQuery<Quiz> query = em.createQuery("SELECT q FROM Quiz q ORDER BY function('RANDOM')", Quiz.class);
            query.setMaxResults(10);
            List<Quiz> quizList = query.getResultList();

            int score = 0;

            Report rep = new Report();
            rep.setStudent(stu);
            rep.setMarks(0); // initially 0
            em.getTransaction().begin();
            em.persist(rep);
            em.getTransaction().commit();

            for (Quiz q : quizList) {
                System.out.println("\nQ: " + q.getQuestion());
                System.out.println("A. " + q.getOptA());
                System.out.println("B. " + q.getOptB());
                System.out.println("C. " + q.getOptC());
                System.out.println("D. " + q.getOptD());
                System.out.print("Your answer (A/B/C/D): ");
                String userAns = sc.next().toUpperCase();

                Response res = new Response();
                res.setStudent(stu);
                res.setReport(rep);
                res.setQuiz(q);
                res.setAns(userAns);

                em.getTransaction().begin();
                em.persist(res);
                em.getTransaction().commit();

                if (userAns.equalsIgnoreCase(q.getAnswer())) {
                    score++;
                }
            }

            em.getTransaction().begin();
            rep.setMarks(score);
            em.merge(rep);
            em.getTransaction().commit();

            System.out.println("Quiz Completed! Your Score: " + score + " / 10");

        } catch (Exception e) {
            System.out.println("Error during quiz: " + e.getMessage());
            e.printStackTrace();
        } finally {
            em.close();
        }
    }// start exam close
}
