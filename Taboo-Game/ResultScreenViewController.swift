//
//  ResultScreenViewController.swift
//  Taboo-Game
//
//  Created by Furkan Kaan Ugsuz on 21/01/2021.
//

import UIKit

class ResultScreenViewController: UIViewController {

    @IBOutlet weak var oYeay: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        oYeay.layer.borderWidth = 5
        oYeay.layer.borderColor = UIColor.white.cgColor
        oYeay.layer.cornerRadius = oYeay.frame.height/2
        // Do any additional setup after loading the view.
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
