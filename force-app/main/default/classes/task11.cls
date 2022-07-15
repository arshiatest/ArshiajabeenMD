public class task11 {
    public task11(){
        account a=[select id,name from account where name='amazon'];
        accountteammember atm = new accountteammember();
        atm.AccountId=a.id;
        atm.AccountAccessLevel='read/write';
        insert atm;
    }
}