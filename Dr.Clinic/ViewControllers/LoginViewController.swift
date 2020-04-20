//
//  LoginViewController.swift
//  U Clinic
//
//  Created by smarteye on 2/21/19.
//  Copyright © 2019 smarteye. All rights reserved.
//

import UIKit
import IHKeyboardAvoiding
import Alamofire
import SwiftyJSON

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var avoidingView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    var arrRes = [[String:AnyObject]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfEmail.delegate = self
        tfPassword.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        KeyboardAvoiding.avoidingView = self.avoidingView
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tfEmail.text = ""
        tfPassword.text = ""
    }
    
    @IBAction func clickLogin(_ sender: Any) {
                
    }
    
    @IBAction func clickJoin(_ sender: Any) {
        let signupVC = storyboard?.instantiateViewController(withIdentifier: String(describing: SignupViewController.self)) as! SignupViewController
        navigationController?.pushViewController(signupVC, animated: true)
    }
    
    // UITextField Delegate
    public func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField == self.tfPassword {
            KeyboardAvoiding.avoidingView = self.passwordView
        }
        return true
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}
