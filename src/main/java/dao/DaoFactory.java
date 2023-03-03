package dao;

import dao.custom.impl.UserDaoImpl;

public class DaoFactory {
    private  static DaoFactory daoFactory;
    private DaoFactory(){

    }
    public enum DaoTYPE{
        USER
    }
    public static DaoFactory getInstance(){
        if(daoFactory==null){
            daoFactory = new DaoFactory();
            return daoFactory;
        }
        return daoFactory;
    }
    public  <T> T getDao(DaoTYPE type){
        switch (type){
            case USER:return (T) new UserDaoImpl();
            default:return null;
        }
    }
}
