//
//  SplashViewController.swift
//  U Clinic
//
//  Created by smarteye on 2/21/19.
//  Copyright © 2019 smarteye. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {
    
    var splashtimer: Timer!
    override func viewDidLoad() {
        super.viewDidLoad()
        splashtimer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(gotoLogin), userInfo: nil, repeats: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        splashtimer.invalidate()
    }
    
    @IBAction func clickStartButton(_ sender: Any) {
        self.gotoLogin()
    }
    
    @objc func gotoLogin() {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: String(describing: LoginViewController.self)) as! LoginViewController
        navigationController?.pushViewController(loginVC, animated: false)
    }
}
