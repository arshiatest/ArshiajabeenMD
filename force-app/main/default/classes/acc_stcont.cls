public class acc_stcont {
    public account acc{set;get;}
    public acc_stcont(apexpages.StandardController controller){
        list<string> fields= new list<string>{'id','name','type','rating','ownership'};
            controller.addFields(fields);
        acc= (account)controller.getRecord();
    }
    public pagereference save(){
        integer count = [select count() from account where name=:acc.name];
        if(count>0){
            apexpages.Message msg= new apexpages.Message(apexpages.Severity.ERROR,'this is a duplicate record');
            apexpages.addMessage(msg);
            return null;
        }
        else{
            try{
               insert acc;
                opportunity op= new opportunity();
                op.name=acc.name;
                op.CloseDate=system.today()+20;
                op.StageName= 'prospecting';
                op.AccountId = acc.id;
                insert op;
                pagereference p= new pagereference('/'+acc.id);
                    return p; 
            }
            catch(exception e)
            {
                apexpages.Message msg= new apexpages.Message(apexpages.Severity.ERROR, e.getMessage());
                apexpages.addmessage(msg);
                return null;
            }
        }
    }

}