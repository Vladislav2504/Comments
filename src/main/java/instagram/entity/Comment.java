package instagram.entity;

public class Comment {

    private String comment;
    private long idComment;
    private String result;

    public Comment() {

    }

    public Comment(String comment, long idComment, String result) {
        this.comment = comment;
        this.idComment = idComment;
        this.result = result;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public long getIdComment() {
        return idComment;
    }

    public void setIdComment(long idComment) {
        this.idComment = idComment;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }



}
