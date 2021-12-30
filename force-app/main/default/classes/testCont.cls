public class testCont {
    public Account acc;
    public List<Opportunity> opps{get;set;}
    public testCont(ApexPages.StandardController controller){
        acc = (Account)controller.getRecord();
        opps = [SELECT id,Name from Opportunity where accountid =: acc.id];
        for(Opportunity opp: opps){
            opp.name = opp.Name.Reverse();
        }
    }
}