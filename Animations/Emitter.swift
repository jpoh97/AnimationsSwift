//
//  Emitter.swift
//  Animations
//
//  Created by Juan Pablo Ospina Herrera on 4/6/18.
//  Copyright © 2018 Juan Pablo Ospina Herrera. All rights reserved.
//

import UIKit

class Emitter {
    static func get(with image: UIImage) -> CAEmitterLayer {
        let emitter = CAEmitterLayer()
        emitter.emitterShape = kCAEmitterLayerLine
        emitter.emitterCells = generateEmitterLayers(with: image)
        return emitter
    }
    
    static func generateEmitterLayers(with image: UIImage) -> [CAEmitterCell] {
        var cells = [CAEmitterCell]()
        
        let cell = CAEmitterCell()
        cell.contents = image.cgImage
        cell.birthRate = 0.5
        cell.lifetime = 50
        cell.velocity = CGFloat(25)
        cell.emissionLongitude = (180 * (.pi/180))
        cell.emissionRange = (45 * (.pi/180))
        
        cell.scale = 1
        cell.scaleRange = 0.7
        
        cells.append(cell)
        
        return cells
    }
}
