//
//  TableViewCell.swift
//  TP-todolist
//
//  Created by Clement Ghys on 07/11/2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var doneB: UISwitch!
    
    @IBOutlet weak var deleteB: UIButton!
    
    @IBOutlet weak var myName: UILabel!
}
