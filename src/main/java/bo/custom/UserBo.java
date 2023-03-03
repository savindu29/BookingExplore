package bo.custom;

import bo.SuperBo;
import dto.UserDto;

import java.sql.SQLException;

public interface UserBo extends SuperBo {
    public boolean createUser(UserDto dto) throws SQLException, ClassNotFoundException;
}
