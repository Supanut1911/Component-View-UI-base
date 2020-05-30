//
//  resCellVC.swift
//  Component View UI base
//
//  Created by Supanut Laddayam on 31/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class resCellVC: UIViewController {
    
    var img: String = ""
    var emoName: String = ""
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var emoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.imageView.image = UIImage(named: img)
        self.emoLabel.text = emoName
        
    }
    

    
}
