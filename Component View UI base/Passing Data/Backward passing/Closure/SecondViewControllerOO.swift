//
//  SecondViewController.swift
//  Component View UI base
//
//  Created by Supanut Laddayam on 28/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class SecondViewControllerOO: UIViewController {

    var dataPassBack: ((String, Int) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func backDidTap(_ sender: UIButton) {
        dataPassBack?("Lucky", 12)
    }
    
}
