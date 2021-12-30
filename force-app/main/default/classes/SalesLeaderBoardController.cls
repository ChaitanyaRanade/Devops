public with sharing class SalesLeaderBoardController {
    
    @AuraEnabled
    public static list<SalesLeader> getSLDashboardData(){
        List<SalesLeader> slList = new List<SalesLeader>();
        Integer THIS_YEAR = System.date.today().year();
        Map<String,decimal> ownerIdToAmountMap = new Map<String,decimal>(); 
        for(AggregateResult ag: [SELECT SUM(amount) sum,ownerid from Opportunity where stageName = 'Closed Won'
                                 AND CALENDAR_YEAR(CloseDate) =: THIS_YEAR
                                 GROUP BY ownerId
                                 ORDER BY SUM(amount) DESC
                                 LIMIT 10]){
            ownerIdToAmountMap.put((String)ag.get('ownerId'),(Decimal)ag.get('sum'));
                                 }
        for(User usr:[SELECT id,Name,email,FullPhotoUrl from User where id in : ownerIdToAmountMap.keySet()]){
            SalesLeader sl = new SalesLeader(usr.Name,usr.email,usr.id,ownerIdToAmountMap.get(usr.id),usr.FullPhotoUrl);
            slList.add(sl);
        }
        slList.sort();
        system.debug('--------User List--------'+slList);
        return slList;
        
    }
    public List<Opportunity> getlstopportunities(String ownerId) {
        Integer THIS_YEAR = System.date.today().year();
        return[SELECT Name,Account.Name,CloseDate,amount from Opportunity where ownerId =: ownerId AND CALENDAR_YEAR(CloseDate) =: THIS_YEAR ORDER BY CloseDate DESC LIMIT 100];
    }
}