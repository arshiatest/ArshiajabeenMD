@istest
public class AccountProcessorTest {
    @istest
    public static void testfunc(){
account acc= new account();
    acc.name= 'abcd';
    insert acc;
    contact con = new contact();
    con.lastname= 'ars';
    con.AccountId = acc.Id;
    insert con;
    contact con2= new contact();
    con2.LastName = 'jabe';
    con2.AccountId = acc.Id;
    insert con2;
        list<id> accid_list = new list<id>();
        accid_list.add(acc.Id);
        system.test.startTest();
        accountprocessor.countContacts(accid_list);
        system.test.stopTest();
        list<account> acc1= new list<account>([select number_of_contacts__c from account where id = :acc.id]);
        system.assertEquals(2,acc1[0].number_of_contacts__c);
}
}