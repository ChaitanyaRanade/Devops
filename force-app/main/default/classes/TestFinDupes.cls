@isTest
public class TestFinDupes {
    static testMethod void testdupes(){
        
        Lead ld1 = new Lead();
        ld1.FirstName = 'Test';
        ld1.LastName = 'Lead';
        ld1.Email = 'testemailid@sfdc.com';
        try{
            insert ld1;
        }
        catch(exception e){
            System.debug('An error happened!');
        }
        
        List<Lead> li = [SELECT Id from Lead where email='testemailid@sfdc.com'];
            System.assertEquals(0, li.size());
        
        Lead ld2 = new Lead();
        ld2.FirstName = 'Test';
        ld2.LastName = 'Lead';
        ld2.Email = 'new@sfdc.com';
        insert ld2;
        
        List<Lead> li1 = [SELECT Id from Lead where email='testemailid@sfdc.com'];
            System.assertEquals(1, li1.size());
         
    }
}