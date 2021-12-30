trigger OppTestTrigger on Opportunity (before Update) {
    for(Opportunity Opp: trigger.new){
        if(Opp.StageName == 'Closed Won'){
            Opp.Name = 'Won';
        }
    }
}