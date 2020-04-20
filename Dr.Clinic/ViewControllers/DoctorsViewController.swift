//
//  DoctorsViewController.swift
//  U Clinic
//
//  Created by smarteye on 2/27/19.
//  Copyright © 2019 smarteye. All rights reserved.
//

import UIKit

class DoctorsViewController: UIViewController {

    @IBOutlet weak var tvDoctor: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tvDoctor.separatorStyle = .none
        self.tvDoctor.tableFooterView = UIView(frame: CGRect.zero)
    }
    
    @IBAction func clickBack(_ sender: Any) {
        let _ = self.navigationController?.popViewController(animated: true)
    }  
    
}

extension DoctorsViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 95
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.reloadData()
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if self.tvDoctor == scrollView {
        }
    }
}

extension DoctorsViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "doctorcell") as? DoctorTableViewCell {
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
