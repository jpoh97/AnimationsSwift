//
//  EmitterViewController.swift
//  Animations
//
//  Created by Juan Pablo Ospina Herrera on 4/6/18.
//  Copyright © 2018 Juan Pablo Ospina Herrera. All rights reserved.
//

import UIKit

class EmitterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ussrBalls()
    }
    
    func ussrBalls() {
        let emitter = Emitter.get(with: #imageLiteral(resourceName: "ussr"))
        emitter.emitterPosition = CGPoint(x: view.frame.width / 2, y: 50.0)
        emitter.emitterSize = CGSize(width: view.frame.width, height: 50)
        view.layer.addSublayer(emitter)
    }
}
