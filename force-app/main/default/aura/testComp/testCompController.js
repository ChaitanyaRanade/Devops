({
doInit : function(component, event) {
    var action = component.get("c.getList");
    action.setCallback(this, function(a) {
        component.set("v.contacts", a.getReturnValue());
    });
    $A.enqueueAction(action);
},
customRedirect : function (component, event){

    var selectedItem = event.currentTarget;
    var selectedId = selectedItem.dataset.contactId;

    console.log("selected ID = "+selectedId);          

    var navEvt = $A.get("e.force:navigateToSObject");
    navEvt.setParams({

        "recordId": selectedId,

        "slideDevName": "detail"

    });

    navEvt.fire(); 

},
openPop : function(component, event, helper) {
    var cmpTarget = component.find('pop');
	$A.util.addClass(cmpTarget, 'slds-show');
    $A.util.removeClass(cmpTarget, 'slds-hide');
},
    closePop : function(component, event, helper) {
    var cmpTarget = component.find('pop');
    $A.util.addClass(cmpTarget, 'slds-hide');
    $A.util.removeClass(cmpTarget, 'slds-show');

}
})