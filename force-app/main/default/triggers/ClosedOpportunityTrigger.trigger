trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {

    List<Task> taskList = new List<Task>();
    Integer count = 0;
    
    
        
    for(opportunity opp: Trigger.New){
    
        if(opp.StageName!= NULL && (trigger.isInsert || (trigger.isUpdate && trigger.oldMap.get(opp.id).stageName != 'Closed Won')) && opp.StageName == 'Closed Won')
        {
            
            taskList.add(new Task(Subject = 'Follow Up Test Task',
                                  WhatId = opp.Id));
            count++;
            System.debug('---------'+ count);
        }
    
    }

    
    if(taskList.size()>0){
        
        insert taskList;
        
    }
    
}