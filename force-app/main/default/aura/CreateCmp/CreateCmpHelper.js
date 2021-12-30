({
    doInit : function(component,event,helper) {
        var dynamicFormInput = [["Lightning:input",{
            "label" : "Text Field",
            "name" : "TextField",
            "aura:id" : "dynamicFormId"
        }],
        ["Lightning:input",{
            "type" : "search",
            "label" : "Search",
            "name" : "Search",
            "aura:id" : "dynamicFormId"
        }],
        ["Lightning:input",{
            "type" : "checkbox",
            "label" : "Text Field",
            "name" : "TextField",
            "aura:id" : "dynamicFormId"
        }]
    ];
    $A.createComponents(dynamicFormInput,
        function(components,status,errorMessage){
            if(status == "SUCCESS"){
                var formBody = component.get("v.dynamicForm");
                components.forEach(function(ele){
                    formBody.push(ele);
                    console.log(ele);
                });
                component.set("v.dynamicForm",formBody);
            }
            else if(status === "INCOMPLETE"){
                console.log("Error in Creating Component");
            }
            else if(status === "ERROR"){
                console.log("Error"+errorMessage);
            }
        }      
    );
    }
})