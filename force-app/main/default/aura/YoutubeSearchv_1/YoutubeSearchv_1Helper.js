({
	setValue : function(component) {
		var fieldVal = component.find("searchBox").getElement().value;
        alert(fieldVal);
        component.set("v.searchTerm",fieldVal);
	}
})