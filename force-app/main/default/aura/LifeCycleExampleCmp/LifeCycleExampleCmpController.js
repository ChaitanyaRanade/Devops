({
    doInit : function(component, event, helper) {
        console.log("Inside Init Event");
        console.log("Find component in Init Event"+component.find("example").getElement());
    },
    onRender : function(component, event, helper){
        console.log("Inside Render");
        console.log("Step4");
        console.log("Find the component once Render Event is fired"+component.find("example").getElement());
    },
    handleClick : function(component, event, helper){
        component.set("v.search","test");
    }
})