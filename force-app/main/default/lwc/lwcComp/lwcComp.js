import { LightningElement, track} from 'lwc';

export default class LwcComp extends LightningElement {
    @track dynamicGreeting = "World";
    
    greetingchangehandler(event){
        this.dynamicGreeting = event.target.value;
    }
}