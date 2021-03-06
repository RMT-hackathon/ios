//
//  Splash3ViewController.swift
//  RegisterMyTeam
//
//  Created by Kobe McKee on 1/2/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import UIKit

class Splash3ViewController: UIViewController {

    
    @IBOutlet weak var signInButton: UIButton!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupBackgroundImage()
        
        //signInButton.backgroundColor = AppearanceHelper.blueWhite
        
        //signUpButton.backgroundColor = AppearanceHelper.blueWhite
    }
    
   func setupBackgroundImage() {
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
