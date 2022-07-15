trigger task9 on Account (after insert) {
    list<task> tasks= new list<task>();
    user u=[select id from user where alias='pkatz'];
    for(account a:trigger.new){
        if(a.Type=='prospect')  {
            task t= new task();
            t.whatid=a.id;
            tasks.add(t);
        }
    }
    insert tasks;
}