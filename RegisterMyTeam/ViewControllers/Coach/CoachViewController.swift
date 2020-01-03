//
//  CoachViewController.swift
//  RegisterMyTeam
//
//  Created by Kobe McKee on 1/2/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import UIKit
import SideMenu
import Floaty


class CoachViewController: UIViewController {

    @IBOutlet weak var hamburgerBarButton: UIBarButtonItem!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupFloaty()
    }
    
    
    func setupFloaty() {
        let teamIcon = UIImage(named: "TabIcon-Group")
        let floaty = Floaty()
        floaty.itemButtonColor = AppearanceHelper.brandBlue
        
        floaty.addItem("Add Team", icon: teamIcon) { (item) in
            DispatchQueue.main.async {
                self.performSegue(withIdentifier: "AddTeamSegue", sender: self)
            }
        }
        floaty.paddingY = 42
        floaty.buttonColor = AppearanceHelper.brandBlue
        floaty.plusColor = AppearanceHelper.gray
        self.view.addSubview(floaty)
    }
    
    

    @IBAction func hamburgerButtonPressed(_ sender: Any) {
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
