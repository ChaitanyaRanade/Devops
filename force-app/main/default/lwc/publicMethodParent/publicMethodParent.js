import { LightningElement,track } from 'lwc';

export default class PublicMethodParent extends LightningElement {
    @track value;

    onClickHandler(){
        const childComp = this.template.querySelector('public-method-child');
        const returnedMessage = childComp.selectCheckbox(this.value);
        console.log('Returned Message: ', returnedMessage);
    }

    inputChangeHandler(event){
        this.value = event.target.value;
    }
}