package advices;

public class UnAuthorizedException extends Exception{
    public UnAuthorizedException(String message){
        super(message);
    }

}