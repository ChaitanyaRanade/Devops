/* Create an Opportunity with the following details after an Account is created
 * StageName = 'Prospect'
 * Account = ParentAccountId
 * CloseDate = Today+30
 * Name = Account+Opp
*/

public class insertTriggerHandler {

    public static void createOpps(List<Account> accList){
       	List<Opportunity> oppList = new List<Opportunity>();
        for(Account acc : accList){
            Opportunity opp = new Opportunity();
            opp.Name = acc.name+'Opp';
            opp.CloseDate = Date.today() + 30;
            opp.AccountId = acc.id;
            opp.StageName = 'Prospecting';
            oppList.add(opp);
        }
        Database.insert(oppList);

    }

}