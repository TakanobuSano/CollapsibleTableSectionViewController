//
//  BasicExampleViewController.swift
//  Examples
//
//  Created by Yong Su on 7/21/17.
//  Copyright © 2017 jeantimex. All rights reserved.
//

import UIKit
import CollapsibleTableSectionViewController

class BasicExampleViewController: CollapsibleTableSectionViewController {
    
    var sections: [Section] = sectionsData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
    }
    
}

extension BasicExampleViewController: CollapsibleTableSectionDelegate {
    
    func numberOfSections(_ tableView: UITableView) -> Int {
        return sections.count
    }
    
    func collapsibleTableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].items.count
    }
    
    func collapsibleTableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasicCell") as UITableViewCell? ?? UITableViewCell(style: .subtitle, reuseIdentifier: "BasicCell")
        
        let item: Item = sections[indexPath.section].items[indexPath.row]
        
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = item.detail
        
        return cell
    }
    
    func collapsibleTableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].name
    }

    func collapsibleTableView(_ tableView: UITableView, titleColorForHeaderInSection section: Int) -> UIColor {
        return #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }

    func collapsibleTableView(_ tableView: UITableView, arrowForHeaderInSection section: Int) -> String? {
        return ">"
    }

    func collapsibleTableView(_ tableView: UITableView, arrowColorForHeaderInSection section: Int) -> UIColor {
        return #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }

    func collapsibleTableView(_ tableView: UITableView, colorForHeaderInSection section: Int) -> UIColor {
        return #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    }
}
