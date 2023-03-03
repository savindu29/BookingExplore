package dao;

import db.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CrudUtil {
    public static <T> T execute(String sql, Object...param) throws SQLException, ClassNotFoundException {
        PreparedStatement stm = DBConnection.getInstance().getConnection().prepareStatement(sql);
        for (int i = 0; i < param.length; i++) {
            stm.setObject((i+1),param[i]);
        }
        if(sql.startsWith("SELECT")){
            return (T) stm.executeQuery();
        }
        return (T)(Boolean)(stm.executeUpdate()>0);
    }
}
