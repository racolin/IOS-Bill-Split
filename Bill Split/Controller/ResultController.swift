//
//  ResultController.swift
//  Bill Split
//
//  Created by Administrator on 17/06/2023.
//

import UIKit

class ResultController : UIViewController {
    
    var brain : ResultBrain?
    
    @IBAction func onRecalPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelResult.text = brain?.getResult() ?? "0"
        labelDescription.text = brain?.getDescription() ?? ""
    }
}
