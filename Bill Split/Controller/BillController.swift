//
//  ViewController.swift
//  Bill Split
//
//  Created by Administrator on 16/06/2023.
//

import UIKit

class BillController: UIViewController {
    
    var brain = BillBrain(amount: 0)

    @IBOutlet weak var labelAmount: UILabel!
    
    @IBAction func onTipPressed(_ sender: UIButton) {
        brain.tip = sender.currentTitle
        input.resignFirstResponder()
        button0.isSelected = false
        button10.isSelected = false
        button20.isSelected = false
        sender.isSelected = true
    }
    
    @IBAction func onTotalChange(_ sender: UITextField) {
        brain.total = sender.text
    }
    @IBAction func onAmountChanged(_ sender: UIStepper) {
        brain.amount = sender.value
        labelAmount.text = brain.getAmountString()
        input.resignFirstResponder()
    }
    
    @IBOutlet weak var input: UITextField!
    
    
    @IBOutlet weak var button20: UIButton!
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var button0: UIButton!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBAction func onCalculate(_ sender: UIButton) {
        input.resignFirstResponder()
        self.performSegue(withIdentifier: "toResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResult" {
            let resultVc = segue.destination as! ResultController
            resultVc.brain = ResultBrain(bill: brain.getBillModel())
            var b = brain.getBillModel()
            print(b.amount)
            print(b.tip)
            print(b.total)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        brain.amount = stepper.value
    }


}

