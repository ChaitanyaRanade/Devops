public class queueableApexExample implements Queueable {
    
    public void execute(QueueableContext context){
        List<Account> accList = [SELECT id,name from Account];
        
        system.enqueueJob(new queueableApexExample2());
    }
    

}