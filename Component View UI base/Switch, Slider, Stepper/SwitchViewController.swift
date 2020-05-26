//
//  SwitchViewController.swift
//  Component View UI base
//
//  Created by Supanut Laddayam on 26/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBOutlet weak var status1Label: UILabel!
    @IBOutlet weak var status2Label: UILabel!
    @IBAction func switch1DidTap(_ sender: UISwitch) {
        if sender.isOn {
            self.status1Label.text = "On"
        } else {
            self.status1Label.text = "Off"
        }
        
//        sender.isOn ? self.status1Label.text = "On" : self.status2Label.text = "Off"
    }
    
    @IBAction func switch2DidTap(_ sender: UISwitch) {
        if sender.isOn {
            self.status2Label.text = "On"
        } else {
            self.status2Label.text = "Off"
        }
    }
    

}
