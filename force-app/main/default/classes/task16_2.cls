public class task16_2 {
    public account acc{set;get;}
    public task16_2(apexpages.StandardController controller){
        list<string> fields= new list<string>{'name','industry'};
            controller.addFields(fields);
        acc=(account)controller.getRecord();
    }
    public void save(){
   integer count =[select count() from account where name=:acc.name ];
        if(count>0 ){
            apexpages.Message msg= new apexpages.Message(apexpages.Severity.ERROR, 'duplicate error');
            apexpages.addMessage(msg);
        }
        else{
            insert acc;
        }
    }
}