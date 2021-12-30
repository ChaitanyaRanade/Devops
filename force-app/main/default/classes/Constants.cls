public class Constants {
	static final Integer DEFAULT_ROWS = 5;//An Integer used to control the number of rows displayed by a Visualforce page.
    static final String SELECT_ONE	= System.label.Select_One;
    static final String INVENTORY_LEVEL_LOW = System.label.Inventory_Level_Low;
    static final String DRAFT_ORDER_STATUS = 'Draft';
    static final String ACTIVATED_ORDER_STATUS = 'Activated';
    static final String INVENTORY_ANNOUNCEMENTS = 'Inventory Announcements';
    static final String ERROR_MESSAGE = 'An error has occurred, please take a screenshot with the URL and send it to IT.';
    static final ID STANDARD_PRICEBOOK_ID = [SELECT id from Pricebook2 where isStandard = true].id;
    static final List<Schema.PicklistEntry> PRODUCT_FAMILY;
    
    static{
        Schema.DescribeFieldResult pr = Product2.Family.getDescribe();
        List<Schema.PicklistEntry> entries = pr.getPicklistValues();
    }
}