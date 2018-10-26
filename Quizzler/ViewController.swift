//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    //this initialize a new questionbank object
    //its like = new object()
    let allQuestions = QuestionBank()
    
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0 //going to keep track of the state of the app , which question are they on
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //accessing the array property of the questionBank
        //when this loads the first question will be up
        let firstQuestion = allQuestions.list[0]
        //firstquestion holds text and answer values
        //change the label to firstquestion
        questionLabel.text = firstQuestion.questionText
        
    }

//this button is linked to true and false
    
    @IBAction func answerPressed(_ sender: AnyObject) {
        //check if tag == 1 that is true
        if sender.tag == 1
        {
            //the value should be assign to true
            pickedAnswer = true
        }
        else if sender.tag == 2
        {
            //if its not true they clicked the false button
            pickedAnswer = false
        }
        checkAnswer()
        //increase the quetion number
        // you cant questionNumber++
        questionNumber = questionNumber + 1
        nextQuestion()
        
        
  
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        //change the text to the next question
        if questionNumber <= 12
        {
        questionLabel.text = allQuestions.list[questionNumber].questionText
        }else
        {
            print("end of quiz")
            questionNumber = 0 // reset the counter once the game is over
        }
    
    
    func checkAnswer() {
        //we need to compare the correct answer w the picked answer
        //you can take the two lines and put them into one
        let firstQuestion = allQuestions.list[questionNumber].answer
        if pickedAnswer == firstQuestion
        {
            print("your right")
        }
        else
        {
            print("your wrong")
        }
    }
    
    
    func startOver() {
       
    }
    

    
}
