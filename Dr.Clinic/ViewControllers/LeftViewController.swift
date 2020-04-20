//
//  SplashViewController.swift
//  U Clinic
//
//  Created by smarteye on 2/21/19.
//  Copyright © 2019 smarteye. All rights reserved.
//

import UIKit

enum LeftMenu: Int {
    case HOME = 0
    case APPOINTMENTS
    case SERVICE
    case DASHBOARD
    case PROFILE
    case LOGOUT
}
protocol LeftMenuProtocol : class {
    func changeViewController(_ menu: LeftMenu)
}

class LeftViewController : UIViewController, LeftMenuProtocol {
    
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var tableView: UITableView!
    var iSelected = 0
    
    var menus = ["HOME", "Appointments", "SERVICE", "DASHBOARD", "PROFILE", "LOG OUT"]
    var mainViewController : UIViewController!
    var homeViewController: UIViewController!
    var appointmentsViewController: UIViewController!
    var serviceViewController: UIViewController!
    var dashboardViewController: UIViewController!
    var profileViewController: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.separatorStyle = .none
        self.tableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: self.tableView.frame.width, height: 1.0))
        self.tableView.tableHeaderView?.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.5)
        self.tableView.tableFooterView = UIView(frame: CGRect.zero)
        
        self.homeViewController = storyboard?.instantiateViewController(withIdentifier: String(describing: HomeViewController.self)) as! HomeViewController
        self.appointmentsViewController = storyboard?.instantiateViewController(withIdentifier: String(describing: CreateAppointViewController.self)) as! CreateAppointViewController
        self.serviceViewController = storyboard?.instantiateViewController(withIdentifier: String(describing: HomeViewController.self)) as! HomeViewController
        self.dashboardViewController = storyboard?.instantiateViewController(withIdentifier: String(describing: HomeViewController.self)) as! HomeViewController
        self.profileViewController = storyboard?.instantiateViewController(withIdentifier: String(describing: HomeViewController.self)) as! HomeViewController
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func changeViewController(_ menu: LeftMenu) {
      switch menu {
        case .HOME:
            self.mainViewController = self.homeViewController
          break
        case .APPOINTMENTS:
            self.mainViewController = self.appointmentsViewController
          break
        case .SERVICE:
            self.mainViewController = self.serviceViewController
          break
        case .DASHBOARD:
            self.mainViewController = self.dashboardViewController
          break
        case .PROFILE:
            self.mainViewController = self.profileViewController
          break
        case .LOGOUT:
            let _ = self.navigationController?.popViewController(animated: true)
            break
        }
        navigationController?.pushViewController(self.mainViewController, animated: true)
    }
    
    @IBAction func clickClose(_ sender: Any) {
        self.dismiss(animated: true) {
        }
    }
}

extension LeftViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 61
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        iSelected = indexPath.row
        tableView.reloadData()
        if let menu = LeftMenu(rawValue: indexPath.row) {
            self.changeViewController(menu)
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if self.tableView == scrollView {
        }
    }
}

extension LeftViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menus.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell") as? MenuCell {
            cell.imgThumbnail.isHidden = true
            if (iSelected == indexPath.row) {
                cell.imgThumbnail.isHidden = false
            }
            cell.configurateTheCell(menus[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}
