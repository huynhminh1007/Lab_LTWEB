import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email") == null? "" : req.getParameter("email");
        String password = req.getParameter("password") == null? "" : req.getParameter("password");

        if(isValidUser(email, password)) {
            resp.getWriter().println("Email: " + email);
            resp.getWriter().println("Password: " + password);
        }
        else {
            req.setAttribute("email", email);
            req.setAttribute("password", "");
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    private boolean isValidUser(String email, String password) {
        return "abc@gmail.com".equals(email) && "123456".equals(password);
    }
}
