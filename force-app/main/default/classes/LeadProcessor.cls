global class LeadProcessor implements database.Batchable<sobject>{

    global database.QueryLocator start(database.BatchableContext bc){
        string query = 'select id,leadsource from lead';
        return database.getQueryLocator(query);
    }
    global void execute(database.BatchableContext bc,list<lead> scope){
        list<lead> list1= new list<lead>();
            for(lead l:scope){
                l.leadsource = 'dreamforce';
                list1.add(l);
            }
            update list1;
    }
    global void finish(database.BatchableContext bc){
        system.debug('updated');
    }
}