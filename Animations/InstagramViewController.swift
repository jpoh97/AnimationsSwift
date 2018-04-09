//
//  instagramViewController.swift
//  Animations
//
//  Created by Juan Pablo Ospina Herrera on 4/6/18.
//  Copyright © 2018 Juan Pablo Ospina Herrera. All rights reserved.
//

import UIKit

class InstagramViewController: UIViewController {

    @IBOutlet weak var gradiantView: GradiantView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var segmentedContol: UISegmentedControl!
    
    var tableData: [UIImage] = []
    var image: UIImage?
    var currentArrayIndex = -1
    var colorArray: [(color1: UIColor, color2:  UIColor)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorArray.append((color1: #colorLiteral(red: 0, green: 0.9764705882, blue: 0, alpha: 1), color2: #colorLiteral(red: 0, green: 0.7215686275, blue: 0.662745098, alpha: 1)))
        colorArray.append((color1: #colorLiteral(red: 0, green: 0.7215686275, blue: 0.662745098, alpha: 1), color2: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
        colorArray.append((color1: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), color2: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)))
        colorArray.append((color1: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1), color2: #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)))
        colorArray.append((color1: #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1), color2: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
        colorArray.append((color1: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1), color2: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
        colorArray.append((color1: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1), color2: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)))
        colorArray.append((color1: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1), color2: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)))
        colorArray.append((color1: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), color2: #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)))
        
        tableData.append(#imageLiteral(resourceName: "h1"))
        tableData.append(#imageLiteral(resourceName: "h2"))
        tableData.append(#imageLiteral(resourceName: "h3"))
        tableData.append(#imageLiteral(resourceName: "h4"))
        tableData.append(#imageLiteral(resourceName: "h5"))
        tableData.append(#imageLiteral(resourceName: "h6"))
        tableData.append(#imageLiteral(resourceName: "h7"))
        tableData.append(#imageLiteral(resourceName: "h8"))
        tableData.append(#imageLiteral(resourceName: "h9"))
        
        image = tableData[0]
        
        tableView.dataSource = self
        updateData()
        
        animateBackgroundColor()
    } 

    func animateBackgroundColor() {
        currentArrayIndex = currentArrayIndex == colorArray.count - 1 ? 0 : currentArrayIndex + 1 ;
        
        UIView.transition(with: gradiantView, duration: 2, options: [.transitionCrossDissolve], animations: {
            self.gradiantView.firstColor = self.colorArray[self.currentArrayIndex].color1
            self.gradiantView.secondColor = self.colorArray[self.currentArrayIndex].color2
        }) { (success) in
            self.animateBackgroundColor()
        }
    }

    @IBAction func filterChanged(_ sender: UISegmentedControl) {
        updateData()
    }
}
