//
//  TableViewCell.swift
//  MachineTEST
//
//  Created by Brainwork Technologies on 18/08/2020.
//  Copyright © 2020 Advatix Inc. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lbl_num:UILabel!
    @IBOutlet weak var lbl_date:UILabel!
    @IBOutlet weak var lbl_rate:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


class Headercell: UITableViewCell {

    @IBOutlet weak var lbl_num:UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
class itemsableViewCell: UITableViewCell {
    @IBOutlet weak var lbl_Name:UILabel!
    @IBOutlet weak var lbl_Quantity:UILabel!
    @IBOutlet weak var lbl_rate:UILabel!
    @IBOutlet weak var lbl_name2:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
class ExpandTableViewCell: UITableViewCell {

    @IBOutlet weak var lbl_Name:UILabel!
    @IBOutlet weak var lbl_Quantity:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
class vc3: UITableViewCell {

    @IBOutlet weak var lbl_Name:UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
