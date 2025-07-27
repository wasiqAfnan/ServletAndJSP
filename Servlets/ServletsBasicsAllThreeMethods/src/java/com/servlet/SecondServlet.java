
package com.servlet;
import jakarta.servlet.*;
import java.io.*;

/**
 * @author afnan
 * In this program we are not implementing Servlet but instead we Extend a GenericServlet class
 * GenericServlet class inturn implements Servlet and override 4 methods
 * so if we extend GenericServlet class we don't have to override all 5 methods but we only need
 * to override 1 method which is service()
 * it became very easy to create servlet if we extend GenericServlet
 */
public class SecondServlet extends GenericServlet{
    @Override
    public void service(ServletRequest req, ServletResponse res)throws ServletException,IOException{
        System.out.println("Running");
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("<h2>This is my scond servlet which we create by extending GenricServlet Class</h2>");
    }
}
