trigger sampleTrigger1 on Account (before insert, before update) {

    for(Account acc: trigger.new){
        system.debug('------'+acc.Rating);
        if(acc.Industry == 'Agriculture' && trigger.oldMap.get(acc.Id).Industry != 'Agriculture'){
            acc.Description = 'This is an Agriculture Account232';
        }
    }
}