//
//  NVFlipCardPresenter.swift
//  
//
//  Created by Nikilicious on 04/07/23.
//

import Foundation

protocol NVFlipCardPresenterProtocol: ObservableObject {
  var isFlipped: Bool { get }
  func flipButtonTapped()
}

class NVFlipCardPresenter: NVFlipCardPresenterProtocol {
  @Published var isFlipped: Bool = false

  func flipButtonTapped() {
    isFlipped.toggle()
  }
}
