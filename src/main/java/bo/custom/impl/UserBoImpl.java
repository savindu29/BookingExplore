package bo.custom.impl;

import bo.custom.UserBo;
import dao.DaoFactory;
import dao.custom.UserDao;
import dto.UserDto;
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
}
