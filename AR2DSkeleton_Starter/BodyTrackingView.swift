//
//  BodyTrackingView.swift
//  AR2DSkeleton_Starter
//
//  Created by Pranav Kasetti on 19/06/2020.
//  Copyright © 2020 Pranav Kasetti. All rights reserved.
//

import UIKit
import ARKit
import RealityKit

class BodyTrackingView: ARView {

  @objc required dynamic init(frame frameRect: CGRect) {
    super.init(frame: frameRect)
  }

  @objc required dynamic init?(coder decoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
