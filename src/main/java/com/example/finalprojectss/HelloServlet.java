package com.example.finalprojectss;

import Model.College;
import Model.SemesterDetails;
import PasswordHashing.PasswordHashing;
import Service.UserService;

import java.io.*;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", urlPatterns = "/user")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");

        String page = req.getParameter("page");


//        RequestDispatcher rd = req.getRequestDispatcher("");


        if (page.equalsIgnoreCase("newUsers")) {

            College college = new College();

            college.setUserName(req.getParameter("userName"));
            college.setEmail(req.getParameter("email"));
            college.setPassword(PasswordHashing.main(req.getParameter("password")));
            new UserService().insertUser(college);
//            System.out.println("Inserted: ");

            RequestDispatcher requestDispatcher = req.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(req, resp);


        }


        if (page.equalsIgnoreCase("register")) {
            RequestDispatcher requestDispatch = req.getRequestDispatcher("register.jsp");
            requestDispatch.forward(req, resp);
        }

        if (page.equalsIgnoreCase("BackLogin")){
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(req,resp);

        }
//
//        if (page.equalsIgnoreCase("index")) {
//            RequestDispatcher requestDispatch = req.getRequestDispatcher("index.jsp");
//            requestDispatch.forward(req, resp);
//    }
//        if (page.equalsIgnoreCase("Userdetails")) {
//
//            int id = Integer.parseInt(req.getParameter("id"));
//
//            College college = new UserService().getRow(id);
//
//            req.setAttribute("college", college);
//
//            RequestDispatcher requestDispatch = req.getRequestDispatcher("Userdetails.jsp");
//            requestDispatch.forward(req, resp);
//        }

//        if (page.equalsIgnoreCase("UserEdit")){
//            int id = Integer.parseInt(req.getParameter("id"));
//            College college = new UserService().getRow(id);
//            req.setAttribute("college",college);
//            RequestDispatcher requestDispatcher = req.getRequestDispatcher("UserEdit.jsp");
//            requestDispatcher.forward(req, resp);
//
//        }

        if (page.equalsIgnoreCase("login")) {
            String email = req.getParameter("email");
            String password = PasswordHashing.main(req.getParameter("password"));

            College college = new UserService().loginUser(email, password);
            SemesterDetails semesterDetails = new SemesterDetails();

            List<SemesterDetails> semesterDetailsList = new UserService().semesterList();
//            SemesterDetails semesterDetails = new UserService().semesterList();
//            System.out.println("value reach here");
            req.setAttribute("semesterList", semesterDetailsList);
            System.out.println("the semesterdetailslist is "+ semesterDetailsList);
            req.setAttribute("semesters", semesterDetails);
            System.out.println("the semesterdetailslist is "+ semesterDetails);

            if (college != null) {
                HttpSession session1 = req.getSession();
                session1.setAttribute("users", college);

//                session.setAttribute("semesterlist",semesterDetails);
//                req.setAttribute("semesterDetailsList", semesterDetailsList);
                req.setAttribute("college", college);
                RequestDispatcher requestDispatch = req.getRequestDispatcher("dash.jsp");
                requestDispatch.forward(req, resp);

            } else {
                RequestDispatcher requestDispatch = req.getRequestDispatcher("register.jsp");
                requestDispatch.include(req, resp);
            }
        }

        if (page.equalsIgnoreCase("atten")){


            HttpSession session = req.getSession();
            Model.College college = (Model.College) session.getAttribute("users");
            String collegeString = college.toString();
            req.setAttribute("college", collegeString);

            System.out.println("the list is "+ college);
            req.setAttribute("college",college);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("dash.jsp");
            requestDispatcher.forward(req, resp);
        }
        if (page.equalsIgnoreCase("attenlist")){
            HttpSession session = req.getSession();
            Model.College college = (Model.College) session.getAttribute("users");
            String collegeString = college.toString();
            req.setAttribute("college", collegeString);

            System.out.println("the list is "+ college);
            req.setAttribute("college",college);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("AttendanceList.jsp");
            requestDispatcher.forward(req, resp);
        }
//        if (page.equalsIgnoreCase("addclass")){
////            System.out.println("add class here");
//            RequestDispatcher requestDispatcher = req.getRequestDispatcher("AddClass.jsp");
//            requestDispatcher.forward(req, resp);
//        }
        if (page.equalsIgnoreCase("addmem")){
            HttpSession session = req.getSession();
            Model.College college = (Model.College) session.getAttribute("users");
            String collegeString = college.toString();
            req.setAttribute("college", collegeString);

            System.out.println("the list is "+ college);
            req.setAttribute("college",college);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("AddMember.jsp");
            requestDispatcher.forward(req, resp);
        }
        if (page.equalsIgnoreCase("update")){
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("UpdateClass.jsp");
            requestDispatcher.forward(req, resp);
        }
