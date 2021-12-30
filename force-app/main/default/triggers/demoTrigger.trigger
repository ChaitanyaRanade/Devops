trigger demoTrigger on Account (before insert,before update,before delete) {
    
   	if(Trigger.isInsert && Trigger.isBefore){
        demoTriggerHandler.handlerInsert(trigger.new);
    }
    
    if(Trigger.isUpdate && Trigger.isBefore){
        demoTriggerHandler.handlerUpdate(trigger.new,trigger.oldMap);
    }
    
    if(Trigger.isDelete && Trigger.isBefore){
        demoTriggerHandler.handleDelete(trigger.old);
    }
    
}