({
	doInit : function(component, event, helper) {
         console.log('entered here 1');
        var action = component.get("c.findcontacts");
            action.setCallback(this,function(a)
                               {
                               component.set("v.contactlist",a.getReturnValue());
                               }
                              );
        console.log('entered here 2');
        $A.enqueueAction(action);
	}
})