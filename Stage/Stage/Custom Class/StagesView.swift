//
//  StagesView.swift
//  Stage
//
//  Created by IMPUTE on 18/12/19.
//  Copyright © 2019 Atinder. All rights reserved.
//

import Foundation
import UIKit

class StagesView {
    
    let scrollView: UIScrollView = {
           let v = UIScrollView()
            v.frame = UIScreen.main.bounds
           v.translatesAutoresizingMaskIntoConstraints = false
           return v
    }()
    
    private var stagesCoordinateList = [StageModel]()
    
    func getStagesView() -> UIScrollView {
        self.setStagesCoordinates()
        self.addStagesOnScrollView()
        return scrollView
    }
    
    private func setStagesCoordinates() {
        let height:CGFloat = 50.0
        let width:CGFloat = 50.0
         
        stagesCoordinateList = [
            StageModel.init(frame: CGRect.init(x: 50.0, y: 50.0, width: width, height: height), imageName: "duck"),
                      StageModel.init(frame: CGRect.init(x: UIScreen.main.bounds.size.width - 100, y: 100, width: width, height: height), imageName: "duck"),
                      StageModel.init(frame: CGRect.init(x: 100, y: 200, width: width, height: height), imageName: "duck"),
                      StageModel.init(frame: CGRect.init(x: UIScreen.main.bounds.size.width - 200, y: 300, width: 100, height: 100), imageName: "duck"),
                      StageModel.init(frame: CGRect.init(x: 10, y: 350, width: width, height: height), imageName: "duck"),
                      StageModel.init(frame: CGRect.init(x: 300, y: 500, width: width, height: height), imageName: "duck"),
                      StageModel.init(frame: CGRect.init(x: 100, y: 700, width: 75, height: 150), imageName: "duck"),
                      StageModel.init(frame: CGRect.init(x: 350, y: 800, width: width, height: height), imageName: "duck")

                  ]
    }
    
    private  func addStagesOnScrollView() {
           var scrollViewContentSize:CGFloat=0;
           let spacer:CGFloat = 20
           
           for (currentIndex) in (0..<stagesCoordinateList.count) {
               let currentStage:StageModel = stagesCoordinateList[currentIndex]
               if currentIndex < stagesCoordinateList.count - 1 {
                   let startPoint = currentStage.stage.center
                   let nextStage:StageModel = stagesCoordinateList[currentIndex+1]
                   let endPoint = nextStage.stage.center
                   self.drawLine(fromPoint: startPoint, toPoint: endPoint)
               }
               scrollView.addSubview(currentStage.stage)
               scrollViewContentSize+=currentStage.stage.frame.size.height + spacer
               
               scrollViewContentSize+=50
               scrollView.contentSize = CGSize(width: UIScreen.main.bounds.size.width, height: scrollViewContentSize)
           }
    }
       
    private func drawLine(fromPoint start: CGPoint, toPoint end:CGPoint) {
           let line = CAShapeLayer()
           let linePath = UIBezierPath()
           linePath.move(to: start)
           linePath.addLine(to: end)
           line.path = linePath.cgPath
           line.strokeColor = UIColor.white.cgColor
           line.lineWidth = 1
           line.lineJoin = CAShapeLayerLineJoin.round
           self.scrollView.layer.addSublayer(line)
       }
}
