public class mixedDMLExample {

    public void mixedDMLMethod(){
                
        Contact con = new Contact();
        con.FirstName = 'Test User';
        con.LastName = 'Demo';
        insert con;
        futureMethod();
    }
    
    @future
    public static void futureMethod(){
        PermissionSet p = [SELECT Name, PermissionsModifyAllData FROM PermissionSet WHERE PermissionsModifyAllData=true limit 1];
        p.PermissionsModifyAllData = false;
        update p;
    }
}