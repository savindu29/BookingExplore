package dao.custom;

import dao.CrudDao;
import entity.User;

import java.sql.SQLException;

public interface UserDao extends CrudDao<User,String> {
    public String login(String email,String password) throws SQLException, ClassNotFoundException;
}
