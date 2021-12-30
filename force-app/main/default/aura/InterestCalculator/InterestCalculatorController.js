({
	calculate : function(component, event, helper) {
		var amount = component.get("v.amount");
        var rate = component.get("v.rate");
        var years = component.get("v.years");
        var interest = (amount*rate*years)/100;
        component.set("v.interest",interest);
	}
})