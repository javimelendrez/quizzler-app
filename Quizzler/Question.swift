//
//  Question.swift
//  Quizzler
//
//  Created by javier melendrez on 10/15/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

//creating a new class
class Question{
    //these are the properties of the object
    let questionText : String
    let answer : Bool
    
    //initiialization code
    //this defines the event when a new question is created
    init(text : String, correctAnswer : Bool) {
        questionText = text
        answer = correctAnswer
    }
    
    
}
