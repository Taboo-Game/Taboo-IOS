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
    
    var trueCount = 0
    var passCount = 0
    var falseCount = 0
    
    
    @IBOutlet weak var circleView: UIView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    
    @IBOutlet weak var wordDesc: UILabel!
    
    @IBOutlet weak var forbidden1: UILabel!
    @IBOutlet weak var forbidden2: UILabel!
    
    @IBOutlet weak var forbidden3: UILabel!
    @IBOutlet weak var forbidden4: UILabel!
    @IBOutlet weak var forbidden5: UILabel!
    
    
    @IBOutlet weak var firsTeamScore: UILabel!
    
    @IBOutlet weak var secondTeamScore: UILabel!
    
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

        // Do any additional setup after loading the view.
    }
    

    
    
    
    @IBAction func trueClicked(_ sender: Any) {
        
        trueCount += 1
        word = wordsArray.randomElement()
        wordDesc.text = word?.wordDescribe
        wordDesc.textColor = UIColor.blue
        forbidden1.text = word?.wordForbidden1
        forbidden2.text = word?.wordForbidden2
        forbidden3.text = word?.wordForbidden3
        forbidden4.text = word?.wordForbidden4
        forbidden5.text = word?.wordForbidden5
        firsTeamScore.text = "\(trueCount)"
    }
    @IBAction func passClicked(_ sender: Any) {
        
        passCount += 1
        word = wordsArray.randomElement()
        wordDesc.text = word?.wordDescribe
        forbidden1.text = word?.wordForbidden1
        forbidden2.text = word?.wordForbidden2
        forbidden3.text = word?.wordForbidden3
        forbidden4.text = word?.wordForbidden4
        forbidden5.text = word?.wordForbidden5
    }
    @IBAction func falseClicked(_ sender: Any) {
        
        falseCount += 1
        word = wordsArray.randomElement()
        wordDesc.text = word?.wordDescribe
        wordDesc.textColor = UIColor.blue
        forbidden1.text = word?.wordForbidden1
        forbidden2.text = word?.wordForbidden2
        forbidden3.text = word?.wordForbidden3
        forbidden4.text = word?.wordForbidden4
        forbidden5.text = word?.wordForbidden5
    }
    
}
