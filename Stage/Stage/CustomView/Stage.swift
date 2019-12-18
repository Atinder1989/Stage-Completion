//
//  Stage.swift
//  Stage
//
//  Created by IMPUTE on 18/12/19.
//  Copyright © 2019 Atinder. All rights reserved.
//

import UIKit

class Stage: UIView {
    @IBOutlet var contentView: UIView!

    // var imageView: UIImageView!
    
    let imageView: UIImageView = {
           let v = UIImageView()
           v.frame = UIScreen.main.bounds
           v.translatesAutoresizingMaskIntoConstraints = false
           return v
    }()
    
    override init(frame: CGRect) {
           super.init(frame: frame)
           xibSetup()
       }
       
       required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
           xibSetup()
       }
       
       private func xibSetup() {
           Bundle.main.loadNibNamed("Stage", owner: self, options: nil)
           addSubview(contentView)
           contentView.frame = self.bounds
           contentView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        
          addSubview(imageView)
          imageView.frame = self.bounds
          imageView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
       }
    
    func setData(imageName:String) {
        self.imageView.image = UIImage.init(named: imageName)
    }
}
