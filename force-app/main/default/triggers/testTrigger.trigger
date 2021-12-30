trigger testTrigger on Account (before insert) {
	system.debug('---------test--------');
    
    testHelper.testFunc();
}