({
	handleClick : function(component, event, helper) {
        var buttonVar = event.getSource();
        var buttonString = buttonVar.get("v.label");
        component.set("v.message",buttonString);
		
	},
    
    handleClick1 : function(component,event,helper){
        var buttonMessage = event.getSource().get("v.label");
        console.log("handleClick1: newMessage:"+buttonMessage);
        component.set("v.message",buttonMessage);
        
    },
    
    handleClick2 : function(component,event,helper){
        component.set("v.message",event.getSource().get("v.label"));
    }
})