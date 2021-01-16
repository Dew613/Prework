//
//  ViewController.swift
//  Prework
//
//  Created by Dewan Sunnah on 1/15/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var allView: UIView!
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var splitAmountLabel: UILabel!
    

    @IBOutlet weak var splitControl: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fadeOutAll()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        startAnimation()
        billAmountTextField.becomeFirstResponder()
        
        if let t = UserDefaults.standard.object(forKey: "lastInput") as? String
        {
            billAmountTextField.text = t
        }
        
    }
    
    func fadeOutAll(){
        self.allView.alpha = 0
        self.allView.center.x += 10
    }
    
    func fadeInAll() {
        self.allView.alpha = 1
    }
    
    func startAnimation() {
        UIView.animate(withDuration: 0.4, delay: 0, options: .curveLinear, animations: {
            self.fadeInAll()
            self.allView.center.x -= -10
        }, completion: nil)
    }

    var total: Double = 0
    
    
    @IBAction func billTextFieldEditingChanged(_ sender: Any) {
        UserDefaults.standard.set(billAmountTextField.text, forKey: "lastInput")
        calculateTip(sender)
        calculateSplit(sender)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        //checks if theres a value in the bill amount and uses that otherwise it defaults to 0
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercents = [0.15, 0.18, 0.20]
        
        let tip = bill * tipPercents[tipControl.selectedSegmentIndex]
        
        total = bill + tip
        
        calculateSplit(sender)
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)

        
    }
    
    @IBAction func calculateSplit(_ sender: Any) {
        let rounded = round(splitControl.value / 1)*1
        splitLabel.text = String(format: "Split: %01d%", Int(rounded))
        splitAmountLabel.text = String(format: "$%.2f", total/Double(rounded))
    }
    
    
    
}

