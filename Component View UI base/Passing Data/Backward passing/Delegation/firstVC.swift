//
//  firstVC.swift
//  Component View UI base
//
//  Created by Supanut Laddayam on 28/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class firstVC: UIViewController {

    @IBOutlet weak var backWardLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func toVC2DidTap(_ sender: UIButton) {
        let vc2 = storyboard?.instantiateViewController(identifier: "secondVC") as! secondVC
        vc2.deleagate = self
        present(vc2, animated: true, completion: nil)
    }
    


}

extension firstVC: PassingDelegate {
    func datapassed(str: String, num: Int) {
        self.backWardLabel.text = "\(str), \(num)"
        
        dismiss(animated: true, completion: nil)
    }
    
    
}
