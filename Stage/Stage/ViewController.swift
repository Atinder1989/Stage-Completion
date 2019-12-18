//
//  ViewController.swift
//  Stage
//
//  Created by IMPUTE on 18/12/19.
//  Copyright © 2019 Atinder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(StagesView().getStagesView())
    }
}


