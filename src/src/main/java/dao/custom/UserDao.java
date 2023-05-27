package dao.custom;

import advices.UnAuthorizedException;
import dao.CrudDao;


import dto.response.LoginResponseDto;
import entity.User;

import java.sql.SQLException;

public interface UserDao extends CrudDao<User,String> {
    public LoginResponseDto login(String email, String password) throws SQLException, ClassNotFoundException, UnAuthorizedException;
}
