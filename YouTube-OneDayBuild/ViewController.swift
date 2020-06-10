//
//  ViewController.swift
//  YouTube-OneDayBuild
//
//  Created by Admin on 10/06/20.
//  Copyright © 2020 Ashok@apponward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        model.getVideo()
    }


}

