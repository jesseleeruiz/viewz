//
//  ViewController.swift
//  viewz
//
//  Created by Jesse Ruiz on 9/8/20.
//  Copyright © 2020 Jesse Ruiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var model = viewzModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.getVideos()
    }
}

