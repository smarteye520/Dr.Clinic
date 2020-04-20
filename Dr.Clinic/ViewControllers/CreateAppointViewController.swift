//
//  CreateAppointViewController.swift
//  U Clinic
//
//  Created by smarteye on 2/28/19.
//  Copyright © 2019 smarteye. All rights reserved.
//

import UIKit
import SideMenu

class CreateAppointViewController: UIViewController {

    @IBOutlet weak var lblClinic: UILabel!
    @IBOutlet weak var lblDoctorname: UILabel!
    @IBOutlet weak var lblProblem: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupSideMenu()
    }
    
    func setupSideMenu() {
        SideMenuManager.default.menuLeftNavigationController = storyboard!.instantiateViewController(withIdentifier: "LeftMenuNavigationController") as? UISideMenuNavigationController
        SideMenuManager.default.menuPresentMode = .viewSlideInOut
    }

    @IBAction func clickBack(_ sender: Any) {
        let _ = self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickGoDoctor(_ sender: Any) {
        let doctorVC = storyboard?.instantiateViewController(withIdentifier: String(describing: DoctorsViewController.self)) as! DoctorsViewController
        navigationController?.pushViewController(doctorVC, animated: true)
    }
    
    @IBAction func clickGoNext(_ sender: Any) {
        let calendarVC = storyboard?.instantiateViewController(withIdentifier: String(describing: CalendarViewController.self)) as! CalendarViewController
        navigationController?.pushViewController(calendarVC, animated: true)
    }
}
