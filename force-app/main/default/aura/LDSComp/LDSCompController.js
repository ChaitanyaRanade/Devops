({
	handleRecordUpdate : function(component, event, helper) {
        
        var evtParams = event.getParams();
        if(evtParams.changeType === "LOADED"){
            console.log("***********************Record loaded successfully********************");
        }
        
        if(evtParams.changeType === "CHANGED"){
            
        }
        if(evtParams.changeType === "REMOVED"){
            
        }
        if(evtParams.changeType === "ERROR"){
            
        }
	}
})