package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Student;
import storage.StudentStorage;

import java.io.IOException;
import java.util.List;

@WebServlet("/students")
public class ListServlet extends HttpServlet {
    @Override
   protected void doGet(HttpServletRequest rq, HttpServletResponse rp)
            throws ServletException, IOException {
        List<Student> listStudents = StudentStorage.getAllStudents();
        rq.setAttribute("students", listStudents);
        rq.getRequestDispatcher("list.jsp").forward(rq, rp);
    }
}
