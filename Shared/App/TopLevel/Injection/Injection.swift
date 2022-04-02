//
//  AppDelegate+Injection.swift
//  TemplateApp
//
//  Created by Andrei Terentiev on 4/2/22.
//

import Foundation
import Resolver

extension Resolver: ResolverRegistering {
  public static func registerAllServices() {
    if ProcessInfo.processInfo.environment["XCTestConfigurationFilePath"] == nil {
      registerDaos()
      registerServices()
      registerRepositories()
      registerInteractors()
    }
  }

  public static func registerDaos() {
    register { TemplateDao() as TemplateDaoProtocol }
  }

  public static func registerServices() {
    register { TemplateService() as TemplateServiceProtocol }
  }

  public static func registerRepositories() {
    register { TemplateRepository() as TemplateRepositoryProtocol }
  }

  public static func registerInteractors() {
    register { TemplateInteractor() as TemplateInteractorProtocol }
  }

}
