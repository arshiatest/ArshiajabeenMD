public class AccountHandler {

    public static account insertNewAccount( string name){
        account acc= new account(name=name);
        string s1;
        try{
            insert acc;
            system.debug('account inserted:'+acc.id);
            return acc;
        }
        catch(exception e){
            system.debug('insertion failed:'+e.getMessage());
            return null;
        }
       
    }
}