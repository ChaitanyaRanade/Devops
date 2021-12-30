trigger volTrigger on Chaits__Volunteer__c (after Update) {
	List<Chaits__Public_Event__c> evntsList = new List<Chaits__Public_Event__c>();
    Map<Id,List<Chaits__Public_Event__c>> volEvtMap = new Map<Id,List<Chaits__Public_Event__c>>();
    List<Id> idList = new List<Id>();
    for(Chaits__Volunteer__c vol: trigger.new){
        idList.add(vol.id);
    }
    evntsList = [SELECT id,Chaits__Volunteer_Assigned__c from Chaits__Public_Event__c where Chaits__Volunteer_Assigned__c IN : idList];
    for(Chaits__Public_Event__c evt: evntsList){
        if(volEvtMap.containsKey(evt.Chaits__Volunteer_Assigned__c)){
            volEvtMap.get(evt.Chaits__Volunteer_Assigned__c).add(evt);
        }
        else{
            volEvtMap.put(evt.Chaits__Volunteer_Assigned__c,new List<Chaits__Public_Event__c>());
            volEvtMap.get(evt.Chaits__Volunteer_Assigned__c).add(evt);
        }
            
        }
    for(Chaits__Volunteer__c col: trigger.new){
        
    }  
    
}