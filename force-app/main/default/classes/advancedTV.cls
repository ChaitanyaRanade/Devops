public class advancedTV extends TV {
	
    public void remoteController(){
        system.debug('Remote');
    }
    public override void sound(){
        super.sound('st');
        system.debug('-----Adv Sound---');
    }
}