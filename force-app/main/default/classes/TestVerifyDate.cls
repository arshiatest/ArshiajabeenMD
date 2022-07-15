@isTest
public class TestVerifyDate {
 @isTest
    static void verifydatemet(){
        date date1= date.newInstance(2019,01,01);
         date date2= date.newInstance(2019,01,15);
         date date3= date.newInstance(2019,02,02);
         date date4= date.newInstance(2019,01,31);
        date d1=verifydate.CheckDates(date1,date2);
        system.assertEquals(d1, date2);
        date d2=verifydate.CheckDates(date1,date3);
        system.assertEquals(d2,date4);
    }
}