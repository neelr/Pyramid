//
//  Canvas_View.swift
//  Pyramid
//
//  Created by Neel Redkar on 3/29/19.
//  Copyright © 2019 tecton. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    var lay = false
    // Properties for line drawing
    var lineColor:UIColor!
    var lineWidth:CGFloat!
    var path:UIBezierPath!
    var touchPoint:CGPoint!
    var startingPoint:CGPoint!
    override func layoutSubviews() {
        self.clipsToBounds = true // no lines should be visible outside of the view
        self.isMultipleTouchEnabled = false // we only process one touch at a time
        
        // standard settings for our line
        if (lineColor != UIColor.blue) && (lineColor != UIColor.red) {
            lineColor = UIColor.blue
        }
        lineWidth = 5
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // get the touch position when user starts drawing
        let touch = touches.first
        startingPoint = touch?.location(in: self)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        // get the next touch point as the user draws
        lay = true
        let touch = touches.first
        touchPoint = touch?.location(in: self)
        
        // create path originating from the starting point to the next point the user reached
        path = UIBezierPath()
        path.move(to: startingPoint)
        path.addLine(to: touchPoint)
        
        // setting the startingPoint to the previous touchpoint
        // this updates while the user draws
        startingPoint = touchPoint
        
        drawShapeLayer() // draws the actual line shapes
    }
    
    func drawShapeLayer() {
        
        let shapeLayer = CAShapeLayer()
        // the shape layer is used to draw along the already created path
        shapeLayer.path = path.cgPath
        
        // adjusting the shape to our wishes
        shapeLayer.strokeColor = lineColor.cgColor
        shapeLayer.lineWidth = lineWidth
        shapeLayer.fillColor = UIColor.clear.cgColor
        
        // adding the shapelayer to the vies layer and forcing a redraw
        self.layer.addSublayer(shapeLayer)
        self.setNeedsDisplay()
        
    }
    func switchtored() {
        lineColor = UIColor.red
    }
    func switchtoblue() {
        lineColor = UIColor.blue
    }
    func clearCanvas() {
        do {
            if lay {
                path.removeAllPoints()
                self.layer.sublayers = nil
                self.setNeedsDisplay()
                lay = false
            }
        } catch {
            print("OOF")
        }
    }
    
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}
