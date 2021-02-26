//
//  TeamsViewController.swift
//  Taboo-Game
//
//  Created by Furkan Kaan Ugsuz on 19/01/2021.
//

import UIKit


public var firstTeamNam = ""
public var secondTeamNam = ""

class TeamsViewController: UIViewController {
    
   
   
    
    @IBOutlet weak var teamsLabel: UILabel!
    
    @IBOutlet weak var firstTeamName: UITextField!
    
    @IBOutlet weak var secondTeamName: UITextField!
    
    //@IBOutlet weak var firstTeamLabel: UITextField!
    @IBOutlet weak var firstTeamLabel: UILabel!
    
   // @IBOutlet weak var secondTeamLabel: UITextField!
    @IBOutlet weak var secondTeamLabel: UILabel!
    
    @IBOutlet weak var oYeay: UIView!
    
    @IBOutlet weak var startGame: UIButton!
    @IBOutlet weak var homeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeButton.layer.cornerRadius = homeButton.frame.height/2
       
        oYeay.layer.cornerRadius = oYeay.frame.height/2
        
        firstTeamName.layer.cornerRadius = firstTeamName.frame.height/4
        firstTeamName.layer.borderWidth = 5
        firstTeamName.layer.borderColor = UIColor.white.cgColor
        firstTeamLabel.layer.cornerRadius = firstTeamLabel.frame.height/5
            
        secondTeamName.layer.cornerRadius = secondTeamName.frame.height/4
        secondTeamName.layer.borderWidth = 5
        secondTeamName.layer.borderColor = UIColor.white.cgColor
        secondTeamLabel.layer.cornerRadius = secondTeamName.frame.height/5
        startGame.layer.cornerRadius = startGame.frame.height/4
        
        
        // properties texfield
        firstTeamName.clearsOnBeginEditing = true
        
        secondTeamName.clearsOnBeginEditing = true
        firstTeamName.returnKeyType = .done
        secondTeamName.returnKeyType = .done
        
            // extField.returnKeyType = .done
        //firstTeamName.
       
        
    }
    
    // settings properties  texfields
    @IBAction func secondTeamNameEditingEnd(_ sender: Any) {
        
       // print("hava ayaz")
        if ((secondTeamName.text?.elementsEqual("")) == true) {
            secondTeamName.text = "____________"
        }else{
            print("alemin karli geliyor ")
            
        }
    }
    @IBAction func firstTeamNameEditingEnd(_ sender: Any) {
       // print("hava ayaz")
        
        
        if ((firstTeamName.text?.elementsEqual("")) == true) {
            
            firstTeamName.text = "____________"
            //print("bu bir denme yayinidir")
        }else{
           // firstTeamName =   "\(firstTeamName.text)/ \(secondTeamName.text)"
            //print("deneme basarilir")
            print("alemin karali 2 geliyor")
            
            
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPlayGame"
        {
            secondTeamNam = secondTeamName.text!
            firstTeamNam = firstTeamName.text!
        }
    }
    @IBAction func startGameClicked(_ sender: Any) {
       
        performSegue(withIdentifier: "toPlayGame", sender: nil)
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
