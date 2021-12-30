trigger sampleContactTrigger on Contact (before insert,after Insert) {
    
    if(Trigger.isInsert && Trigger.isBefore){
        sampleTriggerHelper.updateContact(trigger.new);
     }
    
    if(Trigger.isInsert && Trigger.isAfter){
        sampleTriggerHelper.createTask(trigger.new);
    }
}