({
    showDetails : function(component, event, helper) {
        helper.toggleClass(component,'backdrop','slds-backdrop--');
        helper.toggleClass(component,'modaldialog','slds-fade-in-');
        helper.getOpportunitylst(component,event);
    },
    hideModal : function(component, event, helper){
        helper.toggleClass(component,'backdrop','slds-backdrop--');
        helper.toggleClass(component,'modaldialog','slds-fade-in-');
    }
})