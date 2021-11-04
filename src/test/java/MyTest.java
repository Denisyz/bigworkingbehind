import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.ApplicationContext;
import com.repair.service.repairService;
import com.repair.pojo.repair;
public class MyTest {
    @Test
    public void test(){
        ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
        repairService repairServiceImpl =(repairService) context.getBean("repairServiceImpl");
        for (repair repair:repairServiceImpl.queryAllrepair()){
            System.out.println(repair);
        }
    }
}
