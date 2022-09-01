package instagram.entity;

public class Message {

    private String message;
    private String result;



    public Message() {

    }

    public Message(String message, String result) {
        this.message = message;
        this.result = result;
    }

    public String getMessage() {
        return message;
    }

    public  void setMessage(String message) {
        this.message = message;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }



    @Override
    public String toString() {
        return "Comments {" +
                "message='" + message + '\'' +
                ", result='" + result + '\'' +
                '}';
    }
}
