({
	handlerEvent : function(component, event) {
        var msg = event.getParam("attVal");
        component.set("v.Name",msg);                        
	}
})