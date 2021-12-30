trigger DonationTrigger on Chaits__Donation__c (after insert,after update,after delete ) {
    if(Trigger.isUpdate){
        DonationTriggerHandler.performOps(trigger.new,trigger.oldMap);
    }
    if(Trigger.isInsert){
    DonationTriggerHandler.performOps(trigger.new,null);
    }
}