package instagram.service;


import instagram.entity.Comment;
import instagram.storage.InMemoryMessageStorage;

public class CommentService {

    private final InMemoryMessageStorage messageStorage = new InMemoryMessageStorage();

    public Comment commentUser(Comment comment) {
        String comments = null;
        comment.getComment();
        comment.setResult(comments);
        messageStorage.save(comment);
        return comment;

    }

}
