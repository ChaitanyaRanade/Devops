({
	handleClick : function(component, event, helper) {
		var btn = component.find("spinner");
        $A.util.toggleClass(btn,"toggle");
        alert($A.get("$Locale.timezone"));
	}
})