public class testCollection {
    public void testColl(List<Lead> ldList){
        for(Lead ld: ldList){
            ld.FirstName = 'Test';
            Update ld;
        }
    }
}