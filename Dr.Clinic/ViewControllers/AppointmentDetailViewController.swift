//
//  AppointmentDetailViewController.swift
//  U Clinic
//
//  Created by smarteye on 2/28/19.
//  Copyright © 2019 smarteye. All rights reserved.
//

import UIKit

class AppointmentDetailViewController: UIViewController {
    
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblField: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
        
    @IBOutlet weak var lblCalendar: UILabel!
    @IBOutlet weak var lblClock: UILabel!
    @IBOutlet weak var lblServiceName: UILabel!
    @IBOutlet weak var lblWeeklyAmount: UILabel!
    @IBOutlet weak var lblMinutes: UILabel!
    @IBOutlet weak var lblTotalAmount: UILabel!
    @IBOutlet weak var btnCancel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btnCancel.layer.borderWidth = 1
        btnCancel.layer.masksToBounds = true
        btnCancel.layer.borderColor = UIColor.darkGray.cgColor
        btnCancel.layer.cornerRadius = 5
        btnCancel.clipsToBounds = true
    }
    

    @IBAction func clickBack(_ sender: Any) {
        let _ = self.navigationController?.popViewController(animated: true)
    }

    @IBAction func clickCancel(_ sender: Any) {
    }
    
}
