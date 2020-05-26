//
//  SliderVC.swift
//  Component View UI base
//
//  Created by Supanut Laddayam on 26/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class SliderVC: UIViewController {

    @IBOutlet weak var sliderView: UISlider!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sliderView.minimumValue = 0
        self.sliderView.maximumValue = 100
        self.sliderView.minimumTrackTintColor = .red
        self.sliderView.maximumTrackTintColor = .green
        self.sliderView.thumbTintColor = .orange
        
        self.sliderView.setValue(60, animated: true)
        self.valueLabel.text =
            "\(sliderView.value)"
//        self.sliderView.isContinuous

    }
    

    @IBAction func sliderDidChange(_ sender: UISlider) {
        self.valueLabel.text = "\(sender.value)"
    }
    
}
