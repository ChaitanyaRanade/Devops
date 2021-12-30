public with sharing class ActionParameterController {
    public Id oppToWin{get;set;}
    public List<Opportunity> getOpp(){
        return [select id,Name,stageName,closedate,amount from Opportunity limit 50 ];
    }
    
    public PageReference updateOpp(){
        Opportunity opp = new Opportunity(id=oppToWin,stageName='Closed Won');
        update Opp;
        return null;
    }
}