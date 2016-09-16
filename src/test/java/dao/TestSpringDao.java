package dao;

import com.groupfour.dao.UserDao;
import com.groupfour.entity.User;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Created by fanyong on 16-9-7.
 */
public class TestSpringDao {
    @Test
    public void testSelectUserList(){
        ApplicationContext context=new ClassPathXmlApplicationContext("spring/spring.xml");
        UserDao dao= (UserDao) context.getBean("userDao");
//        List<User> list=dao.selectUserList();
//        for (User u:list
//             ) {
//            System.out.println(u.getAccount());
//        }
//        User u=dao.selectUserByAccount("123123");
//        System.out.println(u.getAccount());
    }
}
