//
//  secondVC.swift
//  Component View UI base
//
//  Created by Supanut Laddayam on 28/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class secondVC: UIViewController {

    weak var deleagate: PassingDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
  
    @IBAction func backDidTap(_ sender: UIButton) {
        self.deleagate?.datapassed(str: "Lorem", num: 123)
        dismiss(animated: true, completion: nil)
    }
}


