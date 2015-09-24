//
//  ViewController.swift
//  Multiplication Game
//
//  Created by Rosario Tarabocchia on 9/24/15.
//  Copyright © 2015 RLDT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblQuestion: UILabel!
    @IBOutlet weak var lblTotalCorrect: UILabel!
    @IBOutlet weak var lblTotalIncorrect: UILabel!
    @IBOutlet weak var lblCorrectIncorrect: UILabel!
    @IBOutlet weak var btnAnswer0: UIButton!
    @IBOutlet weak var btnAnswer1: UIButton!
    @IBOutlet weak var btnAnswer2: UIButton!
    @IBOutlet weak var btnAnswer3: UIButton!
    
    var firstNumber : Int = 0
    var secondNumber : Int = 0
    var answer : Int = 0
    
    var buttonCorrect : Int = 0
    
    var incorrectAnswer1 : Int = 0
    var incorrectAnswer2 : Int = 0
    var incorrectAnswer3 : Int = 0
    
    var totalCorrect : Int = 0
    var totalIncorrect : Int = 0
    
    var correctIncorrect = ""
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomizeTheNumbers()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    @IBAction func btnAnswer0ACTION(sender: UIButton) {
        
        if buttonCorrect == 0 {
            button0Correct()
        }
        
        else if buttonCorrect != 0 {
            
            incorrectLogic()
        }
    }
    
    
    @IBAction func btnAnswer1ACTION(sender: UIButton) {
        
        if buttonCorrect == 1 {
            button1Correct()
        }
            
        else if buttonCorrect != 1 {
            
            incorrectLogic()
        }
        
        
    }
    
    
    @IBAction func btnAnswer2ACTION(sender: UIButton) {
        
        if buttonCorrect == 2 {
            button2Correct()
        }
            
        else if buttonCorrect != 2 {
            
            incorrectLogic()
        }
        
    }
    
    
    @IBAction func btnAnswer3ACTION(sender: UIButton) {
        
        
        if buttonCorrect == 3 {
            button3Correct()
        }
            
        else if buttonCorrect != 3 {
            
            incorrectLogic()
        }
    
    }
    
    
    @IBAction func btnResetACTION(sender: UIButton) {
        totalIncorrect = 0
        totalCorrect = 0
        correctIncorrect = ""
        
        lblTotalCorrect.text = "Total Correct: \(totalCorrect)"
        lblTotalIncorrect.text = "Total Incorrect: \(totalIncorrect)"
        lblCorrectIncorrect.text = "\(correctIncorrect)"
        
        
        
        randomizeTheNumbers()
    }
    
    
    func randomizeTheNumbers(){
        firstNumber = Int(arc4random_uniform(11))
        secondNumber = Int(arc4random_uniform(11))
        answer = firstNumber * secondNumber
        
        buttonCorrect = Int(arc4random_uniform(4))
        
        incorrectAnswer1 = Int(arc4random_uniform(101))
        incorrectAnswer2 = Int(arc4random_uniform(101))
        incorrectAnswer3 = Int(arc4random_uniform(101))

        
        randomNumberCheck()
        printTheButtonText()
        printQuestion()
        
        
        }
    
    
    func printQuestion(){
        
        lblQuestion.text = "\(firstNumber) x \(secondNumber) = ?"
        
    }
    
    func randomNumberCheck(){
        
        if answer == incorrectAnswer1 || answer == incorrectAnswer2 || answer == incorrectAnswer3 || incorrectAnswer1 == incorrectAnswer2 || incorrectAnswer1 == incorrectAnswer3 || incorrectAnswer2 == incorrectAnswer3 {
            
            incorrectAnswer1 = Int(arc4random_uniform(101))
            incorrectAnswer2 = Int(arc4random_uniform(101))
            incorrectAnswer3 = Int(arc4random_uniform(101))
            
        }
        
        
        
        
    }
    
    
    func printTheButtonText(){
        
        if buttonCorrect == 0 {
            btnAnswer0.setTitle("\(answer)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            }
        
        if buttonCorrect == 1 {
            btnAnswer0.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(answer)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
        }
        
        if buttonCorrect == 2 {
            btnAnswer0.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(answer)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
        }
        
        if buttonCorrect == 3 {
            btnAnswer0.setTitle("\(incorrectAnswer3)", forState: UIControlState.Normal)
            btnAnswer1.setTitle("\(incorrectAnswer1)", forState: UIControlState.Normal)
            btnAnswer2.setTitle("\(incorrectAnswer2)", forState: UIControlState.Normal)
            btnAnswer3.setTitle("\(answer)", forState: UIControlState.Normal)
        }
        
        
        
        
        
        
        
        
    }
    
    func incorrectLogic(){
        
        totalIncorrect = totalIncorrect + 1
        correctIncorrect = "INCORRECT"
        
        printCorrectIncorrect()
        
        randomizeTheNumbers()
        
    }
    
    func correctLogic(){
        
        totalCorrect = totalCorrect + 1
        correctIncorrect = "CORRECT"
        
        printCorrectIncorrect()
        
        randomizeTheNumbers()
        
        
    }
    
    func button0Correct(){
        correctLogic()
        
    }
    
    func button1Correct(){
        correctLogic()
        
    }
    
    func button2Correct(){
        correctLogic()
        
    }
    
    func button3Correct(){
        correctLogic()
        
    }
    
    func printCorrectIncorrect(){
        
        lblTotalCorrect.text = "Total Correct: \(totalCorrect)"
        lblTotalIncorrect.text = "Total Incorrect: \(totalIncorrect)"
        lblCorrectIncorrect.text = "\(correctIncorrect)"
        
        
    }
    

    
    
    
    
    
    
    
    
    
    


}

