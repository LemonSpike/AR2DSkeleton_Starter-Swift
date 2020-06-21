//
//  AppDelegate.swift
//  AR2DSkeleton_Starter
//
//  Created by Pranav Kasetti on 19/06/2020.
//  Copyright © 2020 Pranav Kasetti. All rights reserved.
//

import UIKit
import SwiftUI

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions
                   launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let window = UIWindow(frame: UIScreen.main.bounds)
    window.rootViewController = UIHostingController(rootView: BodyTrackContentView())
    self.window = window
    window.makeKeyAndVisible()
    return true
  }
}
