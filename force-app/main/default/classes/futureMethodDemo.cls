public class futureMethodDemo {
	
    @future
    public static void method1(){
        system.debug('------statement1------');
        system.debug('------statement2------');
        system.debug('------statement3------');
    }
    
    
    @future
    public static void method2(){
        system.debug('------method2-statement1------');
        system.debug('------method2-statement2------');               
        system.debug('------method2-statement3------');
        method1();
    }
    
    public void method3(){
        system.debug('------method3-statement1------');
        system.debug('------method3-statement2------');
        system.debug('------method3-statement3------');
        method2();
        
    }
}