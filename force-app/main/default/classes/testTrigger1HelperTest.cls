@isTest
public class testTrigger1HelperTest {
    @testSetup
    public static void setup(){
        Lead ld = new Lead();
        ld.FirstName = 'test';
        ld.LastName = 'Lead';
        ld.Company = 'Test Company';
        ld.Phone = '7364644';
        insert ld;
    }
    @isTest
    public static void testTask(){
        Lead ld = [select id from Lead where FirstName like 'test'];
        system.debug(ld);
        Task tsk = new Task();
        tsk.Subject = 'Call';
        tsk.WhoId = ld.Id;
        insert tsk;
        
        Update tsk;
    }
}