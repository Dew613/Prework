//
//  ViewController.swift
//  Prework
//
//  Created by Dewan Sunnah on 1/15/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //checks if theres a value in the bill amount and uses that otherwise it defaults to 0
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercents = [0.15, 0.18, 0.20]
        
        let tip = bill * tipPercents[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}

