public class AddPrimaryContact implements Queueable{
 
    public contact con;
    public string state;
    public AddPrimaryContact(contact con, string state){
        this.con=con;
        this.state=state;
    }
    //inserted new line
    public void execute(queueablecontext qc){
        list<account> acts= new list<account>([select id, name,billingstate,(select id,firstname,lastname from contacts)
                                               from account where billingstate=:state limit 200]);
        list<contact> cons= new list<contact>();
        for(account acc:acts){
            contact c = con.clone(false,false,false,false);
            c.AccountId= acc.id;
            cons.add(c);
             }
        insert cons;
    }
}
