//
//  CustomTableViewCell.swift
//  Animations
//
//  Created by Juan Pablo Ospina Herrera on 4/6/18.
//  Copyright © 2018 Juan Pablo Ospina Herrera. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImage: UIImageView!
    
    func setUp(image: UIImage) {
        UIView.transition(with: self.cellImage, duration: 1, options: [.transitionCrossDissolve], animations: {
            self.cellImage.image = image
        })
    }
    
}
