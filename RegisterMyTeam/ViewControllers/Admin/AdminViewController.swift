//
//  AdminViewController.swift
//  RegisterMyTeam
//
//  Created by Kobe McKee on 1/2/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import UIKit
import SideMenu
import Floaty

class AdminViewController: UIViewController {

    @IBOutlet weak var hamburgerBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupFloaty()
    }
    
    
    func setupFloaty() {
        let teamIcon = UIImage(named: "TabIcon-Group")
        let floaty = Floaty()
        floaty.itemButtonColor = AppearanceHelper.brandBlue
        
        floaty.addItem("Add Coach", icon: teamIcon) { (item) in
            DispatchQueue.main.async {
                self.performSegue(withIdentifier: "AddCoachSegue", sender: self)
            }
        }
        floaty.paddingY = 42
        floaty.buttonColor = AppearanceHelper.brandBlue
        floaty.plusColor = AppearanceHelper.gray
        self.view.addSubview(floaty)
    }
    
    
    
    
    @IBAction func hamburgerBarButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "showSideMenu", sender: self)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSideMenu" {
            guard let destinationNavC = segue.destination as? SideMenuNavigationController,
                let destinationVC = destinationNavC.topViewController as? SideMenuViewController else { return }
    
            destinationNavC.statusBarEndAlpha = 0
            }
    }
    

}
