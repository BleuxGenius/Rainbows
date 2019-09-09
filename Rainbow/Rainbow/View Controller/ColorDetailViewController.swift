//
//  ViewController.swift
//  Rainbow
//
//  Created by Danielle Blackwell on 8/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    var cellColor: MyColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        guard let color = cellColor else {return }
        title = color.name
        view.backgroundColor = color.color
        
    }
}

