//
//  ViewControllerOne.swift
//  Component View UI base
//
//  Created by Supanut Laddayam on 28/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class ViewControllerOne: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnDidTap(_ sender: UIButton) {
        performSegue(withIdentifier: "oneToTwo", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc2 = segue.destination as! ViewControllerTwo
        vc2.name = "Lucky"
        vc2.age = 2
        
    }
    
}
