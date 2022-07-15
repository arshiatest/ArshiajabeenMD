@isTest
private class TestRestrictContactByName {
       
@isTest
    static void TestRestrictContactByNamemet(){
        contact c1= new contact();
        c1.LastName='jabeen';
        insert c1;
    }
   
        @isTest
         static void TestRestrictContactByNamemet1(){
        contact c1= new contact();
        c1.LastName='jabeen';
        insert c1;
          
        contact c2=[select id,lastname from contact];
        c2.LastName='invalidname';
       Database.SaveResult result= database.update(c2,false);
             system.assertEquals('The Last Name "'+c2.LastName+'" is not allowed for DML', result.getErrors()[0].getmessage());
    } 
}