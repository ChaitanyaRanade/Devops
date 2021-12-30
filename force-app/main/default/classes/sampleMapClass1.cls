//Return all the Opportunities for a particular Account
public class sampleMapClass1 {
	public static void testMap(){
		List<Account> accList = new List<Account>([SELECT id,phone,ownerId from Account]);
		Map<Id,List<Opportunity>> mapAccOpp = new Map<Id,List<Opportunity>>();
    	
        List<Opportunity> oppList = [SELECT id,name,AccountId from Opportunity where accountid in : accList];
        
        for(Opportunity opp:oppList){
            List<Opportunity> oppList1 = new List<Opportunity>();
            if(mapAccOpp.containsKey(opp.AccountId)){
                mapAccOpp.get(opp.AccountId).add(opp);
            }
            else{
                oppList1.add(opp);
                mapAccOpp.put(opp.AccountId,oppList1);
            }
        }
        system.debug(mapAccOpp);

}
}