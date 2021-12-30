<aura:application extends="force:slds">
    <aura:attribute type="dateTime" name="InputDateVal"/>
    <aura:attribute type="dateTime" name="OutputDateVal"/>
    <Lightning:input type="datetime-local" label="enter the date" value="{!v.InputDateVal}"/>
    <Lightning:select aura:id="select" label="select a pie" onchange="{!c.setDate}">
        <option value="choose one..">Choose One</option>
        <option value="YYYY MM DD">YYYY MM DD format</option>
    </Lightning:select>
    <p>OutputDate {!v.OutputDateVal}</p>
    
</aura:application>