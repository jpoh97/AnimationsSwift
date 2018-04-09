//
//  FlipOverViewController.swift
//  Animations
//
//  Created by Juan Pablo Ospina Herrera on 4/4/18.
//  Copyright © 2018 Juan Pablo Ospina Herrera. All rights reserved.
//

import UIKit

class FlipOverViewController: UIViewController {
    
    @IBOutlet weak var questionView: UIView!
    @IBOutlet weak var answerView: UIView!
    
    var flippedCard = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func flipCard(_ sender: UIButton) {
        flippedCard = !flippedCard
        
        let fromView = flippedCard ? questionView : answerView
        let toView = flippedCard ? answerView : questionView
        
        UIView.transition(from: fromView!, to: toView!, duration: 0.5, options: [.transitionCrossDissolve, .showHideTransitionViews])
    }
}
