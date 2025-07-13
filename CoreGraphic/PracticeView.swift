//
//  PracticeView.swift
//  CoreGraphic
//
//  Created by mac on 7/13/25.
//

import UIKit

@IBDesignable
class PracticeView: UIView {
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        let ctx = UIGraphicsGetCurrentContext()!
        
        
        ctx.setFillColor  (UIColor.orange.cgColor)
        ctx.setStrokeColor(UIColor.blue  .cgColor)
        ctx.setLineWidth(6.5)
        /*
         ctx.move(to: CGPoint(x: 0, y: 0))
         ctx.addLine(to: CGPoint(x: 180, y: 0))
         ctx.addLine(to: CGPoint(x: 180, y: 90))
         ctx.addLine(to: CGPoint(x: 0, y: 90))
         ctx.closePath()
         ctx.fillPath()
         */
        /*
         let rectPath = CGMutablePath()
         rectPath.move   (to: CGPoint(x: 2.25, y: 2.25))
         rectPath.addLine(to: CGPoint(x: 180.25, y: 2.25))
         rectPath.addLine(to: CGPoint(x: 180.25, y: 90.25))
         rectPath.addLine(to: CGPoint(x: 2.25, y: 90.25))
         rectPath.closeSubpath()
         
         ctx.addPath(rectPath)
         // ctx.fillPath()
         ctx.strokePath()
         */
        /*
        let rectPath = UIBezierPath()
        rectPath.move   (to: CGPoint(x: 2.25, y: 2.25))
        rectPath.addLine(to: CGPoint(x: 180.25, y: 2.25))
        rectPath.addLine(to: CGPoint(x: 180.25, y: 90.25))
        rectPath.addLine(to: CGPoint(x: 2.25, y: 90.25))
        ctx.fillPath()
         */
        
        let rectPath = UIBezierPath(
            rect: CGRect(x: 2, y: 2, width: 180, height: 90)
        )
        rectPath.fill()
        
        UIColor.green.setFill()
        createtrianglePath()
        
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 2, y: 2, width: 100, height: 100))
       
        ovalPath.fill()
        
        
    }
    func createtrianglePath() {
        let trianglePath = UIBezierPath()
        
        trianglePath.move   (to: CGPoint(x: 2, y: 90))
        trianglePath.addLine(to: CGPoint(x: 100, y: 90))
        trianglePath.addLine(to: CGPoint(x: 50, y: 10))
        trianglePath.close()
        UIColor.blue.setFill()
        trianglePath.fill()
    }
    
}
