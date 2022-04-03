//
//  AppSettings.swift
//  TemplateApp
//
//  Created by Andrei Terentiev on 4/3/22.
//

import Foil
import Foundation

protocol AppSettingsProtocol {

}

final class AppSettings: AppSettingsProtocol {

  @WrappedDefault(key: "flagEnabled")
  var flagEnabled = true

  @WrappedDefaultOptional(key: "timestamp")
  var timestamp: Date?
}
