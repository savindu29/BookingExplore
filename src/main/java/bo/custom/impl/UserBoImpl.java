package bo.custom.impl;

import advices.UnAuthorizedException;
import bo.custom.UserBo;
import dao.DaoFactory;
import dao.custom.UserDao;
import dto.UserDto;
import dto.response.LoginResponseDto;
import entity.User;

import java.sql.SQLException;

public class UserBoImpl implements UserBo {
    private UserDao userDao = DaoFactory.getInstance().getDao(DaoFactory.DaoTYPE.USER);

    @Override
    public boolean createUser(UserDto dto) throws SQLException, ClassNotFoundException {
        return userDao.save(
                new User(dto.getEmail(),dto.getFirst_name(),dto.getLast_name(),
                        dto.getContact(),dto.getPassword(),dto.isActiveState())
        );
    }

    @Override
    public LoginResponseDto login(String email, String password) throws SQLException, ClassNotFoundException, UnAuthorizedException {
        return userDao.login(email,password);
    }
}
