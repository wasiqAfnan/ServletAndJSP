package com.servlet;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import java.io.IOException;
import jakarta.servlet.*;
import java.io.PrintWriter;

/**
 *  @author afnan
 * 
 * We are implementing Servlet using Servlet interface.
 * Servlet interface has 5 methods that we have to override.
 * life cycle method {init(),service(),destroy()} 
 * and 2 non-life cycle mehtods {getServletConfig(),getServletInfo()}
 */
public class FirstServlet implements Servlet{
    
    // Life cycle methods
    ServletConfig conf;
    public void init(ServletConfig conf){
        this.conf = conf;
        System.out.println("Started....");
    }
    
    public void service(ServletRequest req,ServletResponse res)throws ServletException,IOException{
           System.out.println("Running...");
           res.setContentType("text/html");
           PrintWriter out = res.getWriter();
           out.print("<h3>Hey there This is my first Servlet Output</h3>");
           
    }
    
    public void destroy(){
        System.out.println("Destroying....");
    }
    
    // Non-Life cycle methods
    
    public ServletConfig getServletConfig(){
        return this.conf;
    }
    
    public String getServletInfo(){
        return "My first Servlet by afnan";
    }
    
}
