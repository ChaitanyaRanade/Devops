({
    sectionOne : function(component, event, helper) {
       helper.helperFun(component,event,'articleOne');
        var action = component.get("c.getContacts");
        action.setCallback(this,function(response){
            var state = response.getState();
        if(state ==="SUCCESS"){
            alert("From server-------"+response.getReturnValue());
            component.set("v.contacts",response.getReturnValue());
            }               
        });
         $A.enqueueAction(action);
        

    }
})