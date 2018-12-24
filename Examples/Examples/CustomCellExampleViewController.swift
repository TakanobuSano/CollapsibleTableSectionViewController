//
//  CustomCellExampleViewController.swift
//  Examples
//
//  Created by Yong Su on 7/30/17.
//  Copyright © 2017 jeantimex. All rights reserved.
//

import UIKit
import CollapsibleTableSectionViewController

class CustomCellExampleViewController: CollapsibleTableSectionViewController {
    
    var sections: [Section] = sectionsData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
    }
    
}

extension CustomCellExampleViewController: CollapsibleTableSectionDelegate {
    
    func numberOfSections(_ tableView: UITableView) -> Int {
        return sections.count
    }
    
    func collapsibleTableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].items.count
    }
    
    func collapsibleTableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        let cell: CustomCell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? CustomCell ??
//            CustomCell(style: .default, reuseIdentifier: "Cell")

        var cell: CustomTableViewCell! = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as? CustomTableViewCell
        if cell == nil {
            tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
            cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as? CustomTableViewCell
        }
        
        let item: Item = sections[(indexPath as NSIndexPath).section].items[(indexPath as NSIndexPath).row]
        
        cell.nameLabel.text = item.name
        cell.detailLabel.text = item.detail
        
        return cell
    }
    
    func collapsibleTableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1.0
    }

    func collapsibleTableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].name
    }
    
}
