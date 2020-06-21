//
//  SessionDelegate.swift
//  AR2DSkeleton_Starter
//
//  Created by Pranav Kasetti on 19/06/2020.
//  Copyright © 2020 Pranav Kasetti. All rights reserved.
//

import Foundation
import ARKit
import RealityKit

class DrawingDelegate {

  private var view: UIView?
  private var anchors: [ARSkeleton.JointName: CAShapeLayer] = [:]
  private var lines: [ARSkeleton.JointName: CAShapeLayer] = [:]

  func drawSkeleton(_ view: UIView, person: ARBody2D) {
  }
}

private extension DrawingDelegate {
  // Draws a line between two joints.
  private func drawLine(currentJoints: [ARSkeleton.JointName],
                        childInfo: (name: ARSkeleton.JointName, point: CGPoint),
                        parentInfo: (name: ARSkeleton.JointName, point: CGPoint)) {
    if !currentJoints.contains(parentInfo.name) {
      return
    }
    lines[childInfo.name]?.removeFromSuperlayer()
    let line = CAShapeLayer()
    let linePath = UIBezierPath()
    linePath.move(to: childInfo.point)
    linePath.addLine(to: parentInfo.point)
    line.path = linePath.cgPath
    line.strokeColor = UIColor.red.cgColor
    line.lineWidth = 3.0
    view?.layer.addSublayer(line)

    lines[childInfo.name] = line
  }

  // Draws a red circle at a joint position.
  func drawNode(center: CGPoint,
                joint: ARSkeleton2D.JointName) {
    anchors[joint]?.removeFromSuperlayer()

    let circlePath = UIBezierPath(arcCenter: center,
                                  radius: CGFloat(10),
                                  startAngle: CGFloat(0),
                                  endAngle: CGFloat(Double.pi * 2),
                                  clockwise: true)
    let shapeLayer = CAShapeLayer()
    shapeLayer.path = circlePath.cgPath
    shapeLayer.fillColor = UIColor.red.cgColor
    shapeLayer.strokeColor = UIColor.red.cgColor
    shapeLayer.lineWidth = 3.0
    view?.layer.addSublayer(shapeLayer)

    anchors[joint] = shapeLayer
  }
}
