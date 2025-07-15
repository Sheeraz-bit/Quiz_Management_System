# 🎓 Java Quiz Management System (Console App)

A **menu-driven** Java console application that allows students to take quizzes and view results, while developers can insert questions and view data. Built with **Maven**, **Hibernate 7.x (JPA)**, and **PostgreSQL**.

---

## 📦 Tech Stack

- **Java 17+**
- **Hibernate 7.x (JPA)**
- **PostgreSQL**
- **Maven**
- **Jakarta Persistence API**

---

## 📁 Project Structure

src/
├── App/
│ └── Main.java
├── dao/
│ ├── ExamServices.java
│ └── Details.java
├── entity/
│ ├── Quiz.java
│ ├── Student.java
│ ├── Report.java
│ └── Response.java
├── util/
│ └── JPAUtil.java
resources/
└── META-INF/
└── persistence.xml

---

## 🧑‍💻 Features

### 👨‍🎓 Student
- Start a quiz (10 random questions)
- Answer questions and get score
- Auto-save responses and report

### 👨‍💼 Developer
- Insert quiz questions
- View all students, reports, responses, and quizzes

---

## 🗄️ Database Tables

- `quiz (quiz_id, question, opt_a, opt_b, opt_c, opt_d, answer)`
- `student (stu_id, roll_no, name)`
- `report (report_id, stu_id, marks)`
- `responce (res_id, report_id, stu_id, quiz_id, ans)`

---

## Group Members
### Superwiser:

- Name: Jaywanta Kawale
- Phone: 7028089058
- Email: jaywanta98@gmail.com

### Github Manager:

- Name: Shaikh Masum 
- Phone: 8830597819
- Email: shaikhmasum319051@gmail.com

### Programer: (Group Leader)

- Name: Abdul Nabi Sheeraz
- Phone: 9022009241
- Email: sheeraz842122@gmail.com

### Debugger:

- Name: Pathan Faizan
- Phone: 8767025292
- Email: pathanfaizan8767@gmail.com
