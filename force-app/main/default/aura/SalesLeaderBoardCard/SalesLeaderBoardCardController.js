({
    displayOpportunities : function(component, event, helper) {
        var appEvent = $A.get("e.c:displayDetails");
        appEvent.setParams({"owner": component.get("v.SalesUser.userId")});
        appEvent.fire();
    }
})