//
//  TemplateInteractor.swift
//  TemplateApp
//
//  Created by Andrei Terentiev on 4/2/22.
//

import Foundation
import Resolver

protocol TemplateInteractorProtocol {
  func helloWorld() -> String
}

class TemplateInteractor: TemplateInteractorProtocol {
  @Injected var repo: TemplateRepositoryProtocol

  func helloWorld() -> String {
    return "hello world"
  }
}
