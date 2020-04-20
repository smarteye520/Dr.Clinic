
//
//  GenerateBillViewController.swift
//  U Clinic
//
//  Created by smarteye on 3/1/19.
//  Copyright © 2019 smarteye. All rights reserved.
//

import UIKit

class GenerateBillViewController: UIViewController {

    @IBOutlet weak var lblPatientname: UILabel!
    @IBOutlet weak var lblDateofBilling: UILabel!
    @IBOutlet weak var lblTypeConsultation: UILabel!
    @IBOutlet weak var lblAmount: UILabel!
    @IBOutlet weak var btnCheck: UIButton!
    
    var bCheck : Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bCheck = true

        // Do any additional setup after loading the view.
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
    
    @IBAction func clickGenerateBill(_ sender: Any) {
        
    }
}
