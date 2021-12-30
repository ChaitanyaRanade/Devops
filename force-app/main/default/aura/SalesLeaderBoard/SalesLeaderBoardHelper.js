({
    setdashboard : function(component) {
        var action = component.get("c.getSLDashboardData");
        var self = this;
        action.setCallback(this,function(response) {
            var state = response.getState();
            if(component.isValid && state == "SUCCESS"){
                component.set("v.lstsalesuser",response.getReturnValue());
            }
            else if(state == "ERROR"){
                console.log("Error"+response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
    }
})