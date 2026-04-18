package Servlet;

import jakarta.servlet.ServletException;
import model.Student;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import storage.StudentStorage;

import java.io.IOException;

@WebServlet("/add")
public class AddServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest rq, HttpServletResponse rp) throws ServletException, IOException {
        rq.getRequestDispatcher("add.jsp").forward(rq, rp);
    }

    @Override
    protected void doPost(HttpServletRequest rq, HttpServletResponse rp) throws IOException {
        String name = rq.getParameter("name");
        int age = Integer.parseInt(rq.getParameter("age"));
        Student student = new Student(name, age);
        StudentStorage.addStudent(student);
        rp.sendRedirect("students");
    }
}
