({
	handleClick : function(component, event, helper) {
		var evt = component.getEvent("SampleEvent");
        evt.setParams({"testEvt" : "Chaitanya"});
        evt.fire();
	}
})