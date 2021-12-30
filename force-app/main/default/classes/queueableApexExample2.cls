public class queueableApexExample2 implements Queueable{
    public void execute(QueueableContext con){
        system.debug('--------Second Job--------');
    }
}