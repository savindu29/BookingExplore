package bo;

import bo.custom.impl.UserBoImpl;


public class BoFactory {
    private static BoFactory boFactory;
    private BoFactory(){

    }
    public enum BoTYPE{
        USER
    }
    public static BoFactory getInstance(){
        if(boFactory==null){
            boFactory = new BoFactory();
            return boFactory;
        }
        return boFactory;
    }
    public  <T> T getBo(BoTYPE type){
        switch (type){
            case USER:return (T) new UserBoImpl();
            default:return null;
        }
    }
}
