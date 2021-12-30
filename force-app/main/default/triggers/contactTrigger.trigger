trigger contactTrigger on Contact (after insert,after update,after delete) {
    if(trigger.isInsert){
    	conTriggerHelper.calc(trigger.new,null);
     }
    if(trigger.isUpdate){
        conTriggerHelper.calc(trigger.new,trigger.oldMap);
    }
    if(trigger.isDelete){
        conTriggerHelper.calc(null,trigger.oldMap);
    }
    
}