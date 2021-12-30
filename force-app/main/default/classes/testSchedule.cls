public class testSchedule implements Schedulable {
    public void execute(SchedulableContext  sc){
        Database.executeBatch(new contactBatch());
    }
}