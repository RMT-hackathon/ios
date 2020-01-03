//
//  AthleteTeamsViewController.swift
//  RegisterMyTeam
//
//  Created by Kobe McKee on 1/2/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import UIKit
import SideMenu

class AthleteTeamsViewController: UIViewController {

    @IBOutlet weak var hamburgerBarButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stylize()
    }
    
    
    func stylize() {
        navigationController?.navigationBar.barTintColor = AppearanceHelper.brandBlue
        navigationController?.navigationBar.isTranslucent = false
        
        hamburgerBarButton.tintColor = AppearanceHelper.gray
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
