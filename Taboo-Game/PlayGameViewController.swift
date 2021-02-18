//
//  PlayGameViewController.swift
//  Taboo-Game
//
//  Created by Furkan Kaan Ugsuz on 21/01/2021.
//

import UIKit
import NXDrawKit



var teamOneScore = 0
var teamTwoScore = 0


class PlayGameViewController: UIViewController {
    
    
    
    /////
    
    // play view style telling properties
    weak var canvasView: Canvas?
    weak var paletteView: Palette?
   
    
    @IBOutlet weak var tabooCardView: UIView!
    
    
    
    ////////////
    
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
    
    @IBOutlet weak var drawingDelete: UIButton!
    
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
        
        
        
        switch style {
        case .drawing:
            print("ben cizim ekrani ")
            tabooCardView.isHidden = true
            drawingDelete.isHidden = false
            self.initialize()
            
        case .telling:
            print("ben anlatma ekrani ")
            drawingDelete.isHidden = true
            
       
        }
        
        
       

        
        timerCount(runTimerCount: runCount)
        self.timerTableLbl.text = "\(runCount)"
        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        let topMargin = UIApplication.shared.topSafeAreaMargin() + 140
        let leftMargin = UIApplication.shared.leftSafeAreaMargin() + 20
        let rightMargin = UIApplication.shared.rightSafeAreaMargin() + 20
        let bottomMargin = UIApplication.shared.bottomSafeAreaMargin()
        let width = view.frame.width
       // let height = view.frame.height

        self.canvasView?.frame = CGRect(x: leftMargin,
                                        y: topMargin,
                                        width: width - (leftMargin + rightMargin),
                                        height: width + 30 - (leftMargin + rightMargin))


       // self.toolBar?.frame = CGRect(x: 0, y: (Int(view.frame.height - bottomMargin - 20) )  , width: Int(view.frame.width), height: Int(bottomMargin) )
      
    }
    
    private func initialize() {
        self.setupCanvas()   // cizim ekranini getiriyot
        //self.setupPalette()   // renk paneli ve tuslari getiriyor
        //self.setupToolBar()   // tuslari getiriyor
    }

     
    @IBAction func drawingDelete(_ sender: Any) {
        
        self.canvasView?.clear()
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
    private func setupCanvas() {
        let canvasView = Canvas()
        canvasView.delegate = self
        canvasView.layer.borderColor = UIColor(red: 0.22, green: 0.22, blue: 0.22, alpha: 0.8).cgColor
        canvasView.layer.borderWidth = 2.0
        canvasView.layer.cornerRadius = 5.0
        canvasView.clipsToBounds = true
        self.view.addSubview(canvasView)
        self.canvasView = canvasView
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
extension PlayGameViewController: CanvasDelegate {
    func brush() -> Brush? {
    return self.paletteView?.currentBrush()
    }
}
extension UIApplication {
    public func topSafeAreaMargin() -> CGFloat {
        var topMargin: CGFloat = 0
        if #available(iOS 11.0, *), let topInset = keyWindow?.safeAreaInsets.top {
            topMargin = topInset
        }
        
        return topMargin
    }
    
    public func bottomSafeAreaMargin() -> CGFloat {
        var bottomMargin: CGFloat = 0
        if #available(iOS 11.0, *), let bottomInset = keyWindow?.safeAreaInsets.bottom {
            bottomMargin = bottomInset
        }
        
        return bottomMargin
    }
    
    public func leftSafeAreaMargin() -> CGFloat {
        var leftMargin: CGFloat = 0
        if #available(iOS 11.0, *), let leftInset = keyWindow?.safeAreaInsets.left {
            leftMargin = leftInset
        }
        
        return leftMargin
    }
    
    public func rightSafeAreaMargin() -> CGFloat {
        var rightMargin: CGFloat = 0
        if #available(iOS 11.0, *), let rightInset = keyWindow?.safeAreaInsets.right {
            rightMargin = rightInset
        }
        
        return rightMargin
    }
    
    public func safeAreaSideMargin() -> CGFloat {
        return leftSafeAreaMargin() + rightSafeAreaMargin()
    }
}
