global class testBatch1 implements Database.Batchable<sObject> {

    global String name1;
    global Database.QueryLocator start(Database.BatchableContext bc){
        
        String query = 'Select id,name,Chaits__Amount__c from Account limit 10';
        return Database.getQueryLocator(query);
        
    }
    
    global void execute(Database.BatchableContext bc, List<Account> scope){
        
        for(Account acc: scope){ 
            name1 = acc.name + name1;
        }
    }
    
    global void finish(Database.BatchableContext bc){
        system.debug('====Inside Finish====='+name1);
    }
}