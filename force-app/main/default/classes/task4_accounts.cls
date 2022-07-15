public class task4_accounts {
    public list<account> acts{set;get;}
    public task4_accounts(){
        acts= new list<account>();
        account a1= new account(name='tcs',industry='banking',phone='1234');
         account a2= new account(name='cts',industry='energy',phone='44321');
         account a3= new account(name='amazon',industry='it',phone='4567');
        acts.add(a1);
        acts.add(a2);
        acts.add(a3);
    }
}