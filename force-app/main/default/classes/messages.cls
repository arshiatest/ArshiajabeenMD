public class messages {
    public messages(){
        apexpages.Message msg1= new apexpages.Message(apexpages.Severity.CONFIRM,'it is a success');
        apexpages.Message msg2 = new apexpages.Message(apexpages.Severity.ERROR,'it is a error');
        apexpages.message msg3= new apexpages.Message(apexpages.Severity.WARNING,'it is a warning');
        apexpages.Message msg4= new apexpages.Message(apexpages.Severity.INFO,'it is information');
        apexpages.Message msg5= new apexpages.Message(apexpages.Severity.FATAL,'it is fatal');
        apexpages.addMessage(msg1);
        apexpages.addMessage(msg2);
        apexpages.addMessage(msg3);
        apexpages.addMessage(msg4);
        apexpages.addMessage(msg5);
    }
}