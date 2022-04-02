//
//  TemplateRepository.swift
//  TemplateApp
//
//  Created by Andrei Terentiev on 4/2/22.
//

import Foundation
import Resolver

protocol TemplateRepositoryProtocol {

}

class TemplateRepository: TemplateRepositoryProtocol {
  @Injected var dao: TemplateDaoProtocol
  @Injected var service: TemplateServiceProtocol
}
