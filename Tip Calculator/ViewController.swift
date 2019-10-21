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
        
        // Get the user input
        
        let BillText = SubmittedAmountOfBill.text!
        let TipInPercentText = SubmittedTipInPercent.text!
        let AmountOfPeopleText = SubmittedAmountOfPeople.text!
        
        // Convert all values into Double
        
        let TipInPercent = Double(TipInPercentText)!
        let Bill = Double(BillText)!
        let AmountOfPeople = Double(AmountOfPeopleText)!
        
        // Calculate the Tip and the tip per person
        
        let TotalTip = Bill*(TipInPercent/100)
        let TipPerPerson = TotalTip / AmountOfPeople
        
        // Send the results to the view
        
        // TotalTipLabel.text = String(TotalTip)
        // TotalTipLabel.text = "$\(TotalTip)"
        TotalTipLabel.text = String(format:   "$%.2f ", TotalTip)
        // TipPerPersonLabel.text = String(TipPerPerson)
        // TipPerPersonLabel.text = "$\(TipPerPerson)"
        TipPerPersonLabel.text = String(format: "$%.2f", TipPerPerson)
        
    }
    
    
    
   
}

