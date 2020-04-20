//
//  CalendarViewController.swift
//  U Clinic
//
//  Created by smarteye on 2/27/19.
//  Copyright © 2019 smarteye. All rights reserved.
//

import UIKit

enum MyTheme {
    case light
    case dark
}

class CalendarViewController: UIViewController, CalenderDelegate {
    var strCurrent : String = ""
    
    @IBOutlet weak var uvCalendar: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.isTranslucent = false
        self.view.backgroundColor = Style.bgColor
        
        self.uvCalendar.addSubview(calenderView)
        calenderView.delegate = self
        calenderView.topAnchor.constraint(equalTo: uvCalendar.topAnchor, constant: 0).isActive=true
        calenderView.rightAnchor.constraint(equalTo: uvCalendar.rightAnchor, constant: -0).isActive=true
        calenderView.leftAnchor.constraint(equalTo: uvCalendar.leftAnchor, constant: 0).isActive=true
        calenderView.heightAnchor.constraint(equalToConstant: 365).isActive=true

    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        calenderView.myCollectionView.collectionViewLayout.invalidateLayout()
    }
    
    @IBAction func clickBack(_ sender: Any) {
        let _ = self.navigationController?.popViewController(animated: true)
    }
    
    lazy var  calenderView: CalenderView = {
        let calenderView = CalenderView(theme: MyTheme.light)
        calenderView.translatesAutoresizingMaskIntoConstraints=false
        return calenderView
    }()
    
    func didTapDate(date: String, available: Bool) {
        if available == true {
            strCurrent = date
        } else {
            showAlert()
        }
    }
    
    fileprivate func showAlert(){
        let alert = UIAlertController(title: "Unavailable", message: "This slot is already booked.\nPlease choose another date.", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .destructive, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func clickGoNext(_ sender: Any) {
        let bookAppointmentVC = storyboard?.instantiateViewController(withIdentifier: String(describing: BookAppointViewController.self)) as! BookAppointViewController
        navigationController?.pushViewController(bookAppointmentVC, animated: true)
    }
    

}
