package util;

import com.groupfour.util.HibernateUtil;
import org.junit.Test;

/**
 * 测试hibernate工具类是否能够正常使用
 */
public class TestHibernate {
    @Test
    public void testGetSession()
    {
        if(HibernateUtil.getSession()!=null){
            System.out.println("获得会话正常");
        }
    }
}
