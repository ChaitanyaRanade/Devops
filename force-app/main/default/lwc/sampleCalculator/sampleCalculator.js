import { LightningElement, track    } from 'lwc';

export default class SampleCalculator extends LightningElement {
    @track outputResult;
    @track previousResults = [];
    @track showPreviousResults = false;

    firstNumber;
    secondNumber;

    numberChangeHandler(event){
        const inputBoxName = event.target.name;
        if(inputBoxName === 'FirstNumber'){
         this.firstNumber = event.target.value;
        }
        else if(inputBoxName === 'SecondNumber'){
            this.secondNumber = event.target.value;
        }
    }

    showPreviousResultsToggle(event){
        this.showPreviousResults = event.target.checked;
        alert(this.previousResults);
    }

    addHandler(){
        const firstN = parseInt(this.firstNumber);
        const secondN = parseInt(this.secondNumber);
        this.outputResult = `Result of ${firstN} and ${secondN} is ${firstN+secondN}`; 
        this.previousResults.push(this.outputResult);
    }

    subHandler(){
        const firstN = parseInt(this.firstNumber);
        const secondN = parseInt(this.secondNumber);
        this.outputResult = `Result of ${firstN} and ${secondN} is ${firstN-secondN}`; 
        this.previousResults.push(this.outputResult);
    }

    mulHandler(){
        const firstN = parseInt(this.firstNumber);
        const secondN = parseInt(this.secondNumber);
        this.outputResult = `Result of ${firstN} and ${secondN} is ${firstN*secondN}`; 
        this.previousResults.push(this.outputResult);
    }

    divHandler(){
        const firstN = parseInt(this.firstNumber);
        const secondN = parseInt(this.secondNumber);
        this.outputResult = `Result of ${firstN} and ${secondN} is ${firstN/secondN}`; 
        this.previousResults.push(this.outputResult);
    }


}