//
//  ViewController.swift
//  AspectFitLeftAlignment
//
//  Created by joon-ho kil on 2020/02/12.
//  Copyright © 2020 joon-ho kil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "R720x0")
        imageView.contentMode = .scaleAspectFit
        imageView.align
        
    }


}

