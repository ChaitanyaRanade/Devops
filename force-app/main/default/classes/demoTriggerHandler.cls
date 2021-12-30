public class demoTriggerHandler {

    
    public static void handlerInsert(List<Account> accList){
         
        for(Account acc : accList){
            acc.Rating = 'Warm';
        }
        }
       
    
    public static void handlerUpdate(List<Account> accList,Map<id,Account> oldMapAcc){
        for(Account acc : accList){
            Account oldAccount = oldMapAcc.get(acc.Id);
            If(acc.Rating == 'Hot' && acc.Phone == null){
                acc.Phone.addError('Please fill the Phone');
            }
            if(acc.Rating == 'Cold' && oldAccount.Rating != 'Cold'){
                acc.Chaits__Active__c = 'No';
            }
        }
    }
    
    public static void handleDelete(List<Account> accList){
        for(Account acc : accList){
            if(acc.Rating == 'Hot'){
                acc.addError('You cannot delete');
            }
        }
    }
}