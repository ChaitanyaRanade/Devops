trigger FindDupes on Lead (before insert,before update) {

for(Lead myLead: Trigger.New){
if(myLead.Email != null){
List<Contact> dupes = [SELECT Id FROM Contact WHERE Email = :myLead.Email];

if(dupes.size()>0){
myLead.Dup_Contact__c= dupes[0].Id;
}
    else{
myLead.Dup_Contact__c = null;
        }
    }
   }
}