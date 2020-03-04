/*
 */
package DAO;

import java.sql.Connection;
import java.util.List;

/**
 *
 * @author ABC
 */
public interface DAO_Base<T> {
    Connection con = ConnectDB.openConnect();
    
    List<T> findAll();

    T find(String ma);

    T save(T t);

    T update(T t);

    T delete(T t);

}
