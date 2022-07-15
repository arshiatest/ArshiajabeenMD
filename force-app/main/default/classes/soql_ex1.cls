public class soql_ex1 {
    public list<account> acts{set;get;}
    public soql_ex1(){
        acts=[select id,name,phone,industry from account];
    }
}