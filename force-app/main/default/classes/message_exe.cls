public class message_exe {
    public string name{set;get;}
    public integer age{set;get;}
    public void save(){
        apexpages.Message m;
       
        if(age>20){
            m=new apexpages.Message(apexpages.Severity.CONFIRM,'you are elgible to vote');
        }
        else
        {
            m=new apexpages.Message(apexpages.Severity.ERROR,'you are not elgible to vote');
        }
       apexpages.addMessage(m); 
    }
    
}