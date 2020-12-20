package ru.flendger.jee.demo.servlets;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "FirstServlet", urlPatterns = "/hello")
public class FirstServlet extends HttpServlet {

    private static final Logger logger = LoggerFactory.getLogger(FirstServlet.class);

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        logger.info("send txt to client");
        resp.getWriter().println("<h1>Hello world!!!</h1>");
    }
}
