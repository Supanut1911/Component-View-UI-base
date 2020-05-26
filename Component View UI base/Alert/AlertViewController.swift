//
//  AlertViewController.swift
//  Component View UI base
//
//  Created by Supanut Laddayam on 26/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {

    @IBOutlet weak var labelView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func alertDidTap(_ sender: UIButton) {
        let alert = UIAlertController(title: "RED ALERT",
                                      message: "Has new update for Xcode.",
                                      preferredStyle: .actionSheet)
        //style of preferred has 2
        // - .alert: show alert dialog at center
        // - .actioSheet: shwo alert dialog at bottom
        
        
        let buttonCancel = UIAlertAction(title: "Update later",
                                         style: .default,
                                         handler: { (cancleHanlder: UIAlertAction) -> Void in
                                            if let cancleHandlerTitle = cancleHanlder.title {
                                                self.labelView.text = cancleHandlerTitle
                                            }
                                            
        })
        
        let buttonOk = UIAlertAction(title: "Update now",
                                     style: .default,
                                     //use closure for help hanlder!
                                     handler: { (alertHandler: UIAlertAction) -> Void in
                                        if let okHanlderTitle = alertHandler.title {
                                            self.labelView.text = okHanlderTitle
                                        }
                                        
                                    //wild_card style
//                                    handler: { _ in
//                                        print("Tab this ")
                                    
        })
        
        alert.addAction(buttonOk)
        alert.addAction(buttonCancel)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    

}
