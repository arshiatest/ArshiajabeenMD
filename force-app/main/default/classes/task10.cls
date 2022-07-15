public class task10 {
    public task10(){
 account a= [select id from account where name='amazon'];
     contact c= new contact();
    c.AccountId=a.Id;
    c.FirstName='ars';
    c.LastName='jabee';
    insert c;
   opportunity op= new opportunity();
    op.accountid= a.id;
    op.Amount=10000;
    op.StageName='closedwon';
      op.StageName='closedwon';
op.closedate=system.today();
    insert op;
    
    }  
}