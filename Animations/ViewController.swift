//
//  ViewController.swift
//  Animations
//
//  Created by Juan Pablo Ospina Herrera on 4/3/18.
//  Copyright © 2018 Juan Pablo Ospina Herrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var raiting: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.alpha = 0;
        button.alpha = 0;
        titleLabel.alpha = 0;
        desc.alpha = 0;
        raiting.alpha = 0;
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated);
        
        UIView.animate(withDuration: 1, animations: {
            self.image.alpha = 0.6
        }) { (true) in
            self.showTitle()
        }
    }
    
    func showTitle() {
        UIView.animate(withDuration: 1, animations: {
            self.titleLabel.alpha = 1
        }) { (true) in
            self.showDesc()
        }
    }

    func showDesc() {
        UIView.animate(withDuration: 1, animations: {
            self.desc.alpha = 1
        }) { (true) in
            self.showButtonAndRaiting()
        }
    }
    
    func showButtonAndRaiting() {
        UIView.animate(withDuration: 1) {
            self.button.alpha = 1
            self.raiting.alpha = 1
        }
    }
}

