package instagram.service;



import instagram.entity.Message;
import instagram.entity.User;
import instagram.storage.InMemoryMessageStorage;
import instagram.storage.InMemoryUserStorage;

public class CommentService {

    private final InMemoryMessageStorage messageStorage = new InMemoryMessageStorage();
    private final InMemoryUserStorage userStorage = new InMemoryUserStorage();

    public Message commentsCard(User user, String commentUser) {
        Message comments = new Message();
        for (Message m : user.getUserMessage()) {
            if (m.getMessage().toString().equals(commentUser)) {
                comments = m;
            }
        }

        return comments;
    }

}
