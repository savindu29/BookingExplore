package bo.custom;

import advices.UnAuthorizedException;
import bo.SuperBo;
import dto.UserDto;
import dto.response.LoginResponseDto;

import java.sql.SQLException;

public interface UserBo extends SuperBo {
    public boolean createUser(UserDto dto) throws SQLException, ClassNotFoundException;

    public LoginResponseDto login(String email, String password) throws SQLException, ClassNotFoundException, UnAuthorizedException;
}
