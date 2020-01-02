//
//  SignUpViewController.swift
//  RegisterMyTeam
//
//  Created by Kobe McKee on 1/2/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var alreadyAMemberButton: UIButton!
    @IBOutlet weak var userTypePIckerView: UIPickerView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var password1TextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    @IBOutlet weak var rememberMeSwitch: UISwitch!
    @IBOutlet weak var signUpButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        signUpButton.layer.cornerRadius = 10
    }
    
    
    
    
    @IBAction func rememberSwitchedToggled(_ sender: Any) {
    }
    
    
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
