({
getCon : function(cmp) {
    var action = cmp.get("c.getContacts");
    action.setCallback(this, function(response){
        var state = response.getState();
        if (state === "SUCCESS") {
            console.log('response.getReturnValue()',response.getReturnValue());
            cmp.set("v.contacts", response.getReturnValue());
        }
    });
    $A.enqueueAction(action);
}
})