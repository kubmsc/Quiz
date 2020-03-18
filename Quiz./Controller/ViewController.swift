//
//  ViewController.swift
//  Quiz.
//
//  Created by Kuba  on 16/03/2020.
//  Copyright © 2020 Kuba . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var choiceA: roundButton!
    
    @IBOutlet weak var choiceB: roundButton!
    
    @IBOutlet weak var choiceC: roundButton!
    
    var quizBrain = QuizBrain()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        updateUI()
    }


    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer (userAnswer: userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = .green
            
        } else {
            sender.backgroundColor = .black
            choiceA.shake()
            choiceB.shake()
            choiceC.shake()
        }
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)

}
    
        @objc func updateUI() {
        
            
        progressBar.progress = quizBrain.getProgress()
        questionLabel.text = quizBrain.getQuestionText()
        
        let answerChoice = quizBrain.getAnswer()
        choiceA.setTitle(answerChoice[0], for: .normal)
        choiceB.setTitle(answerChoice[1], for: .normal)
        choiceC.setTitle(answerChoice[2], for: .normal)
        
        scoreLabel.text = "Wynik: \(quizBrain.getScore())"
        
        choiceA.backgroundColor = .red
        choiceB.backgroundColor = .red
        choiceC.backgroundColor = .red
        
    }
    
}
