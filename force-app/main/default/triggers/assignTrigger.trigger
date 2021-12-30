trigger assignTrigger on Chaits__Volunteers__c (after Update) {
	List<Chaits__Public_Event__c> evntsList = new List<Chaits__Public_Event__c>();
    Map<Id,List<Chaits__Public_Event__c>> volEvtMap = new Map<Id,List<Chaits__Public_Event__c>>();
    List<Chaits__Volunteers__c> volList = new List<Chaits__Volunteers__c>();
    List<Id> idList = new List<Id>();

    Map<id,Chaits__Volunteers__c> mapVol = new Map<id,Chaits__Volunteers__c>([SELECT id,Chaits__Status__c from Chaits__Volunteers__c]);

    evntsList = [SELECT id,Chaits__Volunteer_Assigned__c from Chaits__Public_Event__c where Chaits__Volunteer_Assigned__c IN : trigger.new];
    for(Chaits__Public_Event__c evt: evntsList){
        if(volEvtMap.containsKey(evt.Chaits__Volunteer_Assigned__c)){
            volEvtMap.get(evt.Chaits__Volunteer_Assigned__c).add(evt);
        }
        else{
            volEvtMap.put(evt.Chaits__Volunteer_Assigned__c,new List<Chaits__Public_Event__c>());
            volEvtMap.get(evt.Chaits__Volunteer_Assigned__c).add(evt);
        }
            
        }
    system.debug('======================='+volEvtMap);
    for(Chaits__Volunteers__c vol: trigger.new){
        evntsList.clear();
        if(vol.Chaits__Status__c != 'Available' && trigger.oldMap.get(vol.id).Chaits__Status__c == 'Available'){
            for(Chaits__Public_Event__c evt:volEvtMap.get(vol.id)){
                for(Chaits__Volunteers__c vol1:mapVol.values()){
                    if(vol1.id !=vol.Id && ((trigger.newMap.get(vol1.id) == null && vol1.Chaits__Status__c == 'Available') || (trigger.newMap.get(vol1.id) != null && trigger.newMap.get(vol1.id).Chaits__Status__c == 'Available'))){
                        evt.Chaits__Volunteer_Assigned__c = vol1.id;
                        evntsList.add(evt);
                        break;
                    }
                }

            }
        }
    }
    
    update evntsList;
    
}