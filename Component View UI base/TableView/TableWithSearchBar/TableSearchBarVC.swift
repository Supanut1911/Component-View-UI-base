//
//  TableSearchBarVC.swift
//  Component View UI base
//
//  Created by Supanut Laddayam on 31/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class TableSearchBarVC: UIViewController {
    var data = ["Jennifer, 1111111",
                "Jennie, 2222222",
                "Jame, 3333333",
                "Jack, 4444444",
                "Jane, 099xxxx",
                "Jogn, x222222",
                "Jimmy, a1X3%2"
    ]
    
    var filterData = [String]()
    

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filterData = data
    }
    


}

extension TableSearchBarVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filterData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PhoneBookCell", for: indexPath) as! PhoneBookCell
        
        let row = indexPath.row
        let d = filterData[row].components(separatedBy: ", ")
        cell.textLabel?.text = d[0]
//        cell.detailTextLabel?.text = d[1]
        cell.telLabel.text = d[1]
        
        
        return cell
    }
    

}

extension TableSearchBarVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

extension TableSearchBarVC: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            filterData = data
        } else {
            filterData = data.filter({ (item) in
                return item.range(of: searchText,
                                  options: .caseInsensitive,
                                  range: nil,
                                  locale: nil) != nil
            })
        }
        
        tableView.reloadData()
    }
}
