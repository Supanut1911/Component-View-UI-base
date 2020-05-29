//
//  FirstViewController.swift
//  Component View UI base
//
//  Created by Supanut Laddayam on 28/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class FirstViewControllerOO: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var sliderView: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    
    func onPassBack(str: String, num: Int) {
        self.label.text = str
        self.sliderView.value = Float(num)
    }
    

    @IBAction func toVC2DidTap(_ sender: UIButton) {
        let vc2 = storyboard?.instantiateViewController(identifier: "SecondViewControllerOO") as! SecondViewControllerOO
        vc2.dataPassBack = { (s,n) in
            self.onPassBack(str: s, num: n)
            self.dismiss(animated: true, completion: nil)
        }
        present(vc2, animated: true, completion: nil)
    }
    

}
