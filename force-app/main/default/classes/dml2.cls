public class dml2 {
    public account acc{set;get;}
    public contact con{set;get;}
    public opportunity opp{set;get;}
    public dml2(){
        acc= new account();
        con=new contact();
        opp= new opportunity();
    }
    public pagereference create(){
        list<account> acts=[select id, name from account where name=:acc.name];
        if(acts.size()>0){
           apexpages.Message msg= new apexpages.Message(apexpages.Severity.ERROR,'duplicate value of name');
            apexpages.addMessage(msg);
            return null;
        }
        else{
            insert acc;
            con.AccountId=acc.id;
            insert con;
            opp.name='accop';
            opp.AccountId=acc.id;
            opp.Amount=10000;
            opp.StageName='closed won';
            opp.CloseDate=system.today();
            insert opp;
            pagereference p= new pagereference('/'+acc.id);
            return p;
        }
    }
    public pagereference cancel(){
       acc= new account();
        con=new contact();
        return null;
        
    }
}