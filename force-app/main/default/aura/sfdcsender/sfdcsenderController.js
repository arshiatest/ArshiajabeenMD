({
	handleClick : function(component, event, helper) {
		var navService = component.find("navService");
		var pageReference = {
		    type: 'standard__component',
		    attributes: {
			componentName: 'c__Sfdclistener',
		    },
		    state: {
			"c__firstName": "John"
		    }
		};
		event.preventDefault();
		navService.navigate(pageReference);
	}
})