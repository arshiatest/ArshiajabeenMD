public class task16_acc {
    public string name{set;get;}
    public string industry{set;get;}
    
    public void call(){
        account a= new account();
        a.name=name;
        a.Industry=industry;
        insert a;
    }
        
}