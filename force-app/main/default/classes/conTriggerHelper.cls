public with sharing class conTriggerHelper {
    public static void calc(List<contact> conList,Map<Id,Contact> oldConMap){
        List<Id> accIds = new List<Id>();
        for(Contact con:conList){
            if(con.AccountId != null)
            	accIds.add(con.AccountId);
        }
        Map<Id,Account> accMap = new Map<Id,Account>([SELECT id,Chaits__Total_Individual_Share__c ,Chaits__Total_Group_Share__c ,Chaits__Total_Amount__c  FROM ACCOUNT WHERE ID IN : accIds]);
        if(conList != null){
        for(Contact con:conList){
            if(con.Chaits__Type__c == 'Individual'){
            	if(oldConMap == null){
                	accMap.get(con.AccountId).Chaits__Total_Individual_Share__c = con.Chaits__Individual_Share__c; 
            	}
                if(oldConMap!= null && con.Chaits__Individual_Share__c != oldConMap.get(con.id).Chaits__Individual_Share__c){
                    accMap.get(con.AccountId).Chaits__Total_Individual_Share__c += con.Chaits__Individual_Share__c;
                }
                
            }
            if(con.Chaits__Type__c == 'Group'){
                if(oldConMap == null){
                	accMap.get(con.AccountId).Chaits__Total_Group_Share__c += con.Chaits__Group_Share__c;
            	}
                if(oldConMap!= null && con.Chaits__Group_Share__c != oldConMap.get(con.id).Chaits__Group_Share__c){
                    accMap.get(con.AccountId).Chaits__Total_Group_Share__c += con.Chaits__Group_Share__c;
                }
            }
            accMap.get(con.AccountId).Chaits__Total_Amount__c = accMap.get(con.AccountId).Chaits__Total_Group_Share__c + accMap.get(con.AccountId).Chaits__Total_Individual_Share__c;
        }
        }
        else{
            for(contact con:oldConMap.values()){
                if(con.Chaits__Type__c == 'Individual'){
                	accMap.get(con.AccountId).Chaits__Total_Group_Share__c -= con.Chaits__Individual_Share__c;
            }
            if(con.Chaits__Type__c == 'Group'){
				accMap.get(con.AccountId).Chaits__Total_Group_Share__c -= con.Chaits__Group_Share__c;
            }
                accMap.get(con.AccountId).Chaits__Total_Amount__c = accMap.get(con.AccountId).Chaits__Total_Group_Share__c + accMap.get(con.AccountId).Chaits__Total_Individual_Share__c;
            }
        }
       update accMap.values();
    }
}