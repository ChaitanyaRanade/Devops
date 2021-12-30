global class testScheduler1 implements schedulable {

    global void execute(schedulablecontext sc){
        testBatch1 bt = new testBatch1();
        Database.executeBatch(bt, 100);
    }
}