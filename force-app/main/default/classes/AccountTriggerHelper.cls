public Class AccountTriggerHelper{
    //Trigger execution check variable
    public static Boolean runOnce = true;
     
    //On before update
    public void onBeforeUpdate(map<Id, Account> mapNewAccount, map<Id, Account> mapOldAccount){
        //Write your logic here
        System.debug('Is Before Update');
    }
     
    //On after update
    public void onAfterUpdate(map<Id, Account> mapNewAccount, map<Id, Account> mapOldAccount){
        Update [SELECT Id, Name FROM Account WHERE Id IN: mapNewAccount.keyset()];
        AccountTriggerHelper.runOnce = true;
        system.debug('--------inside after triggerhelper-----'+AccountTriggerHelper.runOnce);
        System.debug('Is After Update');
    }
}