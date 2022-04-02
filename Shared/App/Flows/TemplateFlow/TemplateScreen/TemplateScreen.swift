//
//  TemplateScreenModel.swift
//  TemplateApp
//
//  Created by Andrei Terentiev on 4/2/22.
//

import SwiftUI

struct TemplateScreen<Model>: View where Model: TemplateScreenViewModelProtocol {
  @StateObject var viewModel: Model
  var body: some View {
    Text(viewModel.helloWorld())
      .padding()
  }
}
