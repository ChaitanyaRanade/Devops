@isTest
public class AnimalLocatorTest {
    String test1;
    static testMethod void callMockMethod(){
    Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
    String test1 = AnimalLocator.getAnimalNameById(1);
        
    }
}