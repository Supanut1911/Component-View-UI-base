//
//  ViewControllerTwo.swift
//  Component View UI base
//
//  Created by Supanut Laddayam on 28/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {

    var name: String?
    var age: Int?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameLabel.text = name
        if let age = self.age {
             self.ageLabel.text = "\(age)"
        }
       
       
    }
    

   
}
