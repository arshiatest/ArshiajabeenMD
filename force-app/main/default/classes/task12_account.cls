public class task12_account {
    public list<account> acts{set;get;}
    public task12_account(){
        acts= [select id,name ,industry ,type from account];
        
    }
}