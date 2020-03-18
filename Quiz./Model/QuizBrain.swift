//
//  QuizBrain.swift
//  Quiz.
//
//  Created by Kuba  on 17/03/2020.
//  Copyright © 2020 Kuba . All rights reserved.
//

import Foundation
import UIKit



struct QuizBrain {
    
    let quiz = [
        Question(q: "Stolica Hiszpani to?", a: ["Madryt", "Saragossa", "Sewilla"], rightAnswer: "Madryt"),
        Question(q: "Stolica Polski to?", a: ["Kraków", "Wrocław", "Warszawa"], rightAnswer: "Warszawa"),
        Question(q: "Stolica Francij to?", a: ["Paryż", "Wersal", "Meaux"], rightAnswer: "Paryż"),
        Question(q: "Stolica Niemiec to?", a: ["Drezno", "Berlin", "Lipsk"], rightAnswer: "Berlin"),
        Question(q: "Stolica Kanady to?", a: ["Montreal", "Toronto", "Ottawa"], rightAnswer: "Ottawa")
    ]
    
    var questionNumber = 0
    var score = 0
    
    func getQuestionText() -> String {
        return quiz[questionNumber].question
    }
    func getAnswer() -> [String] {
        return quiz[questionNumber].answer
    }
    func getProgress() -> Float {
        
        let progress = Float(questionNumber + 1) / Float(quiz.count)
        return progress 
    }
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            score = 0
            questionNumber = 0
        }
    }
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].correctAnswer{
            score += 1
            return true
        } else {
            return false
        }
    }
    mutating func getScore() -> Int {
        return score
    }
    

}
