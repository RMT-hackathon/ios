//
//  SplashViewController.swift
//  RegisterMyTeam
//
//  Created by Kobe McKee on 1/2/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let backgroundImageView = UIImageView(frame: self.view.frame)
        backgroundImageView.image = UIImage(named: "SplashBackground")
        backgroundImageView.contentMode = .scaleToFill
        
        let overlayView = UIView(frame: self.view.frame)
        overlayView.backgroundColor = AppearanceHelper.overlayBlue
        backgroundImageView.addSubview(overlayView)
        
        
        
        
        self.view.insertSubview(backgroundImageView, at: 0)
        
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
