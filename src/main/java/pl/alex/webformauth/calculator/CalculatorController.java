package pl.alex.webformauth.calculator;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.HttpMethodConstraint;
import jakarta.servlet.annotation.ServletSecurity;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/calculator")
@ServletSecurity(
        httpMethodConstraints = {
                @HttpMethodConstraint(value = "POST",rolesAllowed = "admin")
        }
)
public class CalculatorController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        double firstValue = Double.parseDouble(req.getParameter("first"));
        double secondValue = Double.parseDouble(req.getParameter("second"));
        String operator = req.getParameter("operator");
        Result result = Calculator.calculate(firstValue,secondValue,operator);
        req.setAttribute("result",result);
        req.getRequestDispatcher("/WEB-INF/result.jsp").forward(req,resp);
    }
}
