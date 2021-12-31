public class HelloWorld {
    
    
    @AuraEnabled
    public static Account getAccount(String Ind){
        return [SELECT id,name from Account where Industry =: Ind limit 1];
    }
    public void sayMe(){
        system.debug('Me');
    }

}