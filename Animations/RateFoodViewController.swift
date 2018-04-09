//
//  RateFoodVCViewController.swift
//  Animations
//
//  Created by Juan Pablo Ospina Herrera on 4/4/18.
//  Copyright © 2018 Juan Pablo Ospina Herrera. All rights reserved.
//

import UIKit

class RateFoodViewController: UIViewController {
    
    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var toggleMenuButton: UIButton!
    @IBOutlet weak var darkFillView: RoundView!
    @IBOutlet weak var fbButton: UIButton!
    @IBOutlet weak var twitter: UIButton!
    @IBOutlet weak var wspButton: UIButton!
    @IBOutlet weak var linkeninButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fbButton.alpha = 0
        twitter.alpha = 0
        wspButton.alpha = 0
        linkeninButton.alpha = 0
    }

    @IBAction func toggleMenu(_ sender: UIButton) {
        if self.darkFillView.transform == .identity {
            animateOpen()
            return
        }
        animateClose()
    }
    
    func animateOpen() {
        UIView.animate(withDuration: 1, animations: {
            self.darkFillView.transform = CGAffineTransform(scaleX: 9, y: 9)
            self.menuView.transform = CGAffineTransform(translationX: 0, y: -67)
            self.toggleMenuButton.transform = CGAffineTransform(rotationAngle: self.radians(degrees: 180))
        }) { (true) in
            UIView.animate(withDuration: 0.5, animations: {
                self.toggleSharedButtons()
            })
            self.menuView.backgroundColor = self.darkFillView.backgroundColor
            self.darkFillView.alpha = 0
        }
    }
    
    func animateClose() {
        UIView.animate(withDuration: 1, animations: {
            self.menuView.backgroundColor = UIColor.clear
            self.darkFillView.alpha = 1
            self.darkFillView.transform = .identity
            self.menuView.transform = .identity
            self.toggleMenuButton.transform = .identity
            self.toggleSharedButtons()
        })
    }
    
    func toggleSharedButtons() {
        fbButton.alpha = fbButton.alpha == 0 ? 1 : 0
        twitter.alpha = twitter.alpha == 0 ? 1 : 0
        wspButton.alpha = wspButton.alpha == 0 ? 1 : 0
        linkeninButton.alpha = linkeninButton.alpha == 0 ? 1 : 0
    }
    
    
    func radians(degrees: Double) -> CGFloat {
        return CGFloat(degrees * .pi / degrees)
    }
}
