trigger AccountTrigger on Account(before insert, after Update) {
     
    AccountTriggerHelper helper = new AccountTriggerHelper();
    /* 
    if(Trigger.isBefore && Trigger.isUpdate && AccountTriggerHelper.runOnce){
        helper.onBeforeUpdate(Trigger.newMap, Trigger.OldMap);     
    }
     system.debug('--------before calling after trigger-----'+AccountTriggerHelper.runOnce);
    if(Trigger.isAfter && Trigger.isUpdate && AccountTriggerHelper.runOnce){
        AccountTriggerHelper.runOnce = false;
        system.debug('--------inside after trigger-----'+AccountTriggerHelper.runOnce);
        helper.onAfterUpdate(Trigger.newMap, Trigger.OldMap);
    }*/
    for(Account acc:trigger.new){
        if(acc.name == 'test'){
            acc.name.addError('You cannot insert');
        }
    }
}