//
//  BottonMenuViewController.swift
//  Animations
//
//  Created by Juan Pablo Ospina Herrera on 4/3/18.
//  Copyright © 2018 Juan Pablo Ospina Herrera. All rights reserved.
//

import UIKit

class BottonMenuViewController: UIViewController {
    
    @IBOutlet weak var more: UIButton!
    @IBOutlet weak var info: UIButton!
    @IBOutlet weak var alpha: UIButton!
    @IBOutlet weak var betha: UIButton!
    
    var infoCenter: CGPoint!
    var alphaCenter: CGPoint!
    var bethaCenter: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        infoCenter = info.center
        alphaCenter = alpha.center
        bethaCenter = betha.center
        
        info.center = more.center
        alpha.center = more.center
        betha.center = more.center
        
        info.alpha = 0
        alpha.alpha = 0
        betha.alpha = 0
    }

    @IBAction func moreClicked(_ sender: UIButton) {
        if sender.currentImage == #imageLiteral(resourceName: "more_off") {
            sender.setImage(#imageLiteral(resourceName: "more_on"), for: .normal)
            UIView.animate(withDuration: 0.3, animations: {
                self.info.alpha = 1
                self.alpha.alpha = 1
                self.betha.alpha = 1
                
                self.info.center = self.infoCenter
                self.alpha.center = self.alphaCenter
                self.betha.center = self.bethaCenter
            })
        } else {
            sender.setImage(#imageLiteral(resourceName: "more_off"), for: .normal)
            UIView.animate(withDuration: 0.3, animations: {
                
                self.info.center = self.more.center
                self.alpha.center = self.more.center
                self.betha.center = self.more.center
                
                self.info.alpha = 0
                self.alpha.alpha = 0
                self.betha.alpha = 0
            })
        }
    }
    
    @IBAction func alphaClicked(_ sender: UIButton) {
        print("a")
        if sender.currentTitle! == "a" {
            sender.setTitle("A", for: .normal)
        } else {
            sender.setTitle("a", for: .normal)
        }
    }
    
    @IBAction func bethaClicked(_ sender: UIButton) {
        print("a")
        if sender.currentTitle! == "b" {
            sender.setTitle("B", for: .normal)
        } else {
            sender.setTitle("b", for: .normal)
        }
    }
    
}
