public class InsertFutureUser {
    public void updateUser() {
        
        
        User u = [SELECT id,FirstName,LastName from User where FirstName like '%Test%' limit 1];
        u.isActive = false;
        u.FirstName = 'New Name';
        Update u;
        
        Account acc = new Account();
        acc.name = 'Test Account';
        insert acc;
    }
}