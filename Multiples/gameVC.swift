//
//  gameVC.swift
//  Multiples
//
//  Created by Jack Hider on 06/06/2016.
//  Copyright © 2016 Jack Hider. All rights reserved.
//

import UIKit

class gameVC: UIViewController {

    @IBOutlet weak var sumLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sumLbl.text = ""
        sumLbl.text = "\(GameData.instance.sum) + \(GameData.instance.currentValue) = \(GameData.instance.currentValue)"
        GameData.instance.sum = GameData.instance.currentValue
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addPressed(sender: UIButton) {
    
        if GameData.instance.checkMax() {
            
            dismissViewControllerAnimated(true, completion: nil)
            
        }
        
//        add current value to running total
//        add runningtotal to sum
//        display total
        
        
        let rtot = GameData.instance.calcRunningTotal()
        let rsum = GameData.instance.computeSum()
        
        sumLbl.text = "\(rtot) + \(GameData.instance.currentValue) = \(rsum )"
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
