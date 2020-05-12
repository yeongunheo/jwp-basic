package next.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import core.db.DataBase;
import next.model.User;

@WebServlet("/users/updateForm")
public class UpdateUserFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateUserFormServlet() {
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userId = req.getParameter("userId");
		User user = DataBase.findUserById(userId);
		req.setAttribute("user", user);
		RequestDispatcher rd = req.getRequestDispatcher("/user/update.jsp");
        rd.forward(req, resp);
	}
}
