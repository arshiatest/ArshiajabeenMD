global class batchapex1 implements database.Batchable<sobject> {
    global database.QueryLocator start(database.BatchableContext bc){
        string query = 'select id, name from account ';
        return database.getQueryLocator(query);
    }
    global void execute(database.BatchableContext bc,list<account> scope){
        for(account a:scope){
            a.industry='banking';
    }
    update scope;
}
    public void finish(database.BatchableContext bc){
        
    }
}