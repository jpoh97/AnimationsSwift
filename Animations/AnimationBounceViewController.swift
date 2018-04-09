//
//  AnimationBounceViewController.swift
//  Animations
//
//  Created by Juan Pablo Ospina Herrera on 4/4/18.
//  Copyright © 2018 Juan Pablo Ospina Herrera. All rights reserved.
//

import UIKit

class AnimationBounceViewController: UIViewController {

    @IBOutlet weak var popup: UIVisualEffectView!
    @IBOutlet weak var hangingEfectSwitch: UISwitch!
    var originalCenter: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popup.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        originalCenter = popup.center
    }

    @IBAction func sync(_ sender: UIButton) {
        if hangingEfectSwitch.isOn {
            popup.layer.anchorPoint = CGPoint(x: 0.5, y: 0)
            popup.center.y = popup.center.y - popup.frame.height / 2
            popup.transform = CGAffineTransform(rotationAngle: 1.8)
        } else {
            popup.transform = CGAffineTransform(scaleX: 0.3, y: 2)
        }
        firstAnimation()
    }
    
    func firstAnimation() {
        UIView.animate(withDuration: 1,
                       delay: 0.0,
                       usingSpringWithDamping: 0.3,
                       initialSpringVelocity: 0,
                       options: .allowUserInteraction,
                       animations: {
                        self.popup.transform = .identity
        }) { (success) in
            self.popup.center = self.originalCenter
            self.popup.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        }
        popup.alpha = 1
    }
    
    @IBAction func ok(_ sender: UIButton) {
        popup.alpha = 0
    }
}
