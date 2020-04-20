//
//  MenuCell.swift
//  U Clinic
//
//  Created by smarteye on 2/24/19.
//  Copyright © 2019 smarteye. All rights reserved.
//

import UIKit

class MenuCell: UITableViewCell {

    @IBOutlet weak var imgThumbnail: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        lblName.text = nil
        imgThumbnail.isHidden = true
    }
    
    func configurateTheCell(_ recipe: String) {
        lblName.text = recipe
    }
}
