({
    handleClick : function(component, event, helper) {
        console.log(event.target.innerHTML);
        console.log("Current Target"+event.currentTarget.innerHTML);
        var divEle = document.getElementById("divId");
        divEle.addEventListener("click",helper.helperMethod(component,event),false);
    }
})