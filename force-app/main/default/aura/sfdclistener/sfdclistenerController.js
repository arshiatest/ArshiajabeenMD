({
	init : function(component, event, helper) {
		var myPageRef = component.get("v.pageReference");
		console.log(myPageRef);
		var firstname = myPageRef.state.c__firstName;
		component.set("v.firstName", firstname);
	}
})