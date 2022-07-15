@istest
public class DailyLeadProcessorTest {
@istest
    public static void testmet(){
        list<lead> l_list= new list<lead>();
        for(integer i=0;i<200;i++){
            lead l= new lead();
            l.lastname='test'+i;
            l.Company='abcd';
            l_list.add(l);
        }
    insert l_list;  
        system.Test.startTest();
        DailyLeadProcessor dlp =  new DailyLeadProcessor();
       string jobid= system.schedule('dailyleadprocessor','0 0 0 1 12 ? 2019', dlp);
        system.test.stopTest();
        list<lead> list1 = new list<lead>([select id,leadsource from lead where leadsource != 'dreamforce']);
        system.assertEquals(0,list1.size());
    }
}