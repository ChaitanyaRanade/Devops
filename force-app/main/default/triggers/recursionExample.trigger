trigger recursionExample on Account (before insert) {

    recursionExampleClass.createAcc();
    
}