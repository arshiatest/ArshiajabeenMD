public class soql1 {
    public list<account> acts{set;get;}
    public soql1(){
        acts= [select id,name,type,rating from account];
    }
}