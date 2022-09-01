package instagram.storage;


import instagram.entity.Message;

import java.util.ArrayList;
import java.util.HashMap;

import java.util.List;
import java.util.Map;


public class InMemoryMessageStorage {
	private static final List<Message> messageOperations = new ArrayList<>();

	public void save(Message messageOperation){
		messageOperations.add(messageOperation);
	}

	public static final HashMap<String, Message> MapOperations = new HashMap<>((Map) messageOperations);



}
