package dao.custom.impl;

import advices.UnAuthorizedException;
import dao.CrudUtil;
import dao.custom.UserDao;
import dto.response.LoginResponseDto;
import entity.User;
import io.jsonwebtoken.Jwts;
import util.EncryptionConfig;

import javax.xml.crypto.Data;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.Date;
import java.util.List;
import java.util.UUID;

public class UserDaoImpl implements UserDao {
    @Override
    public boolean save(User user) throws SQLException, ClassNotFoundException {

        String encryptedPassword = EncryptionConfig.Encrypt(user.getPassword());

        return CrudUtil.execute("INSERT INTO user VALUES (?,?,?,?,?,?)",
                user.getEmail(),user.getFirst_name(),user.getLast_name(),
                user.getContact(),encryptedPassword,user.isActiveState()
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
    public LoginResponseDto login(String email, String password) throws SQLException, ClassNotFoundException , UnAuthorizedException {
       // System.out.println(email + " | "+ password);
        ResultSet set = CrudUtil.execute("SELECT * from user where email =? ",email);
        if(set.next()){
            if(EncryptionConfig.decrypt(password,set.getString(5))){
                String token = Jwts.builder()
                        .claim("name",set.getString(2)+" "+set.getString(3))
                        .claim("email",set.getString(1))
                        .setId(UUID.randomUUID().toString())
                        .setIssuedAt(Date.from(Instant.now()))
                        .setExpiration(Date.from(Instant.now().plus(24, ChronoUnit.HOURS)))
                        .compact();
                //token =========================
                return new LoginResponseDto(set.getString(2)+" "+set.getString(3),set.getString(1),token);
            }else {
                throw  new UnAuthorizedException("Password is Wrong");
            }

        }else{
            throw  new ClassNotFoundException();
        }
    }
}


