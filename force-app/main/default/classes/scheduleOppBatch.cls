global class scheduleOppBatch implements schedulable{
    global void execute(SchedulableContext sc){
        calculateOppAmount oppBatch = new calculateOppAmount();
        database.executeBatch(oppBatch);
    }
}