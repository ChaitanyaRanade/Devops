trigger insertTriggerExample on Account (after insert) {

    if(Trigger.isInsert && Trigger.isAfter){
        insertTriggerHandler.createOpps(trigger.new);
    }
}