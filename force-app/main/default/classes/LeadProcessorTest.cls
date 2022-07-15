@istest
public class LeadProcessorTest {
    @istest
    public static void testmet(){
        list<lead> leads = new list<lead>();
        for(integer i=0;i<200;i++){
            lead l= new lead(lastname='lastname'+i, firstname='firstname'+i, email='test'+i+'@gmail.com', leadsource='web',company='xyz');
            leads.add(l);
        }
        insert leads;
    system.test.startTest();
    leadprocessor lp = new leadprocessor();
    id batchid=database.executeBatch(lp);
    system.test.stoptest();
    system.assertEquals(200,[select count() from lead where leadsource='dreamforce']);
    }
}