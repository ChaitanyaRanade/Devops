@IsTest
private class BHTest {
    @isTest
    static void TestBH()
    {
        List<BusinessHours> bhs=[select id from BusinessHours where IsDefault=true];
        system.debug('======='+bhs);
        System.assert(bhs.size()==1);
        List<Account> accs=[select id from Account];
        System.assert(accs.size()==0);
    }
}