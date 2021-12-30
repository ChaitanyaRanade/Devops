trigger testAccount on Account (after update) {
    List<Account> accList = trigger.new;
    Map<Id,Account> accOldMap = trigger.oldMap;
    for(Account acc: accList){
        if(accOldMap.get(acc.Id).Rating != 'Hot' && acc.Rating == 'Hot'){
            //acc.Description  = 'High Probability';
        }
    }
}