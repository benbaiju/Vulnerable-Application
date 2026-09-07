package edu.deakin.sit738.ssrf;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class VulnerablePortController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");

        try (InputStream input = getServletContext()
                .getResourceAsStream("/WEB-INF/internal-config.txt");
             PrintWriter writer = response.getWriter()) {

            if (input == null) {
                response.sendError(HttpServletResponse.SC_NOT_FOUND,
                        "Internal file not found.");
                return;
            }

            String content = new String(
                    input.readAllBytes(),
                    StandardCharsets.UTF_8);

            writer.println(content);
        }
    }
}