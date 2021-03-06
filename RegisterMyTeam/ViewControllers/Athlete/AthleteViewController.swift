//
//  AthleteViewController.swift
//  RegisterMyTeam
//
//  Created by Kobe McKee on 1/2/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import UIKit
import SideMenu

class AthleteViewController: UIViewController {

    
    @IBOutlet weak var hamburgerBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stylize()

    }
    

    
    // MARK: - Side (Hamburger) Menu
    func stylize() {
        let titleImage = UIImage(named: "TitleArt")
        let titleImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        titleImageView.contentMode = .scaleAspectFill
        titleImageView.image = titleImage
        navigationItem.titleView = titleImageView
        
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
