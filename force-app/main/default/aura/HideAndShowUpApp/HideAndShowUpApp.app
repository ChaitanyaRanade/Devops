<aura:application extends="force:slds">
    <div class="spinner" aura:id="spinner">
    <Lightning:spinner alternativeText = "Loading"/>
	</div>
    <Lightning:button label="Toggle" onclick = "{!c.handleClick}" variant = "brand" class="btn"/>
</aura:application>