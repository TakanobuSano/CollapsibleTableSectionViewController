//
//  CustomTableViewCell.swift
//  Examples
//
//  Created by Mac on 2018/12/24.
//  Copyright © 2018 jeantimex. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var cellSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func switchChanged(sender: UIControl) {
        let tableView = self.tableView()
        let indexPath = tableView?.indexPath(for: self)
        print(indexPath as Any)
    }
    
    func tableView() -> UITableView? {
        var tableView = self.superview
        while (tableView != nil && !(tableView is UITableView)) {
            tableView = tableView!.superview
        }
        return tableView as? UITableView
    }
}
