//
//  AddWordViewController.swift
//  Taboo-Game
//
//  Created by Furkan Kaan Ugsuz on 20/01/2021.
//

import UIKit
import CoreData

class AddWordViewController: UIViewController {
    
    
    @IBOutlet weak var describeWordText: UITextField!
    
    @IBOutlet weak var forbiddenWord1Text: UITextField!
    @IBOutlet weak var forbiddenWord2Text: UITextField!
    
    @IBOutlet weak var forbiddenWord3Text: UITextField!
   
    @IBOutlet weak var forbiddenWord4Text: UITextField!
    
    @IBOutlet weak var forbiddenWord5Text: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
                view.addGestureRecognizer(gestureRecognizer)

        // Do any additional setup after loading the view.
    }
    @objc func hideKeyboard() {
            view.endEditing(true)
        }
    
    
    @IBAction func settingsButtonClicked(_ sender: Any) {
        performSegue(withIdentifier: "addToSettings", sender: nil)
    }
    @IBAction func addWordButttonClicked(_ sender: Any) {
        if (describeWordText.text == "") || (forbiddenWord1Text.text == "") || (forbiddenWord2Text.text == "") || (forbiddenWord3Text.text == "") || (forbiddenWord4Text.text == "") || (forbiddenWord5Text.text == "") {
            print("hepsini doldur canimmm")
        }
        else{
            print("yeayy")
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
                    
            let newWord = NSEntityDescription.insertNewObject(forEntityName: "Words", into: context)
            
            newWord.setValue(describeWordText.text, forKey: "wordDescribe")
            newWord.setValue(forbiddenWord1Text.text, forKey: "wordForbidden1")
            newWord.setValue(forbiddenWord2Text.text, forKey: "wordForbidden2")
            newWord.setValue(forbiddenWord3Text.text, forKey: "wordForbidden3")
            newWord.setValue(forbiddenWord4Text.text, forKey: "wordForbidden4")
            newWord.setValue(forbiddenWord5Text.text, forKey: "wordForbidden5")
            
            let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Words")
            fetchRequest.returnsObjectsAsFaults = false
                    
            do {
                let results = try context.fetch(fetchRequest)
                if results.count > 0 {
                    for result in results as! [NSManagedObject] {
                        if let wDescribe = result.value(forKey: "wordDescribe") as? String {
                            print(wDescribe)
                        }
                        if let wForbidden = result.value(forKey: "wordForbidden1") as? String {
                            print(wForbidden)
                        }
                        if let wForbidden = result.value(forKey: "wordForbidden2") as? String {
                            print(wForbidden)
                        }
                        if let wForbidden = result.value(forKey: "wordForbidden3") as? String {
                           print(wForbidden)
                        }
                        if let wForbidden = result.value(forKey: "wordForbidden4") as? String {
                            print(wForbidden)
                        }
                        if let wForbidden = result.value(forKey: "wordForbidden5") as? String {
                            print(wForbidden)
                        }
                    }
                }
            } catch {
                print("error")
            }
            do {
                try context.save()
                print("success")
            }
            catch {
                print("error")
            }
        }
        
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
