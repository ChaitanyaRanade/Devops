public class AbstractFactory { 
     
    interface IProcessor{ void performOperation(); } 
    interface IStorage {void storeData(); } 
    interface IMonitor {void display(); } 
     
       class LEDMonitor implements IMonitor{ 
          
        public void display(){ 
            System.debug('Display in 17inch LED Monitor'); 
        } 

    }  
     
class LCDMonitor implements IMonitor{ 
          
        public void display(){ 
            System.debug('Display in LCD Monitor'); 
        } 

    }  
 
     
class SSDStorage implements IStorage{  
        public void storeData(){  
            System.debug('Storage Operation is performed in Solid State Drive'); 
        } 

    }  
      
class HDDStorage implements IStorage{  
        public void storeData(){  
            System.debug('Storage Operation is performed on HDD'); 
        } 

    } 
      
    class QuadCore implements IProcessor{  
        public void performOperation(){ 
            System.debug('Super fast Processor'); 
        } 

    } 
      
    class DualCore implements IProcessor{ 
          
        public void performOperation(){ 
            System.debug('Average Speed Processor'); 
        } 

    }   
 
    public interface IComputerFactory { 
      IProcessor getProcessor(); 
      IStorage getStorage(); 
      IMonitor getMonitor();         

    }  
     
    public class HighPerformance implements IComputerFactory{ 
        public IProcessor getProcessor(){ 
            return new Quadcore(); 
        } 
        public IStorage getStorage(){ 
            return new SSDStorage(); 
        } 
        public IMonitor getMonitor(){ 
            return new LEDMonitor(); 
        } 

    }  
       
    public class StandardConfiguration implements IComputerFactory{ 
        public virtual IProcessor getProcessor(){ 
            return new DualCore(); 
        } 
        public virtual IStorage getStorage(){ 
            return new HDDStorage(); 
        } 
        public virtual IMonitor getMonitor(){ 
            return new LCDMonitor(); 
        } 

    }  
     
    public class AssembleComputer 
    { 
        IComputerFactory computer ; 
        public AssembleComputer(IComputerFactory comp) 
        { 
            computer = comp; 
        } 
         
        public void testCompleteSystem() 
        { 
            IProcessor processor = computer.getProcessor(); 
            IStorage storage = computer.getStorage(); 
            IMonitor monitor = computer.getMonitor(); 
             
            processor.performOperation();
            storage.storeData();
            monitor.display(); 
        } 

    }  
 
}