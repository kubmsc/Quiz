//
//  Question.swift
//  Quiz.
//
//  Created by Kuba  on 17/03/2020.
//  Copyright © 2020 Kuba . All rights reserved.
//

import Foundation


struct  Question {
    let question: String
    let answer: [String]
    let correctAnswer: String
    
    
    init(q: String, a: [String], rightAnswer: String) {
        question = q
        answer = a
        correctAnswer = rightAnswer
    }
    

}
