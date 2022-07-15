trigger OrderEventTrigger on Order_Event__e (after insert) {
// Trigger for listening to Cloud_News events.  
    // List to hold all cases to be created.
    List<task> tasks = new List<task>();
    
    // Get queue Id for case owner
    user queue = [SELECT Id FROM user WHERE alias='ttrail' ];
       
    // Iterate through each notification.
    for (Order_Event__e event : Trigger.New) {
        if (event.Has_Shipped__c == true) {
            // Create Case to dispatch new team.
            task ts = new task();
            ts.Priority = 'High';
            ts.Subject = 'Follow up on shipped order ' + event.Order_Number__c;
            ts.OwnerId = queue.id;
            tasks.add(ts);
        }
   }
    
    // Insert all cases corresponding to events received.
    insert tasks;
}