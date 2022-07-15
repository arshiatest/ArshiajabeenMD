({
    "save" : function(cmp) {
        var action = cmp.get("c.doSave");
       // var survey
        action.setParams({ surveyIs : cmp.get("v.survey") });

        action.setCallback(this, function(response) {
            var state = response.getState();
           // alert(state);
            if (state === "SUCCESS") {
           console.log( response.getReturnValue());
	cmp.set('v.surveyCompleted',true);
            }
            else if (state === "INCOMPLETE") {
                // do something
            }
            else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        console.log("Error message: " + 
                                 errors[0].message);
                    }
                } else {
                    console.log("Unknown error");
                }
            }
        });

        // optionally set storable, abortable, background flag here

        // A client-side action could cause multiple events, 
        // which could trigger other events and 
        // other server-side action calls.
        // $A.enqueueAction adds the server-side action to the queue.
        $A.enqueueAction(action);
    }
})