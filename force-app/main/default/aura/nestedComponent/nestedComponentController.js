({
	getValue : function(component,event) {
		var FullName = component.find("Name").get("v.value");
        var OutputName = component.find("Name1");
        OutputName.set("v.value",FullName);
	}
})