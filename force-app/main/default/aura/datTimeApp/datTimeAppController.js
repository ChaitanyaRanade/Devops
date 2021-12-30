({
	setDate : function(component, event, helper) {
		var inputDate = component.get("v.InputDateVal");
        var selectedFormat = component.find("select").get("v.value");
        var output = $A.localizationService.formatDate(inputDate,selectedFormat);
        component.set("v.OutputDateVal",output);
	}
})