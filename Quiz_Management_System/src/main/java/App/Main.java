package App;

import java.util.*;

import dao.*;
import jakarta.persistence.*;
import util.JPAUtil;
public class Main {
    
	public static EntityManagerFactory q = Persistence.createEntityManagerFactory("quiz");

	public static Scanner sc = new Scanner(System.in);
	public static void main(String[] args) {

		
		int choice;
		try {
        do {
            System.out.println("\n===== Quiz Menu =====");
            System.out.println("1. Start Quiz");
            System.out.println("2. Details");
            System.out.println("3. Exit");
            System.out.print("Enter choice: ");
            
            // Input check
            while (!sc.hasNextInt()) {
            	System.out.print("Invalid input. Enter number: ");
                sc.next();
            }

            choice = sc.nextInt();

            switch (choice) {
                case 1 -> ExamServices.startExam();
                case 2 -> Details.repDetails();
                case 1234 -> devOption();
                case 3 -> System.out.println("Exiting the application...");
                default -> System.out.println("Invalid choice. Please try again.");
            }

        } while (choice != 3);

        JPAUtil.shutdown();
        sc.close();
		}catch(Exception e){e.printStackTrace();}
	}// void main close
	
	
	public static void devOption() {
		System.out.println("===== Developer Menu =====");
        System.out.println("1. Insert Quiz");
        System.out.println("2. View All Detaills");
        System.out.println("3. Back To Main Menu");
        System.out.print("Enter choice: ");
        while (!sc.hasNextInt()) {
        	System.out.print("Invalid input. Enter number: ");
            sc.next();
        }
        int choice = sc.nextInt();

        switch (choice) {
            case 1 -> ExamServices.insertQuiz();
            case 2 -> devDetails();
            case 3 -> { return; }
            default -> System.out.println("Invalid choice. Please try again.");
        }
	}// developer optiion close
	
	
	public static void devDetails() {
		System.out.println("1. Student Details");
		System.out.println("2. Student Report");
		System.out.println("3. Student Response");
        System.out.println("4. Quizs");
        System.out.println("5. back");
        System.out.print("Enter choice: ");
        while (!sc.hasNextInt()) {
        	System.out.print("Invalid input. Enter number: ");
            sc.next();
        }
        int choice = sc.nextInt();

        switch (choice) {
            case 1 -> Details.stuDetails();
            case 2 -> Details.repDetails();
            case 3 -> Details.resDetails();
            case 4 -> Details.quizDetails();
            case 5 -> { return; }
            default -> System.out.println("Invalid choice. Please try again.");
        }
	}// developer details close

}// Main class close
