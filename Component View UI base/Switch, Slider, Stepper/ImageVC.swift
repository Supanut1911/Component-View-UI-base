//
//  ImageVC.swift
//  Component View UI base
//
//  Created by Supanut Laddayam on 26/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class ImageVC: UIViewController {

    @IBOutlet weak var mainImageView: UIImageView!
    
    @IBOutlet weak var smileImageView: UIImageView!
    @IBOutlet weak var cryImageView: UIImageView!
    @IBOutlet weak var angryImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let gesture1 = UITapGestureRecognizer(target: self,
                                             action: #selector(self.imageSmileDidTap))
        smileImageView.addGestureRecognizer(gesture1)
        smileImageView.isUserInteractionEnabled = true
        
        
        
        let gestur2 = UITapGestureRecognizer(target: self,
                                             action: #selector(self.imageCryDidTap))
        cryImageView.addGestureRecognizer(gestur2)
        cryImageView.isUserInteractionEnabled = true
        
        
        
        let gesture3 = UITapGestureRecognizer(target: self,
                                             action: #selector(self.imageAngryDidTap))
        angryImageView.addGestureRecognizer(gesture3)
        angryImageView.isUserInteractionEnabled = true
        
        
        
    }
    
    @objc func imageSmileDidTap() {
        self.mainImageView.image = smileImageView.image
    }
    
    @objc func imageCryDidTap() {
        self.mainImageView.image = cryImageView.image
    }
    
    @objc func imageAngryDidTap() {
        self.mainImageView.image = angryImageView.image
    }

    

}
