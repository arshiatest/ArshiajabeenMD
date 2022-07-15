public class task13_acccons {
   public  list<account> acts{set;get;}
    public  list<account> actsopps{set;get;}
    public list<account> actscases{set;get;}
    public task13_acccons(){
        acts=[select id,name ,type,(select firstname,lastname,accountid from contacts) from account];
        actsopps=[select id,name ,type,(select name,amount,closedate from opportunities) from account];
        actscases=[select id,name,type ,(select subject,priority,status from cases) from account];
    }
}