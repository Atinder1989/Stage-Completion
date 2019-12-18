//
//  StageModel.swift
//  Stage
//
//  Created by IMPUTE on 18/12/19.
//  Copyright © 2019 Atinder. All rights reserved.
//

import Foundation
import UIKit

struct StageModel {
    var stage : Stage
    init(frame:CGRect,imageName:String) {
        self.stage = Stage()
        self.stage.setData(imageName: imageName)
        self.stage.frame = frame
    }
}
