import { LightningElement } from 'lwc';

export default class HelloQuerySelectorDemo extends LightningElement {
    userNames = ["Smith","Warner","Wade"]
    onClickHandler(){
        const ele = this.template.querySelector('h1')
        ele.style.border='1px solid red'
        console.log(ele.innerText)
        const elements = this.template.querySelectorAll('.name')
        Array.from(elements).forEach( item => {
            item.setAttribute("title",item.innerText)
            console.log(item.innerText)
        })
        const ele1 = this.template.querySelector('.child')
        ele1.innerHTML = '<p>Hey I am a Child Element<p>'
    }
}