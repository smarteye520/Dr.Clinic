//
//  PatientDetailViewController.swift
//  U Clinic
//
//  Created by smarteye on 3/1/19.
//  Copyright © 2019 smarteye. All rights reserved.
//

import UIKit

class PatientDetailViewController: UIViewController {

    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblSex: UILabel!
    @IBOutlet weak var lblWeight: UILabel!
    @IBOutlet weak var lblUniqueID: UILabel!
    @IBOutlet weak var lblUpcoming: UILabel!
    @IBOutlet weak var lblPhoneNumber: UILabel!
    @IBOutlet weak var lblEmail: UILabel!    
    
    @IBOutlet weak var lblPatientTesting: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func clickBack(_ sender: Any) {
        let _ = self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickLogNewConsultation(_ sender: Any) {
    }
    

}
