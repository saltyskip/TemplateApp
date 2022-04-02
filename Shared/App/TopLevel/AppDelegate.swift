//
//  AppDelegate.swift
//  TemplateApp
//
//  Created by Andrei Terentiev on 4/2/22.
//

import Foundation

#if !os(macOS)
  import UIKit

  class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
      _ application: UIApplication,
      didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {
      return true
    }
  }
#endif
