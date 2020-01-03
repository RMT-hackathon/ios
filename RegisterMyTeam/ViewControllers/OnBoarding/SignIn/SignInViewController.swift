//
//  SignInViewController.swift
//  RegisterMyTeam
//
//  Created by Kobe McKee on 1/2/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var rememberMeSwitch: UISwitch!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var notAMemberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = AppearanceHelper.brandBlue
        signInButton.layer.cornerRadius = 10
    }
    

    
    
    @IBAction func rememberMeSwitchToggled(_ sender: Any) {
    }
    
    
    @IBAction func signInButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "toParentUserFlow", sender: self)
        
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
