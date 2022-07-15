global class batchapexstateful implements database.Batchable<sobject>,database.stateful{
    global integer aval=0;
    global static integer bval=0;
    global list<account> acts;
    global batchapexstateful(){
        acts= new list<account>();
    }
    global database.QueryLocator start(database.BatchableContext bc){
        string query = 'select id, name from account';
        return database.getQueryLocator(query);
    }
    global void execute(database.BatchableContext bc,list<account> scope){
        for(account a:scope){
            acts.add(a);
        aval= aval+1;
        bval=bval+1;
        }
    }
    global void finish(database.BatchableContext bc){
        system.debug('aval:'+aval);
        system.debug('bval:'+bval);
        messaging.SingleEmailMessage msg = new messaging.SingleEmailMessage();
        string[] toadd= new string[]{'arshia1010@gmail.com'};
            string body= '';
        for(account a:acts){
            body=body+a.Name+'\n ';
        }
        msg.setToAddresses(toadd);
        msg.setSubject('testmessage');
        msg.setHtmlBody( body);
        messaging.Email[] emails = new messaging.Email[]{msg};
        messaging.sendEmail(emails);
    }
}