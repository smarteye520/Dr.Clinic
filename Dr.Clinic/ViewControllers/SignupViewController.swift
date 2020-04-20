//
//  SignupViewController.swift
//  U Clinic
//
//  Created by smarteye on 2/21/19.
//  Copyright © 2019 smarteye. All rights reserved.
//

import UIKit
import IHKeyboardAvoiding


class SignupViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var fieldsView: UIView!
    @IBOutlet weak var avoidingView: UIView!
    @IBOutlet weak var imgUser: UIImageView!
    @IBOutlet weak var tfFullName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfConfirmPassword: UITextField!
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        imagePicker.allowsEditing = false
        
        tfFullName.delegate = self
        tfEmail.delegate = self
        tfPassword.delegate = self
        tfConfirmPassword.delegate = self
        
        imgUser.layer.borderWidth = 1
        imgUser.layer.masksToBounds = false
        imgUser.layer.borderColor = UIColor.white.cgColor
        imgUser.layer.cornerRadius = imgUser.frame.height/2
        imgUser.clipsToBounds = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        KeyboardAvoiding.avoidingView = self.avoidingView
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tfFullName.text = ""
        tfEmail.text = ""
        tfPassword.text = ""
        tfConfirmPassword.text = ""
    }
    
    func presentWithSource(_ source: UIImagePickerController.SourceType){
        imagePicker.sourceType = source
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func clickPhoto(_ sender: Any) {
        
        let alerteActionSheet = UIAlertController(title: "Take a photo", message: "choose media", preferredStyle: .actionSheet)
        let camera = UIAlertAction(title: "Camera", style: .default) { (action) in
            // verif si on est sur un device qui n'a pas de camera ou bien le simulateur
            if UIImagePickerController.isSourceTypeAvailable(.camera) {
                self.presentWithSource(.camera)
            } else {
                let alert = UIAlertController(title: "Error", message: "No Camera available", preferredStyle: .alert)
                let annuler = UIAlertAction(title: "Please try again", style: .destructive, handler: nil)
                alert.addAction(annuler)
                self.present(alert, animated: true, completion: nil)
                
            }
        }
        let gallery = UIAlertAction(title: "Photo Gallery", style: .default) { (action) in
            self.presentWithSource(.photoLibrary)
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alerteActionSheet.addAction(camera)
        alerteActionSheet.addAction(gallery)
        alerteActionSheet.addAction(cancel)
        
        // pour eviter les problemes sur un iPad
        if let popOver = alerteActionSheet.popoverPresentationController{
            popOver.sourceView = view
            popOver.sourceRect = CGRect(x: view.frame.midX, y: view.frame.midY, width: 0, height: 0)
            popOver.permittedArrowDirections = []
        }
        //
        
        present(alerteActionSheet, animated: true, completion: nil)
    }
    
    @IBAction func clickSignup(_ sender: Any) {
        let homeVC = storyboard?.instantiateViewController(withIdentifier: String(describing: HomeViewController.self)) as! HomeViewController
        navigationController?.pushViewController(homeVC, animated: true)
    }
    
    @IBAction func clickBackLogin(_ sender: Any) {
        let _ = self.navigationController?.popViewController(animated: true)
    }
    
    // UITextField Delegate
    public func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField == self.tfConfirmPassword {
            KeyboardAvoiding.avoidingView = self.fieldsView
        }
        return true
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension SignupViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let editee = info[.editedImage] as? UIImage {
            imgUser.image = editee
        } else if let originale = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imgUser.image = originale
        }
        dismiss(animated: true, completion: nil)
    }
}
