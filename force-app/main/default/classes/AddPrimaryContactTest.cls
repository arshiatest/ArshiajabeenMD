@istest
public class AddPrimaryContactTest {
@istest
    public static void testmet(){
        list<account> acts = new list<account>();
        /* for(integer i=0;i<50;i++){
            account acc= new account();
            acc.BillingState= 'nyc';
            acc.name='test'+i;
            acts.add(acc);
        } */
     for(integer i=0;i<50;i++){
            account acc= new account();
            acc.BillingState= 'ca';
            acc.name='new'+i;
            acts.add(acc);
     }
         insert acts;
        contact con= new contact(lastname='conlast',firstname='confirst');
        system.test.startTest();
        AddPrimaryContact apc= new AddPrimaryContact(con,'ca');
        system.enqueueJob(apc);
        system.test.stopTest();
        list<contact> consnew = new list<contact>([select id from contact]);
        integer len = consnew.size();
        system.assertEquals(100,len);
    }
}