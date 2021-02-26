//
//  SettıngsViewController.swift
//  Taboo-Game
//
//  Created by Furkan Kaan Ugsuz on 19/01/2021.
//

import UIKit

//var skipNumber = 3
//var selectedTime = 15
//var selectedDrawTime = 15
//var winPoint = 15
public let defaultsSettings = UserDefaults.standard


class SettingsViewController: UIViewController {

    @IBOutlet weak var skipLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var drawTime: UILabel!
    
    @IBOutlet weak var winScoreLabel: UILabel!
    
    @IBOutlet weak var skipSlider: UISlider!
    
    @IBOutlet weak var timeSLider: UISlider!
    
    @IBOutlet weak var drawTimeSlider: UISlider!
    
    @IBOutlet weak var scoreSlider: UISlider!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        skipSlider.setValue(Float(defaultsSettings.integer(forKey: "ShipSlider")), animated: true)
        timeSLider.setValue(Float(defaultsSettings.integer(forKey: "TellingTime")), animated: true)
        drawTimeSlider.setValue(Float(defaultsSettings.integer(forKey: "DrawingTime")), animated: true)
        scoreSlider.setValue(Float(defaultsSettings.integer(forKey: "WinScore")), animated: true)
        
        
        
        
        timeSLider.value = Float(defaultsSettings.integer(forKey: "TellingTime"))
//        if Float(defaultsSettings.integer(forKey: "ShipSlider")) as? Bool !=  true {
//            print("heyo ")
//        }
        
        if defaultsSettings.bool(forKey: "ShipSlider") {
            skipLabel.text = String(defaultsSettings.integer(forKey: "ShipSlider"))
        }
        else{
            
            skipSlider.setValue(Float(3), animated: true)
            defaultsSettings.setValue(Float(3), forKey: "ShipSlider")
            skipSlider.setValue(Float(defaultsSettings.integer(forKey: "ShipSlider")), animated: true)
            skipLabel.text = String(defaultsSettings.integer(forKey: "ShipSlider"))
            
            
        }
        if defaultsSettings.bool(forKey: "TellingTime") {
            timeLabel.text = String(defaultsSettings.integer(forKey: "TellingTime"))
        }
        else{
            timeSLider.setValue(Float(15), animated: true)
            defaultsSettings.setValue(Float(15), forKey: "TellingTime")
            timeSLider.setValue(Float(defaultsSettings.integer(forKey: "TellingTime")), animated: true)
            timeLabel.text = String(defaultsSettings.integer(forKey: "TellingTime"))
        }
        if defaultsSettings.bool(forKey: "DrawingTime") {
          
            drawTime.text = String(defaultsSettings.integer(forKey: "DrawingTime"))
            
        }
        else{
            drawTimeSlider.setValue(Float(20), animated: true)
            defaultsSettings.setValue(Float(20), forKey: "DrawingTime")
            drawTimeSlider.setValue(Float(defaultsSettings.integer(forKey: "DrawingTime")), animated: true)
            drawTime.text = String(defaultsSettings.integer(forKey: "DrawingTime"))
            
        }
        if defaultsSettings.bool(forKey: "WinScore") {
            winScoreLabel.text = String(defaultsSettings.integer(forKey: "WinScore"))
        }
        else{
            scoreSlider.setValue(Float(30), animated: true)
            defaultsSettings.setValue(Float(30), forKey: "WinScore")
            scoreSlider.setValue(Float(defaultsSettings.integer(forKey: "WinScore")), animated: true)
            winScoreLabel.text = String(defaultsSettings.integer(forKey: "WinScore"))
        }
        
        
    }
    
    @IBAction func skipChanged(_ sender: UISlider) {
        let currentValue = Int((sender.value))
        let temp : Double = (0.5) + Double(currentValue)
        skipSlider.setValue(Float(temp), animated: true)
       // skipNumber = Int(currentValue)
        skipLabel.text = "\(currentValue)"
        let defaultsSettings = UserDefaults.standard
        
        defaultsSettings.setValue(currentValue, forKey: "ShipSlider")
        
        
        
    }
    
    @IBAction func timeChanged(_ sender: UISlider) {
        let currentValue = Int((sender.value))
        let temp : Double = (0.5) + Double(currentValue)
        timeSLider.setValue(Float(temp), animated: true)
        //selectedTime =  Int(currentValue)
        
        timeLabel.text = "\(currentValue)"
        
        let defaultsSettings = UserDefaults.standard
        
        defaultsSettings.setValue(currentValue, forKey: "TellingTime")
        
        
    }
    
    
    @IBAction func drawTimeChange(_ sender: UISlider) {
        let currentValue = Int((sender.value))
        let temp : Double = (0.5) + Double(currentValue)
        drawTimeSlider.setValue(Float(temp), animated: true)
        //selectedDrawTime = Int(currentValue)
        drawTime.text = "\(currentValue)"
        
        let defaultsSettings = UserDefaults.standard
        
        defaultsSettings.setValue(currentValue, forKey: "DrawingTime")
        
        
    }
    
    @IBAction func winSocreChange(_ sender: UISlider) {
        let currentValue = Int((sender.value))
        let temp : Double = (0.5) + Double(currentValue)
        scoreSlider.setValue(Float(temp), animated: true)
        //winPoint = Int(currentValue)
        winScoreLabel.text = "\(currentValue)"
        let defaultsSettings = UserDefaults.standard
        
        defaultsSettings.setValue(currentValue, forKey: "WinScore")
        
        
        
    }
    
    @IBAction func myWordsClicked(_ sender: Any) {
        performSegue(withIdentifier: "toMyWords", sender: nil)
    }
    
    @IBAction func addWordClicked(_ sender: Any) {
        performSegue(withIdentifier: "toAddWord", sender: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
