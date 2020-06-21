//
//  ContentView.swift
//  AR2DSkeleton_Starter
//
//  Created by Pranav Kasetti on 19/06/2020.
//  Copyright © 2020 Pranav Kasetti. All rights reserved.
//

import SwiftUI
import ARKit
import RealityKit

struct BodyTrackContentView: View {

  var body: some View {
    return ARViewContainer().edgesIgnoringSafeArea(.all)
  }
}

struct ARViewContainer: UIViewRepresentable {

  func makeUIView(context: Context) -> ARView {
    return BodyTrackingView(frame: UIScreen.main.bounds)
  }

  func updateUIView(_ uiView: ARView, context: Context) {}
}

#if DEBUG
struct BodyTrackContentView_Previews : PreviewProvider {
  static var previews: some View {
    BodyTrackContentView()
  }
}
#endif
