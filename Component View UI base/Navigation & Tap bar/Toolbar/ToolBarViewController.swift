//
//  ToolBarViewController.swift
//  Component View UI base
//
//  Created by Supanut Laddayam on 29/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class ToolBarViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setToolBar()
        
    }
    
    
    
    
    func setToolBar() {
        let toobar1 = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(toolbar1DidTap))
        
        let toobar2 = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(toolbar2DidTap))
        
        let toobar3 = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(toolbar3DidTap))
        
        let items = [toobar1, toobar2, toobar3]
        self.setToolbarItems(items, animated: true)
            
    }
    
    @objc func toolbar1DidTap() {
        self.imageView.image = UIImage(named: "cry")
    }
    
    @objc func toolbar2DidTap() {
        self.imageView.image = UIImage(named: "angry")
    }
    
    @objc func toolbar3DidTap() {
        self.imageView.image = UIImage(named: "smile")
    }



}
