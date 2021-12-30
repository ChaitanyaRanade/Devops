public class sampleTriggerHelper {
    public static void updateContact(List<Contact> conList){
        List<Id> accIds = new List<Id>();
        
        for(Contact con : conList){
            accIds.add(con.AccountId);
        }
        
        Map<Id,Account> accMap = new Map<Id,Account>([SELECT id,Shippingstreet,shippingcity,shippingpostalcode from Account where id in : accIds]);
        
        system.debug('-----Map------'+accMap);
        for(Contact con : conList){
            system.debug(accMap.containsKey(con.AccountId));
            con.MailingStreet = accMap.get(con.AccountId).Shippingstreet;
            con.MailingPostalCode = accMap.get(con.AccountId).shippingpostalcode;
            con.MailingCity = accMap.get(con.AccountId).shippingcity;
        }

    }
    public static void createTask(List<Contact> conList){
                List<task> tskList = new List<task>();
        
        for(Contact con : conList){
            Task tsk = new Task();
            tsk.Subject = 'test';
            tsk.WhoId = con.Id;
            tsk.WhatId = con.AccountId;
            tskList.add(tsk);
        }
        insert tskList;
    }
}