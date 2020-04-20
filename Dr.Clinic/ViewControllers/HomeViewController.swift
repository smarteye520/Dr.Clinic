//
//  HomeViewController.swift
//  U Clinic
//
//  Created by smarteye on 2/24/19.
//  Copyright © 2019 smarteye. All rights reserved.
//

import UIKit
import SideMenu

class HomeViewController: UIViewController {

    
    @IBOutlet weak var lblDoctorname: UILabel!
    @IBOutlet weak var lblIDS: UILabel!
    @IBOutlet weak var btnAppointment: UIButton!
    @IBOutlet weak var btnPatient: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSideMenu()
    }
    
    func setupSideMenu() {
        SideMenuManager.default.menuLeftNavigationController = storyboard!.instantiateViewController(withIdentifier: "LeftMenuNavigationController") as? UISideMenuNavigationController
        SideMenuManager.default.menuPresentMode = .viewSlideInOut
    }

    
    @IBAction func clickAppointments(_ sender: Any) {
        let appointmentsVC = storyboard?.instantiateViewController(withIdentifier: String(describing: AppointmentsViewController.self)) as! AppointmentsViewController
        navigationController?.pushViewController(appointmentsVC, animated: true)
    }
    
    @IBAction func clickPatient(_ sender: Any) {
        let patientsVC = storyboard?.instantiateViewController(withIdentifier: String(describing: PatientsViewController.self)) as! PatientsViewController
        navigationController?.pushViewController(patientsVC, animated: true)
    }
}
