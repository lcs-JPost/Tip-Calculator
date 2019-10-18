//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Justus Post on 2019-10-10.
//  Copyright © 2019 Justus Post. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    
    @IBOutlet weak var SubmittedAmountOfBill: UITextField!

    @IBOutlet weak var SubmittedAmountOfPeople: UITextField!
    
    @IBOutlet weak var SubmittedTipInPercent: UITextField!
    
    @IBOutlet weak var TotalTipLabel: UILabel!
    
    @IBOutlet weak var TipPerPersonLabel: UILabel!
    
    

    // Mark: Initializers
    
  
    
    // MARK: Methods
   
 

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    

    }
    
    
    @IBAction func CalculateTheTip(_ sender: Any) {
        
        let BillText = SubmittedAmountOfBill.text!
        
        let Bill = Double(BillText)!
        
        let TipInPercentText = SubmittedTipInPercent.text!
        
        let TipInPercent = Double(TipInPercentText)!
        
        let TotalTip = Bill*(TipInPercent/100)
        
        let AmountOfPeopleText = SubmittedAmountOfPeople.text!
        
        let AmountOfPeople = Double(AmountOfPeopleText)!
        
        let TipPerPerson = TotalTip / AmountOfPeople
        
        TotalTipLabel.text = String(TotalTip)
        
        TipPerPersonLabel.text = String(TipPerPerson)
    }
    
    
    
   
}

