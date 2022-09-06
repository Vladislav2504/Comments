package instagram.storage;




import instagram.entity.Comment;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class InMemoryMessageStorage {
	private final List<Comment> commentsList = new ArrayList<>();

	public void save(Comment comment){
		commentsList.add(comment);
	}

	public List<Comment> getCommentsList() {
		return commentsList;
	}

	public static final Map<String, List<Comment>> MapOperations = new HashMap<>();



}
