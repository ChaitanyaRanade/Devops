({
	handlerEvent : function(component, event) {
		var msg = event.getParam("attName");
        component.set("v.Name",msg);
	}
})