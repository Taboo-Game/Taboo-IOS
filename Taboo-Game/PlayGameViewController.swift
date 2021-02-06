//
//  PlayGameViewController.swift
//  Taboo-Game
//
//  Created by Furkan Kaan Ugsuz on 21/01/2021.
//

import UIKit


var teamOneScore = 0
var teamTwoScore = 0


class PlayGameViewController: UIViewController {
    
    var word: Word?
    
    var passCount = 0
    
    var player1trueCount = 0
    var player1falseCount = 0
    
    var player2trueCount  = 0
    var player2falseCount = 0
   
    
    
    
    // takimlari degistirir
    
    var takimchange = true
    // timer
    var runCount = selectedTime
    var pasLimitCount = skipNumber
    
    @IBOutlet weak var passButton: UIButton!
    
    
    @IBOutlet weak var circleView: UIView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    
    @IBOutlet weak var passCountLbl: UILabel!
    @IBOutlet weak var wordDesc: UILabel!
    
    @IBOutlet weak var forbidden1: UILabel!
    @IBOutlet weak var forbidden2: UILabel!
    
    @IBOutlet weak var forbidden3: UILabel!
    @IBOutlet weak var forbidden4: UILabel!
    @IBOutlet weak var forbidden5: UILabel!
    
    
    @IBOutlet weak var firsTeamScore: UILabel!
    
    @IBOutlet weak var secondTeamScore: UILabel!
    
    @IBOutlet weak var timerTableLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circleView.layer.cornerRadius = circleView.frame.height/2
        backButton.layer.cornerRadius = backButton.frame.height/2
        nextButton.layer.cornerRadius = nextButton.frame.height/2
        
        
        
        word = wordsArray.randomElement()
        wordDesc.text = word?.wordDescribe
        wordDesc.textColor = UIColor.blue
        forbidden1.text = word?.wordForbidden1
        forbidden2.text = word?.wordForbidden2
        forbidden3.text = word?.wordForbidden3
        forbidden4.text = word?.wordForbidden4
        forbidden5.text = word?.wordForbidden5

        
        timerCount(runTimerCount: runCount)
        self.timerTableLbl.text = "\(runCount)"
        // Do any additional setup after loading the view.
    }
    

    
    
    
    @IBAction func trueClicked(_ sender: Any) {
        
        //trueCount += 1
        takimCheckTrue()
        randomQuestion()
    }
    @IBAction func passClicked(_ sender: Any) {
        
        if passCount < pasLimitCount
        {
            
            passCount += 1
            passCountLbl.text = "\(passCount)/ \(pasLimitCount)"
            
            randomQuestion()
        }
        else
        {
            passButton.isEnabled = false
        }
        
       
  
    }
    @IBAction func falseClicked(_ sender: Any) {
        
        player1falseCount += +1
        
        randomQuestion()
    }
    func takimCheckTrue ()
    {
        if takimchange
        {
            player1trueCount += 1
            
        }
        else {
            player2trueCount += 1
        }
    }
    func takimCheckFalse ()
    {
        if takimchange
        {
            player1falseCount += +1
            
        }
        else {
            
            player2falseCount += +1
        }
    }
    
    
    func timerCount( runTimerCount : Int ){
        var timerCount = runTimerCount
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            print("Timer fired!")
            timerCount += -1
            print(timerCount)
            self.timerTableLbl.text = "\(timerCount)"

            if timerCount == 0 {
                timer.invalidate()
                
                if self.takimchange
                {
                    self.takimchange  = false
                    
                }
                else {
                    self.takimchange = true
                }
                self.passCount = 0
                self.passButton.isEnabled = true
                self.passCountLbl.text = "\(self.passCount)/ \(self.pasLimitCount)"
                print("burda bi gariplik var")
                self.randomQuestionWithTimer()
                print("random cagirildi ")
            
            }
        }
    }
    func randomQuestion ()
    {
        
        word = wordsArray.randomElement()
        wordDesc.text = word?.wordDescribe
        wordDesc.textColor = UIColor.blue
        forbidden1.text = word?.wordForbidden1
        forbidden2.text = word?.wordForbidden2
        forbidden3.text = word?.wordForbidden3
        forbidden4.text = word?.wordForbidden4
        forbidden5.text = word?.wordForbidden5
        
        if self.takimchange
        {
            firsTeamScore.text = "\(player1trueCount-player1falseCount)"
            
        }
        else {
            secondTeamScore.text = "\(player2trueCount-player2falseCount)"
        }
        
    }
    func randomQuestionWithTimer ()
    {
        timerCount(runTimerCount: runCount+1)
        word = wordsArray.randomElement()
        wordDesc.text = word?.wordDescribe
        wordDesc.textColor = UIColor.blue
        forbidden1.text = word?.wordForbidden1
        forbidden2.text = word?.wordForbidden2
        forbidden3.text = word?.wordForbidden3
        forbidden4.text = word?.wordForbidden4
        forbidden5.text = word?.wordForbidden5
        
        if self.takimchange
        {
            firsTeamScore.text = "\(player1trueCount-player1falseCount)"
            
        }
        else {
            secondTeamScore.text = "\(player2trueCount-player2falseCount)"
        }
    }
    
    
    
    
}
