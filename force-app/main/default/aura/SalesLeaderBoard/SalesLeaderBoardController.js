({
    getData : function(component, event, helper) {
        var getting = browser.windows.getCurrent({populate: true});
        alert(getting);
        helper.setdashboard(component);
    }
})