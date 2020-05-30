//
//  TableVC.swift
//  Component View UI base
//
//  Created by Supanut Laddayam on 30/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class TableVC: UIViewController {

    var emojiName = ["Smile", "Cry", "Angry"]
    var emojiPicture = ["smile", "cry", "angry"]
    var emojiPrice = ["$99", "$299","$699"]

    @IBOutlet weak var emojiTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    

}

extension TableVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath) as! EmojiCell
        
        cell.emoName.text = emojiName[indexPath.row]
        cell.emoImage.image = UIImage(named: "\(emojiPicture[indexPath.row])")
        cell.emoPrice.text = emojiPrice[indexPath.row]
        
        return cell
    }
    
     
}

extension TableVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goTodetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let i = emojiTable.indexPathForSelectedRow
        let cell = emojiTable.cellForRow(at: i!)
        
        let desVC = segue.destination as! resCellVC
        desVC.img = emojiPicture[i!.row]
        desVC.emoName = emojiName[i!.row]
        
    
    }
    
   
}
