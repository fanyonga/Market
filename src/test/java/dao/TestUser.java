package dao;

import com.groupfour.dao.UserDao;
import com.groupfour.dao.impl.UserDaoImpl;
import com.groupfour.entity.User;
import org.junit.Test;

import java.sql.Time;
import java.util.Date;
import java.util.List;

/**
 * Created by fanyong on 16-9-6.
 */
public class TestUser {
    @Test
    public void testInsertUser()
    {
        UserDao dao=new UserDaoImpl();
        User user=new User();
        user.setAccount("张三");
        user.setPassword("123456");
        user.setRole(0);
        user.setTime(new Time(new Date().getTime()));
        dao.insertUser(user);
    }

    @Test
    public void testGetList()
    {
        UserDao dao=new UserDaoImpl();
        List<User> users=dao.selectUserList();
        for (User u:users
             ) {
            System.out.println(u.getAccount());
        }
    }
}
