package dao.custom.impl;

import dao.CrudUtil;
import dao.custom.UserDao;
import entity.User;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class UserDaoImpl implements UserDao {
    @Override
    public boolean save(User user) throws SQLException, ClassNotFoundException {
        return CrudUtil.execute("INSERT INTO user VALUES (?,?,?,?,?,?)",
                user.getEmail(),user.getFirst_name(),user.getLast_name(),
                user.getContact(),user.getPassword(),user.isActiveState()
        );
    }

    @Override
    public boolean update(User user) {
        return false;
    }

    @Override
    public boolean delete(String s) {
        return false;
    }

    @Override
    public User get(String s) {
        return null;
    }

    @Override
    public List<User> getAll() {
        return null;
    }

    @Override
    public String login(String email, String password) throws SQLException, ClassNotFoundException {
       // System.out.println(email + " | "+ password);
        ResultSet set = CrudUtil.execute("SELECT * from user where email =? and password =?",email,password);
        if(set.next()){
            return set.getString("email");
        }else{
            throw  new ClassNotFoundException();
        }
    }
}
