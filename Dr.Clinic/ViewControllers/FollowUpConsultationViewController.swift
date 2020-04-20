//
//  FollowUpConsultationViewController.swift
//  U Clinic
//
//  Created by smarteye on 3/1/19.
//  Copyright © 2019 smarteye. All rights reserved.
//

import UIKit

class FollowUpConsultationViewController: UIViewController {

    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblTypeConsultation: UILabel!
    @IBOutlet weak var lblNameandTime: UILabel!
    
    @IBOutlet weak var lblPatientforName: UILabel!
    
    @IBOutlet weak var lblWeight: UILabel!
    @IBOutlet weak var lblBloodPressure: UILabel!
    @IBOutlet weak var lblBloodTemp: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func clickBack(_ sender: Any) {
        let _ = self.navigationController?.popViewController(animated: true)
    }
    
}
