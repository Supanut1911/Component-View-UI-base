//
//  VC1.swift
//  Component View UI base
//
//  Created by Supanut Laddayam on 29/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class VC1: UIViewController {

    @IBOutlet weak var labelView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnDidTap(_ sender: UIButton) {
        let vc2 = storyboard?.instantiateViewController(identifier: "VC2") as! VC2
        vc2.vc2Delegate = self
        
        navigationController?.pushViewController(vc2, animated: true)
//        present(vc2, animated: true, completion: nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc2 = segue.destination as! VC2
        vc2.vc2Delegate = self
    }
    
}

extension VC1: PassingDelegate {
    func datapassed(str: String, num: Int) {
        self.labelView.text? = "\(str) \(num)"
    }
    
    
}
