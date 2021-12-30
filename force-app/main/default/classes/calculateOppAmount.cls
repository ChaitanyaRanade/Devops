global class calculateOppAmount implements Database.Batchable<sObject>,Database.stateful {
	public Integer totalAmount = 0;
    public Database.QueryLocator start(Database.BatchableContext bc){
        String query = 'SELECT id,name,Amount from Opportunity';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,List<sObject> oppList){
       List<Opportunity> oppList1 = new List<Opportunity>();
        
        for(sObject obj: oppList){
			 Opportunity opp = (Opportunity) obj;
            if(opp.Amount != null){
            	totalAmount += Integer.valueOf(opp.Amount);
            }
            oppList1.add(opp);
        }
        system.debug('-----------Total Amount-------'+totalAmount);
    }
    global void finish(Database.BatchableContext bc){
        system.debug('-----------Total Amount-------'+totalAmount);
    }
}