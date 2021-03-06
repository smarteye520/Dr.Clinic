//
//  AppointmentsViewController.swift
//  U Clinic
//
//  Created by smarteye on 2/27/19.
//  Copyright © 2019 smarteye. All rights reserved.
//

import UIKit

class AppointmentsViewController: UIViewController {

    @IBOutlet weak var tvAppointment: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tvAppointment.separatorStyle = .none
        self.tvAppointment.tableFooterView = UIView(frame: CGRect.zero)
    }
    
    @IBAction func clickBack(_ sender: Any) {
        let _ = self.navigationController?.popViewController(animated: true)
    }    
}

extension AppointmentsViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 74
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.reloadData()
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if self.tvAppointment == scrollView {
        }
    }
}

extension AppointmentsViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "appointmentcell") as? AppointmentTableViewCell {
            cell.imgProfile.layer.borderWidth = 1
            cell.imgProfile.layer.masksToBounds = false
            cell.imgProfile.layer.borderColor = UIColor.gray.cgColor
            cell.imgProfile.layer.cornerRadius = cell.imgProfile.frame.height/2
            cell.imgProfile.clipsToBounds = true
            
            return cell
        }
        return UITableViewCell()
    }
}
