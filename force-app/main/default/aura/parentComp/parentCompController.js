({
	handleEvent : function(component, event, helper) {
		var evt = event.getParam("testEvt");
        component.set("v.Name",evt);
	}
})