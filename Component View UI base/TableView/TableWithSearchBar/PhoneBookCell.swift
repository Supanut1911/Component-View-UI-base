//
//  PhoneBookCell.swift
//  Component View UI base
//
//  Created by Supanut Laddayam on 31/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class PhoneBookCell: UITableViewCell {

    @IBOutlet weak var telLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
