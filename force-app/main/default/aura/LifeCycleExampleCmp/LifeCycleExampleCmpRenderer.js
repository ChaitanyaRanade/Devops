({
    rerender : function(component,helper){
        var ret2 = this.superRerender();
        console.log("Inside rerender");
        console.log("DOM ELEMENT IN rerender"+component.find("example").getElement());
    },
    afterRender : function(component,helper){
        var ret3 = this.superAfterRender();
        console.log("Inside afterRender")
        console.log("DOM ELEMENT IN render"+component.find("example").getElement());
    }

})