({
	handleClick : function(component, event) {
        var appEvent = $A.get("e.c:testApplicationEvent");
        appEvent.setParams({"attVal" : "Set by Application Event"});
        appEvent.fire();
	}
})