<aura:application extends="force:slds">
  <!-- Create attribute to store lookup value as a sObject--> 
  <aura:attribute name="selectedLookUpRecord" type="sObject" default="{}"/>
 
  <c:customLookup aura:id="R" objectAPIName="user" IconName="standard:user" selectedRecord="{!v.selectedLookUpRecord}" label="User Name"/>
 <!-- here c: is org. namespace prefix-->
</aura:application>