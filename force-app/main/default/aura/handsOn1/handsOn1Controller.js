({
	onSingleSelectChange : function(cmp) {
        var selectedCmp = cmp.find("InputSelectSingle");
        cmp.set("v.World",selectedCmp.get("v.value"));
        
	}
})