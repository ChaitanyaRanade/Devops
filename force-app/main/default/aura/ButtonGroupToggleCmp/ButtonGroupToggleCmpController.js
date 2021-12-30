({
    click : function(component, event, helper) {
        var btns = component.find("mybtn");
        btns.forEach(function(buttonCmp){
            buttonCmp.set("v.variant","neutral");
        });
        event.getSource().set("v.variant","brand");
    }
})