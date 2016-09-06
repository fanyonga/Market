package util;

import com.groupfour.util.HibernateHelper;
import org.junit.Test;

/**
 * 测试hibernate工具类是否能够正常使用
 */
public class TestHibernate {
    @Test
    public void testGetSession()
    {
        if(HibernateHelper.getSession()!=null){
            System.out.println("获得会话正常");
        }
    }
}
