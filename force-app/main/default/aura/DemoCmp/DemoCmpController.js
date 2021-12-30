({
    handleClick : function(component, event, helper) {
        var divName = component.find("spinner");
        console.log(divName);
        $A.util.toggleClass(divName,"toggle");  
    }
})