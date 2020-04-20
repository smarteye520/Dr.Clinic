//
//  BookAppointViewController.swift
//  U Clinic
//
//  Created by smarteye on 2/28/19.
//  Copyright © 2019 smarteye. All rights reserved.
//

import UIKit

class BookAppointViewController: UIViewController, AMClockViewDelegate {
    
    @IBOutlet weak var cView: AMClockView!
    @IBOutlet weak var btnAM: UIButton!
    @IBOutlet weak var btnPM: UIButton!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var lblAP: UILabel!
    let dateFormatter = DateFormatter()
    var bAP : Bool = true

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cView.delegate = self
        dateFormatter.locale = Locale(identifier: "ja_JP")
        dateFormatter.dateFormat = "hh:mm"

        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        
        if hour < 12 {
            bAP = true
        } else {
            bAP = false
        }
        setUI()
        
        let strtime = String(hour) + ":00"
        cView.selectedDate = dateFormatter.date(from: strtime)
        timeLabel.text = dateFormatter.string(from: date)
    }
    
    func setUI() {
        if bAP {
            btnAM.setBackgroundImage(UIImage(named: "today.png"), for: .normal)
            btnAM.setTitleColor(UIColor.white, for: .normal)
            btnPM.setBackgroundImage(nil, for: .normal)
            btnPM.setTitleColor(UIColor.black, for: .normal)
            lblAP.text = "AM"
        } else {
            btnPM.setBackgroundImage(UIImage(named: "today.png"), for: .normal)
            btnPM.setTitleColor(UIColor.white, for: .normal)
            btnAM.setBackgroundImage(nil, for: .normal)
            btnAM.setTitleColor(UIColor.black, for: .normal)
            lblAP.text = "PM"
        }
    }
    
    @IBAction func clickBack(_ sender: Any) {
        let _ = self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickBookAppointment(_ sender: Any) {
        let appointmentdetailVC = storyboard?.instantiateViewController(withIdentifier: String(describing: AppointmentDetailViewController.self)) as! AppointmentDetailViewController
        navigationController?.pushViewController(appointmentdetailVC, animated: true)
    }
    
    @IBAction func clickAM(_ sender: Any) {
        bAP = true
        setUI()
    }
    
    @IBAction func clickPM(_ sender: Any) {
        bAP = false
        setUI()
    }
    
    func clockView(clockView: AMClockView, didChangeDate date: Date) {
        timeLabel.text = dateFormatter.string(from: date);
    }
}

