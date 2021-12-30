<aura:application extends="force:slds">
    <aura:attribute name="dynamicField" type="Aura.component[]"/>
    <aura:handler name="init" value="{!this}" action="{!c.doInit}"/>
    {!v.dynamicField}
<br>
        <Lightning:button variant="brand" onclick="{!c.setVal}" label="setVal"/>
    </br>
    </aura:application>