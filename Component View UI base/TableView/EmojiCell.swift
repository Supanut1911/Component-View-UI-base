//
//  EmojiCell.swift
//  Component View UI base
//
//  Created by Supanut Laddayam on 30/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class EmojiCell: UITableViewCell {

    var emojiNameValue = ""
    
    @IBOutlet weak var emoImage: UIImageView!
    @IBOutlet weak var emoName: UILabel!
    @IBOutlet weak var emoPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.emoName.text = emojiNameValue
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
