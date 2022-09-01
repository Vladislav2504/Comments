package instagram.web.servlet;



import instagram.entity.Message;
import instagram.entity.User;
import instagram.service.CommentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet (value = "/cardHomePages")
public class CardHomePagesServlet extends HttpServlet {

    private  final CommentService commentService = new CommentService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

       String commentUser = req.getParameter("commentUser");
        User user = (User) req.getSession().getAttribute("currentUser");
        Message message = commentService.commentsCard(user, commentUser);
        req.setAttribute("message", message);
        req.getRequestDispatcher("/pages/cardHomePages.jsp").forward(req, resp);
    }


}
