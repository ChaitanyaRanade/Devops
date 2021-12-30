public class DonationTriggerHandler {
    public static void performOps(List<Chaits__Donation__c> donList,Map<Id,Chaits__Donation__c> oldDonMap){
        List<Task> tskList = new List<Task>();
        for(Chaits__Donation__c don: donList){
            
            if((don.Chaits__Status__c == 'Planned' && ((oldDonMap != null && oldDonMap.get(don.id).Chaits__Status__c != 'Planned') || oldDonMap == null)) && Trigger.isAfter){
                Task tsk = new Task();
                tsk.Subject = don.Name;
                tsk.WhatId = don.Id;
                tskList.add(tsk);
            }
            if(Trigger.isBefore){
    If((don.Chaits__Status__c == 'Donated' && ((oldDonMap != null && oldDonMap.get(don.id).Chaits__Status__c != 'Donated') || oldDonMap == null))){
        List<Messaging.SingleEmailMessage> msgList = new List<Messaging.SingleEmailMessage>();
        Messaging.SingleEmailMessage em = new Messaging.SingleEmailMessage();
        em.ToAddresses = new String[]{don.Chaits__Contact_Email__c};
        em.plainTextBody = 'Thank You!!';
    }
   
            If((don.Chaits__Status__c == 'Cancelled' && ((oldDonMap != null && oldDonMap.get(don.id).Chaits__Status__c != 'Cancelled') || oldDonMap == null))){
                if(don.Chaits__Cancellations_Reasons__c == null){
                    don.Chaits__Cancellations_Reasons__c.addError('Please fill reasons');
                }
            }
            
            
             If((don.Chaits__Status__c == 'Donation Cancelled' && ((oldDonMap != null && oldDonMap.get(don.id).Chaits__Status__c != 'Donation Cancelled') || oldDonMap == null))){
                if(don.Chaits__Cancellations_Reasons__c == null){
                    don.Chaits__Amount__c = 0;
                }
            }
            
}
        }
        
    }
}