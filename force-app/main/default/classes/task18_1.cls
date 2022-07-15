global class task18_1 implements database.Batchable<sobject>{
    global database.QueryLocator start(database.BatchableContext bc){
       profile p=[select id from profile where name='system administrator'];
        user u =[select id from user where profileid=:p.id];
        string query='select id,name from account where ownerid in:\''+u.id+'\'';
        return database.getquerylocator(query);
    }
    global void execute(database.batchablecontext bc,list<account> scope){
         profile p1=[select id from profile where name='custom hiring manager'];
        user u1=[select id from user where profileid=:p1.id limit 1];
        for(account a:scope){
            a.ownerid=u1.id; 
        }
        update scope;
    }
    global void finish(database.BatchableContext bc){
        
    }
}