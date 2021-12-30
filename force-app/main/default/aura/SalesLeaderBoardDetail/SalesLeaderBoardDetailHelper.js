({
    toggleClass : function(component,componentId,className) {
        var cmp = component.find(componentId);
        $A.util.removeClass(cmp,className+'hide');
        $A.util.addClass(cmp,className+'open');
    },
    toggleInverseClass : function(component,componentId,className) {
        var cmp = component.find(componentId);
        $A.util.removeClass(cmp,className+'open');
        $A.util.addClass(cmp,className+'hide');
    },
    getOpportunitylst : function(component,componentId,className) {
        var action = component.get("c.SalesLeaderBoardController");
        var self = this;
        var ownerId = event.getParam("Owner");
        action.setParams({
            "ownerId" : ownerId
        });
        action.setCallback(this,function(response){
            var state = response.getState();
            if(component.isValid() && state == "SUCCESS"){
                component.set("v.lstOpps",response.getReturnValue());
            }
            else if(state == "ERROR"){
                var errors = response.getError();
            }
        });
        $A.enqueueAction(action);
    }
})