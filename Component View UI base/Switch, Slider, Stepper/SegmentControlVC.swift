//
//  SegmentControlVC.swift
//  Component View UI base
//
//  Created by Supanut Laddayam on 26/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class SegmentControlVC: UIViewController {

    @IBOutlet weak var segmentControlView: UISegmentedControl!
    
    @IBOutlet weak var segmentNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func segmentDidTap(_ sender: UISegmentedControl) {
        
        let index = sender.selectedSegmentIndex
        let title = sender.titleForSegment(at: index)!
        self.segmentNameLabel.text = "\(index). : \(title)"
    }
    
   

}
