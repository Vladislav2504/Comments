package instagram.web.servlet;


import instagram.entity.Comment;
import instagram.service.CommentService;
import instagram.storage.InMemoryMessageStorage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet (value = "/cardHomePages")
public class CardHomePagesServlet extends HttpServlet {

    private  final CommentService commentService = new CommentService();
    private final InMemoryMessageStorage commentsStorage = new InMemoryMessageStorage();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getServletContext().getRequestDispatcher("/pages/cardHomePages.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Comment comment = new Comment();
        comment.setComment(req.getParameter("comments"));
        comment = commentService.commentUser(comment);
        List<Comment> comments = commentsStorage.getCommentsList();
        req.setAttribute("comments", comments);
        req.getServletContext().getRequestDispatcher("/pages/cardHomePages.jsp").forward(req, resp);
    }
}
