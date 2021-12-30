public class QuoteTriggerHelper {
    public static List<Opportunity> oppList = new List<Opportunity>();
    public static List<Task> tskList = new List<Task>();
    public static List<Chaits__Quotation__c> qtList = new List<Chaits__Quotation__c>();
    public static void onInsert(Map<Id,Chaits__Quotation__c> newMap,Map<Id,Chaits__Quotation__c> oldMap){
        
        
        for(Chaits__Quotation__c qt:newMap.values()){
            Opportunity opp = new Opportunity();
            opp.Name = qt.name+'Opp';
            opp.AccountId = qt.Chaits__Account__c;
            opp.StageName = qt.Chaits__Status__c;
        	opp.Amount = qt.Chaits__Amount__c;
        	opp.ownerid = qt.Chaits__Owner__c;
            opp.CloseDate = Date.today()+10;
        	oppList.add(opp);
        }
        insert oppList;
        for(Chaits__Quotation__c qt:newMap.values()){
            for(Opportunity opp: oppList){
                if(opp.AccountId == qt.Chaits__Account__c){
                    Chaits__Quotation__c qt1 = new Chaits__Quotation__c(id=qt.id);
                    qt1.Chaits__Opportunity__c = opp.id;
                    qtList.add(qt1);
                }
                
                Task tsk = new Task();
                tsk.Subject = 'Followup Task';
                tsk.WhatId = opp.id;
                tsk.ActivityDate = Date.today()+10;
                tskList.add(tsk);            
            }
        }
        update qtList;
        insert tskList;
        system.debug('++++++'+tskList);
    }
    
    public static void isUpdate(Map<Id,Chaits__Quotation__c> newMap,Map<Id,Chaits__Quotation__c> oldMap){
        for(Chaits__Quotation__c qt: newMap.values()){
            if(newMap.get(qt.id).Chaits__status__c == 'Won' && newMap.get(qt.id).Chaits__status__c != oldMap.get(qt.Id).Chaits__status__c){
                system.debug('----Send an Email----');
            }
            }
    }
    
    public static void isDelete(Map<Id,Chaits__Quotation__c> oldMap){
        List<Id> oppList = new List<Id>();
        for(Chaits__Quotation__c qt: oldMap.values()){
            oppList.add(qt.Chaits__Opportunity__c);
        }
    }
}