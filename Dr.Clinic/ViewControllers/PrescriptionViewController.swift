//
//  PrescriptionViewController.swift
//  U Clinic
//
//  Created by smarteye on 3/1/19.
//  Copyright © 2019 smarteye. All rights reserved.
//

import UIKit

class PrescriptionViewController: UIViewController {
    
    @IBOutlet weak var btnCheck: UIButton!
    var bCheck : Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }    
    
    @IBAction func clickBack(_ sender: Any) {
        let _ = self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickPlus(_ sender: Any) {
    }
    
    @IBAction func clickSave(_ sender: Any) {
    }
        
    @IBAction func clickEmailCheck(_ sender: Any) {
        bCheck = !bCheck
        if bCheck {
            btnCheck.setImage(UIImage(named: ""), for: .normal)
        } else {
            btnCheck.setImage(UIImage(named: ""), for: .normal)
        }
    }
    
}
