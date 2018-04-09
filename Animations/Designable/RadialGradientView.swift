//
//  RadialGradientView.swift
//  Animations
//
//  Created by Juan Pablo Ospina Herrera on 4/6/18.
//  Copyright © 2018 Juan Pablo Ospina Herrera. All rights reserved.
//

import UIKit

@IBDesignable
class RadialGradientView: UIView {

    @IBInspectable var insideColor: UIColor = UIColor.clear
    @IBInspectable var outsideColor: UIColor = UIColor.clear
    
    override func draw(_ rect: CGRect) {
        let colors = [insideColor.cgColor, outsideColor.cgColor] as CFArray
        let endRadius = min(frame.width, frame.height) / 2
        let center = CGPoint(x: bounds.size.width/2, y: bounds.size.height/2)
        
        let gradient = CGGradient(colorsSpace: nil, colors: colors, locations: nil)
        
        UIGraphicsGetCurrentContext()?.drawRadialGradient(gradient!, startCenter: center, startRadius: 0.0, endCenter: center, endRadius: endRadius, options: .drawsAfterEndLocation)
    }
}
