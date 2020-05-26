//
//  AlertTextViewVC.swift
//  Component View UI base
//
//  Created by Supanut Laddayam on 26/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class AlertTextViewVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBAction func addAlertDidTap(_ sender: UIButton) {
        let alert = UIAlertController(title: "Add Profile",
                                      message: "Personal ur data",
                                      preferredStyle:.alert)
        
//        alert.addTextField { (textField) in
//            textField.placeholder = "Name"
//            textField.clearButtonMode = UITextField.ViewMode.always
////            textField.font = UIFont.
////            textField.keyboardType = UIKeyboardType
//        }
        
       
        
        //name
        alert.addTextField { (nameTextField) in
                    nameTextField.placeholder = "Name"
                    nameTextField.clearButtonMode = UITextField.ViewMode.always
        //            textField.font = UIFont.
        //            textField.keyboardType = UIKeyboardType
        }
        
        //last name
        alert.addTextField { (lastNameTextField) in
                           lastNameTextField.placeholder = "Last name"
                           lastNameTextField.clearButtonMode = UITextField.ViewMode.always
              
        }
        //age
        alert.addTextField { (ageTextField) in
                           ageTextField.placeholder = "Age"
                           ageTextField.clearButtonMode = UITextField.ViewMode.always

        }
        
        
        
        
        
        let okButton = UIAlertAction(title: "OK",
                                     style: .default,
                                     handler: { _ in
                                        self.nameLabel.text = alert.textFields?[0].text
                                        self.lastNameLabel.text = alert.textFields?[1].text
                                        self.ageLabel.text = alert.textFields?[2].text
                                        
        })
        
        
        let cancleButton = UIAlertAction(title: "cancle",
                                        style: .cancel,
                                        handler: nil)
        alert.addAction(okButton)
        alert.addAction(cancleButton)
        
        present(alert,animated: true,completion: nil)
    }
    

}
