import br.com.reciclagemDev.UserDAO;
import br.com.reciclagemDev.User;
import br.com.reciclagemDev.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/loginUs")
public class LoginUsServlet extends HttpServlet {
    
    Usuario usuario = new Usuario();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("pages/Login.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("email");
        String senha = req.getParameter("senha");
        String nome = usuario.getNome();
        String sobrenome = usuario.getSobreNome();

        User user = new User(email, senha);

        boolean isValidUser = new UserDAO().verifyCredentials(user);

        if (isValidUser == true) {

            req.getSession().setAttribute("loggedUser", email);
            req.getSession().setAttribute("loggedUserPass", senha);
            req.getSession().setAttribute("nomeUser", nome);
            req.getSession().setAttribute("sobrenomeUser", sobrenome);

            resp.sendRedirect("pages/Usuario.jsp");

        } else {

            req.setAttribute("message", "Login inválido");

            req.getRequestDispatcher("pages/Login.jsp").forward(req, resp);

        }

    }
    
}