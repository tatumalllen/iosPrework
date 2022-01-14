//
//  ViewController.swift
//  iosPrework
//
//  Created by Tatum Allen on 1/10/22.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.title = "Tip Calculator"
    }

    @IBAction func calculateTip(_ sender: Any)
    {
        //get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        //get total by multiplying * tip percentages
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //Update Total Amount
        totalLabel.text = String(format: "$%.2f", tip)
        //Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", total)
        
    }
    
}

