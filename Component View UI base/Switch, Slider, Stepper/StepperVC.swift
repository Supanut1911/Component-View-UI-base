//
//  StepperVC.swift
//  Component View UI base
//
//  Created by Supanut Laddayam on 26/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class StepperVC: UIViewController {

    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var stepperView: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.stepperView.minimumValue = 0
        self.stepperView.maximumValue = 20
        self.stepperView.stepValue = 2
        
        //Mode to tap [-] [+]
//        self.stepperView.autorepeat = true
//        self.stepperView.isContinuous = false
//        self.stepperView.wraps = false
        self.valueLabel.text = "\(stepperView.value)"
        
    }
    
    
    @IBAction func stepperDidTap(_ sender: UIStepper) {
        self.valueLabel.text = "\(sender.value)"
    }
    

}
