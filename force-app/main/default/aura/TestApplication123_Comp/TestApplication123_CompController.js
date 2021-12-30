({
	InitCall : function(component, event, helper) {
		var tes = component.get("v.testVar");
        
        var act = component.get("c.getAccount");
        
        act.setParams({ Ind : "Banking"});
        act.setCallback(this, function(response){
            var state = response.getState();
            if(state = "SUCCESS"){
                var res = response.getReturnValue();
                alert(res);
                component.set("v.testVar",res);
            }
        });        
        
        $A.enqueueAction(act);
        
	}
})