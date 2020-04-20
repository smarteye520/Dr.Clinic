//
//  AddPatientViewController.swift
//  U Clinic
//
//  Created by smarteye on 3/1/19.
//  Copyright © 2019 smarteye. All rights reserved.
//

import UIKit

class AddPatientViewController: UIViewController {

    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var lblFullName: UILabel!
    @IBOutlet weak var lblBirthday: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    @IBOutlet weak var lblWeight: UILabel!
    @IBOutlet weak var lblHeight: UILabel!
    @IBOutlet weak var lblMobile: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblUniqueID: UILabel!
    
    @IBOutlet weak var btnCheck: UIButton!
    var bCheck : Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func clickBack(_ sender: Any) {
        let _ = self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickEmailCheck(_ sender: Any) {
        bCheck = !bCheck
        if bCheck {
            btnCheck.setImage(UIImage(named: ""), for: .normal)
        } else {
            btnCheck.setImage(UIImage(named: ""), for: .normal)
        }
    }
    

    @IBAction func clickCreate(_ sender: Any) {
    }
    
}
