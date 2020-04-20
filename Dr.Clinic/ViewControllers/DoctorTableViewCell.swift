//
//  DoctorTableViewCell.swift
//  U Clinic
//
//  Created by smarteye on 2/27/19.
//  Copyright © 2019 smarteye. All rights reserved.
//

import UIKit

class DoctorTableViewCell: UITableViewCell {

    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var lblDr: UILabel!
    @IBOutlet weak var lblfield: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
