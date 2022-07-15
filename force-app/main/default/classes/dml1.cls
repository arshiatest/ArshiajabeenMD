public class dml1 {
    public string name{set;get;}
    public string rating{set;get;}
    public string type{set;get;}
    public string industry{set;get;}
    public pagereference save(){
        list<account> acts=[select id, name from account where name=:name];
        if(acts.size()>0){
           apexpages.Message msg= new apexpages.Message(apexpages.Severity.ERROR,'duplicate value of name');
            apexpages.addMessage(msg);
            return null;
        }
        else{
        try{
            account acc= new account();
            acc.name=name;
            acc.industry=industry;
            acc.type=type;
            acc.rating=rating;
            insert acc;
            pagereference p= new pagereference('/'+acc.id);
            return p;
        }
        catch(exception e){
            apexpages.Message msg= new apexpages.message(apexpages.Severity.ERROR,e.getTypeName()+':at'+ e.getLineNumber());
            apexpages.addMessage(msg);
            return null;
        }
        }
    }
    public pagereference cancel(){
        pagereference p1= new pagereference('/001/o');
        return p1;
    }
}