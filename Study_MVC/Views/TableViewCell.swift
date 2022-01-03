//
//  TableViewCell.swift
//  Study_MVC
//
//  Created by Bard on 2022/01/03.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameLB: UILabel!
    @IBOutlet weak var ageLB: UILabel!
    @IBOutlet weak var jobLB: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
