//
//  ViewController.swift
//  Taboo-Game
//
//  Created by Furkan Kaan Ugsuz on 19/01/2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var classicGame: UIButton!
    
    @IBOutlet weak var drawGame: UIButton!
    
    @IBOutlet weak var settings: UIButton!
    
    @IBOutlet weak var infoGame: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wordLists()
        classicGame.layer.cornerRadius = classicGame.frame.height/4
        drawGame.layer.cornerRadius = drawGame.frame.height/4
        settings.layer.cornerRadius = settings.frame.height/4
        infoGame.layer.cornerRadius = infoGame.frame.height/4
        
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func classicGameClicked(_ sender: Any) {
        performSegue(withIdentifier: "toTeams", sender: nil)
    }
    
    @IBAction func drawGameClicked(_ sender: Any) {
        performSegue(withIdentifier: "toTeams", sender: nil)
    }
    
    
    @IBAction func settingsClicked(_ sender: Any) {
        performSegue(withIdentifier: "toSettings", sender: nil)
    }
    
    
    @IBAction func infoClicked(_ sender: Any) {
        
    }
    
    
}

