import { LightningElement } from 'lwc';

export default class SampleComponent1 extends LightningElement {
    carList = ["Ford","Maruti Suzuki","Toyota","Honda","Renault"]
    ceoList = [
        {
            id:1,
            company:"Google",
            CEO:"Sundar Pichai"
        },
        {
            id:1,
            company:"Facebook",
            CEO:"Mark Zuckerburg"
        },
        {
            id:1,
            company:"Amazon",
            CEO:"Jeff Bezos"
        },
        {
            id:1,
            company:"Tesla",
            CEO:"Elon Musk"
        }
    ]
}