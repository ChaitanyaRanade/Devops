({
	search : function(component, event, helper) {
        var firstName = component.find("firstName").get("v.value");
        var lastName = component.find("lastName").get("v.value");
        var phone = component.find("phone").get("v.value");
		var action = component.get("c.fetchAll");
        action.setParams({"firstName":firstName,"lastName":lastName,"Phone":phone});
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state === "SUCCESS"){
                var result = response.getReturnValue();
                component.set("v.Columns",[
                    {label:"Name",fieldName:"Name",type:"Text"},
                    {label:"Phone",fieldName:"Phone",type:"Text"},
                    {label:"Industry",fieldName:"Industry",type:"Text"},
                    {label:"Rating",fieldName:"Rating",type:"Text"},
                ]);
                    component.set("v.Accounts",result);
            }
            else{
                console.log(response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
	}
})