//        if (page.equalsIgnoreCase("log")){
//            RequestDispatcher requestDispatcher = req.getRequestDispatcher("AddMember.jsp");
//            requestDispatcher.forward(req, resp);
//        }

        if (page.equalsIgnoreCase("addmember")){
            SemesterDetails semesterDetails = new SemesterDetails();
            semesterDetails.setSemester(req.getParameter("value1"));
            semesterDetails.setSection(req.getParameter("section"));
            semesterDetails.setUsername(req.getParameter("sname"));
            semesterDetails.setContact(Integer.parseInt(req.getParameter("cnumber")));
            semesterDetails.setEmail(req.getParameter("semail"));

            new UserService().AddMember(semesterDetails);

            RequestDispatcher requestDispatcher = req.getRequestDispatcher("AddMember.jsp");
            requestDispatcher.forward(req, resp);

        }

        if (page.equalsIgnoreCase("class")){
            SemesterDetails semesterDetails = new SemesterDetails();
            String semester = req.getParameter("sname");

            String[] selectdata = req.getParameterValues("selectdata[]");

//            String section = req.getParameter("cnumber");

                new UserService().AddClass(semester, selectdata);

            RequestDispatcher requestDispatcher = req.getRequestDispatcher("AddMember.jsp");
            requestDispatcher.forward(req, resp);
        }



        if (page.equalsIgnoreCase("addclass")) {

//            SemesterDetails semDetails = new SemesterDetails();
            HttpSession session = req.getSession();
            Model.College college = (Model.College) session.getAttribute("users");
            String collegeString = college.toString();
            req.setAttribute("college", collegeString);

//            System.out.println("the list is "+ college);
            req.setAttribute("college",college);

            SemesterDetails semesterDetails = new SemesterDetails();
            List<SemesterDetails> semesterDetailsList = new UserService().getUserList();

            req.setAttribute("semesterDetailsList", semesterDetailsList);
            req.setAttribute("semesterDetails", semesterDetails);

            RequestDispatcher requestDispatch = req.getRequestDispatcher("AddClass.jsp");
            requestDispatch.forward(req, resp);
        }
//
//        if (page.equalsIgnoreCase("userDetails")) {
//
//            int id = Integer.parseInt(req.getParameter("id"));
//
//            College college = new UserService().getRow(id);
//
//            req.setAttribute("college", college);
//
//            RequestDispatcher requestDispatch = req.getRequestDispatcher("Userdetails.jsp");
//            requestDispatch.forward(req, resp);
//        }
//
//        if (page.equalsIgnoreCase("deleteUser")) {
//            int id = Integer.parseInt(req.getParameter("id"));
//            new UserService().deleteUser(id);
//
//            List<College> collegeList = new UserService().getUserList();
//            req.setAttribute("collegeList", collegeList);
//
//            RequestDispatcher requestDispatch = req.getRequestDispatcher("userList.jsp");
//            requestDispatch.forward(req, resp);
//
//        }
//        if (page.equalsIgnoreCase("userEdit")) {
//
//            int id = Integer.parseInt(req.getParameter("id"));
//            College college = new UserService().getRow(id);
//            req.setAttribute("college", college);
//            req.setAttribute("id", id);
//
//            RequestDispatcher requestDispatch = req.getRequestDispatcher("UserEdit.jsp");
//            requestDispatch.forward(req, resp);
//        }

//        if (page.equalsIgnoreCase("editUser")) {
//
//            int id = Integer.parseInt(req.getParameter("id"));
//            College college = new College();
//            college.setUserName(req.getParameter("userName"));
//            college.setPassword(req.getParameter("password"));
//            college.setLocation(req.getParameter("location"));
//
//            try {
//                new UserService().editUser(id, college);
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }
//
//            List<College> collegeList = new UserService().getUserList();
//            req.setAttribute("collegeList", collegeList);
//
//            RequestDispatcher requestDispatch = req.getRequestDispatcher("userList.jsp");
//            requestDispatch.forward(req, resp);
//
//        }
//
//        if(page.equalsIgnoreCase("logout")){
//            HttpSession session = req.getSession(false);
//            session.invalidate();
//
//            RequestDispatcher requestDispatch = req.getRequestDispatcher("index.jsp");
//            requestDispatch.forward(req, resp);
//        }
//
//        if (page.equalsIgnoreCase("adduser")) {
//
//            int id = Integer.parseInt(req.getParameter("id"));
//            College college = new UserService().getRow(id);
//            req.setAttribute("college", college);
//            req.setAttribute("id", id);
//
//            List<College> collegeList = new UserService().getUserList();
//            req.setAttribute("collegeList", collegeList);
//
//            RequestDispatcher requestDispatch = req.getRequestDispatcher("userList.jsp");
//            requestDispatch.forward(req, resp);
//
//        }
//
//        if (page.equalsIgnoreCase("adduser")) {
//
//            College college = new College();
//
//            college.setUserName(req.getParameter("userName"));
//            college.setPassword(PasswordHashing.main(req.getParameter("password")));
//            college.setLocation(req.getParameter("location"));
//            new UserService().insertUser(college);
//            System.out.println("Inserted: ");
//
//            RequestDispatcher requestDispatcher = req.getRequestDispatcher("dash.jsp");
//            requestDispatcher.forward(req, resp);
//
//
//        }

    }

    public void destroy() {
    }
}