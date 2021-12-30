public class qApexClass implements queueable,Database.AllowsCallouts{
    public void execute(QueueableContext con){
        List<Account> accList = new List<Account>([select id from Account limit 10]);
        system.debug('----'+accList.size());
    }
}