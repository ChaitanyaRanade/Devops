({
	handleClick : function(component, event) {
		
        var evt = component.getEvent("sampleEvent");
        evt.setParams({"attName":"Chaitanya"});
        evt.fire();
	}
})