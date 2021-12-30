trigger QuoteTrigger on Chaits__Quotation__c (after insert) {
    if(Trigger.isInsert)
	QuoteTriggerHelper.onInsert(trigger.newmap, null);
    if(Trigger.isUpdate)
    QuoteTriggerHelper.Isupdate(trigger.newmap, trigger.oldmap);
}