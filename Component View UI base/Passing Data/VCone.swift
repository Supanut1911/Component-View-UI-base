//
//  VCone.swift
//  Component View UI base
//
//  Created by Supanut Laddayam on 28/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class VCone: UIViewController {

    var vc2 = VCtwo()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func btnDidTap(_ sender: UIButton) {
        let vc2 = storyboard?.instantiateViewController(identifier: "VCtwo") as! VCtwo
        vc2.strData = "Hello"
        vc2.intData = 3579
        vc2.doubleData = 3.142857
        
        present(vc2, animated: true, completion: nil)
    }
    

}
