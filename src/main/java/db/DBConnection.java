package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static DBConnection dbConnection;
    public Connection connection;
    private DBConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/booking_explore","root","1234"
        );

    }
    public static DBConnection getInstance() throws SQLException, ClassNotFoundException {
        if(dbConnection==null){
            dbConnection = new DBConnection();
            return dbConnection;
        }
        return dbConnection;
    }
    public Connection getConnection(){

    return connection;
    }
}
