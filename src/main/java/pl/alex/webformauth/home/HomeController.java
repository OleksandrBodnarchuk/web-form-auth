package pl.alex.webformauth.home;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.HttpConstraint;
import jakarta.servlet.annotation.ServletSecurity;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.security.Principal;

@WebServlet("")
@ServletSecurity(
                @HttpConstraint(rolesAllowed = {"admin", "user"})
)
public class HomeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Principal principal = req.getUserPrincipal();
        System.out.println(principal.getName());
        System.out.println("ADMIN? :" + req.isUserInRole("admin"));
        System.out.println("USER? :" + req.isUserInRole("user"));
        req.getRequestDispatcher("/WEB-INF/index.jsp").forward(req, resp);
    }
}
