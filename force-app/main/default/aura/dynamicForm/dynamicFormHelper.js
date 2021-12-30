({
    createFields : function(component,helper,event) {
        var dynamicData = [
            ["Lightning:input",{
                "label" : "Text Field",
                "name" : "TextField",
                "aura:id" : "formId"
            }],
            ["Lightning:input",{
                "type":"search",
                "label":"search",
                "aura:id":"formId"
            }],
            ["Lightning:input",{
                "type": "checkbox",
                "label":"checkbox",
                "aura:id":"formId"
            }],
                
                ];
                $A.createComponents(dynamicData,
                function(components,status,errorMessage){
                if(status === "SUCCESS"){
                var compBody = component.get("v.dynamicField");
                components.forEach(function(element){
                compBody.push(element);
            });
                component.set("v.dynamicField",compBody);
            }
            }
                );
            }
            })