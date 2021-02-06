//
//  SettıngsViewController.swift
//  Taboo-Game
//
//  Created by Furkan Kaan Ugsuz on 19/01/2021.
//

import UIKit

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
        
        skipSlider.setValue(Float(3), animated: true)
        timeSLider.setValue(Float(15), animated: true)
        drawTimeSlider.setValue(Float(15), animated: true)
        scoreSlider.setValue(Float(15), animated: true)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func skipChanged(_ sender: UISlider) {
        let currentValue = Int((sender.value))
        let temp : Double = (0.5) + Double(currentValue)
        skipSlider.setValue(Float(temp), animated: true)
        skipLabel.text = "\(currentValue)"
    }
    
    @IBAction func timeChanged(_ sender: UISlider) {
        let currentValue = Int((sender.value))
        let temp : Double = (0.5) + Double(currentValue)
        timeSLider.setValue(Float(temp), animated: true)
        
        timeLabel.text = "\(currentValue)"
    }
    
    
    @IBAction func drawTimeChange(_ sender: UISlider) {
        let currentValue = Int((sender.value))
        let temp : Double = (0.5) + Double(currentValue)
        drawTimeSlider.setValue(Float(temp), animated: true)
        drawTime.text = "\(currentValue)"
    }
    
    @IBAction func winSocreChange(_ sender: UISlider) {
        let currentValue = Int((sender.value))
        let temp : Double = (0.5) + Double(currentValue)
        scoreSlider.setValue(Float(temp), animated: true)
        winScoreLabel.text = "\(currentValue)"
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
