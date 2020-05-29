//
//  VC2.swift
//  Component View UI base
//
//  Created by Supanut Laddayam on 29/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class VC2: UIViewController {
    
    var vc2Delegate: PassingDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        vc2Delegate?.datapassed(str: "hero", num: 5)
    }
    
    @IBAction func backbtnDidTap(_ sender: UIButton) {
        self.vc2Delegate?.datapassed(str: "Lucky",
                                     num: 1911)
        for vc in navigationController!.viewControllers {
            if vc.isKind(of: ViewController.self) {
                navigationController?.popToViewController(vc, animated: true)
                return
            }
        }
//        dismiss(animated: true, completion: nil)
    }
}
