public class AccountWrapper {
 
    public Boolean newchecked{ get; set; }
    public Boolean checked{ get; set; }
    public Account acnt { get; set;}
 
    public accountWrapper(){
        acnt = new account();
        checked = false;
    }
 
    public accountWrapper(account a){
        acnt = a;
        checked = false;
    }
 
    public static testMethod void testMe() {
 
        accountWrapper aw = new accountWrapper();
        System.assertEquals(aw.checked,false);
 
        accountWrapper aw2 = new accountWrapper(new account(name='Test1'));
        System.assertEquals(aw2.acnt.name,'Test1');
        System.assertEquals(aw2.checked,false);
 
    }
 
}