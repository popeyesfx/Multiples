//
//  ViewController.swift
//  Multiples
//
//  Created by Jack Hider on 06/06/2016.
//  Copyright © 2016 Jack Hider. All rights reserved.
//

import UIKit

class startVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var multTextField: UITextField!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        multTextField.delegate = self
        
        
    }

    
    override func viewDidAppear(animated: Bool) {
       
        multTextField.text = ""
        
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func playPressed(sender: UIButton) {
    
        if (multTextField.text != "" &&  multTextField.text != nil) {
            
            performSegueWithIdentifier("gameScreen", sender: nil)
            
        }
   }
    
    func textFieldDidBeginEditing(textField: UITextField) {
       
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        
        GameData.instance.currentValue = Int(multTextField.text!)!
       print(GameData.instance.currentValue)
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        multTextField.resignFirstResponder()
        return true
        
    }

}

