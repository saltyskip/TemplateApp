//
//  TemplateAppApp.swift
//  Shared
//
//  Created by Andrei Terentiev on 3/26/22.
//

import SwiftUI

@main
struct TemplateAppApp: App {
  #if !os(macOS)
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
  #endif

  var body: some Scene {
    WindowGroup {
      TemplateScreen(viewModel: TemplateScreenViewModel())
    }
  }
}
