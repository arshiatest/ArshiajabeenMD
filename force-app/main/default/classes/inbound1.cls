public class inbound1 implements messaging.InboundEmailHandler{
    public messaging.InboundEmailResult handleinboundemail(messaging.InboundEmail email, messaging.InboundEnvelope env){
        messaging.InboundEmailResult result = new messaging.InboundEmailResult();
        try{
            contact con= [select id from contact where email= :email.fromAddress];
            case c= new case();
            c.Subject = email.subject;
            c.Priority ='low';
            c.Status ='new';
            c.Origin ='email';
            c.ContactId = con.id;
            insert c;
           result.success =true; 
        }
        catch(exception e){
           result.success = false; 
        }
        return result;
    }
    
}