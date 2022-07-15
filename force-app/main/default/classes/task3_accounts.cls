public class task3_accounts {
    public account[] acts{set;get;}
    public task3_accounts(){
        acts= new account[3];
        account a1= new account(name='tcs',industry='banking',phone='1234');
        account a2= new account(name='cts',industry='energy',phone='6789');
        account a3= new account(name='amazon',industry='it',phone='4222');
        acts.add(a1);
        acts.add(a2);
        acts.add(a3);
    }
}