package dao;

import java.sql.SQLException;
import java.util.List;

public interface CrudDao<T, ID> extends SuperDao{
     boolean save(T t) throws SQLException, ClassNotFoundException;
     boolean update(T t);
     boolean delete(ID id);
     T get(ID id);
     List<T> getAll();

}
