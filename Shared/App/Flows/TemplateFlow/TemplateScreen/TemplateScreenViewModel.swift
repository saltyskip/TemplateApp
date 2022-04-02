//
//  TemplateScreenViewModel.swift
//  TemplateApp
//
//  Created by Andrei Terentiev on 4/2/22.
//

import Foundation
import Resolver

protocol TemplateScreenViewModelProtocol: ObservableObject {
  func helloWorld() -> String
}

class TemplateScreenViewModel: TemplateScreenViewModelProtocol {
  @Injected var interactor: TemplateInteractorProtocol

  func helloWorld() -> String {
    return interactor.helloWorld()
  }
}
