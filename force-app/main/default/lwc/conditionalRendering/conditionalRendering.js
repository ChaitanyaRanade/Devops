import { LightningElement, track} from 'lwc';

export default class ConditionalRendering extends LightningElement {
    @track booleanValue = false;

    @track cityList = ['Bengaluru','Jaipur','Hyderabad'];
    capturevalue(event){
        this.booleanValue = event.target.checked;
    }
}