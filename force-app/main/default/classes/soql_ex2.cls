public class soql_ex2 {
    public list<account_wrapper> wrapper{set;get;}
    public list<account> acts;
    public soql_ex2(){
        wrapper = new list<account_wrapper> ();
        acts= [select id,name,industry,rating,phone from account];
        for(account a:acts){
           account_wrapper aw= new account_wrapper();
            aw.acc=a;
            aw.flag=false;
            wrapper.add(aw);
        }
    }
}