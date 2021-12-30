import { LightningElement } from 'lwc';

export default class QuizApp extends LightningElement {
    selected = {}
    correctAnswers = 0
    isSubmitted = false
    myQuestions =[
        {
            id:"Question1",
            question: "Which of the following is not a template loop?",
            answers: {
                a:"for:each",
                b:"iterator",
                c:"map loop"
            },
            correctAnswer: "c"
        },
        {
            id:"Question2",
            question: "Which of the file is invalid in LWC?",
            answers: {
                a:".svg",
                b:".apex",
                c:".js"
            },correctAnswer: "b"
        },
        {
            id:"Question3",
            question: "Which of the following is not a directive?",
            answers: {
                a:"for:each",
                b:"if:true",
                c:"@track"
            },
            correctAnswer: "c"
        }
    ]

    changeHandler(event){
        console.log("name",event.target.name)
        console.log("name",event.target.value)
        const {name,value} = event.target
        this.selected = {...this.selected,[name]:value}
        console.log("Selected",this.selected)
    }
    submitHandler(event){
        event.preventDefault()
        let correct = this.myQuestions.filter(item => this.selected[item.id] == item.correctAnswer)
        console.log("Correct",correct)
        this.correctAnswers = correct.length
        console.log("Correct Answers",this.correctAnswers)
        this.isSubmitted = true
    }
    resetHandler(event){
        this.selected = {}
        this.correctAnswers = 0
        this.isSubmitted = false
    }
    get allNotSelected(){
        return !(Object.keys(this.selected).length == this.myQuestions.length)
    }
    get isScoredFull(){
        return `slds-text-heading_large ${this.myQuestions.length === this.correctAnswers? 'slds-text-color_success':'slds-text-color_error'}`
    }
}