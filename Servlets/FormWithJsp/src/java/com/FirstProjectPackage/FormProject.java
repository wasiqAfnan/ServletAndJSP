
package com.FirstProjectPackage;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import java.io.*;


/**
 *
 * @author afnan
 */
public class FormProject extends HttpServlet{
    // over riding post method as form data comes in post method
    @Override
    public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
        // getting form data which is entered by the user in the html form
        String name = req.getParameter("std_name");
        String roll = req.getParameter("std_roll");
        String email = req.getParameter("std_email");
        String gender = req.getParameter("std_gender");
        String course = req.getParameter("std_course");
        String condition = req.getParameter("condition");
        
        // Printing user data which we get in the form
        // setting content type
        res.setContentType("text/html");
        // creating writer object which helps to write in html page
        PrintWriter out = res.getWriter();
        // writing data into the page entered by the user in the form
        if(condition != null && name != "" && roll != "" && email != "" && gender != null && course != ""){
            out.println("Name: "+name+"<br>");
            out.println("Roll: "+roll+"<br>");
            out.println("Email: "+email+"<br>");
            out.println("Gender: "+gender+"<br>");
            out.println("Course: "+course+"<br>");
        }
        else{
            out.println("<h1>Please Tick on the checkbox and fill all the fields in the form</h1>");
            out.println("<h3><a href='index.html'>click here to go back</a></h3>");
        }
    }
}
