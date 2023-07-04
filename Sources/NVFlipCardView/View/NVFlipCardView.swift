//
//  NVFlipCardView.swift
//  
//
//  Created by Nikilicious on 04/07/23.
//

import Foundation
import SwiftUI

struct NVFlipCardView: View {

  @ObservedObject var presenter: NVFlipCardPresenter

  var body: some View {
    Rectangle()
      .foregroundColor(presenter.isFlipped ? .blue : .green)
      .cornerRadius(10)
      .frame(width: 300, height: 500)
      .shadow(color: .gray, radius: 10)
      .onTapGesture {
        presenter.flipButtonTapped()
      }
      .rotation3DEffect(.degrees(presenter.isFlipped ? 180 : 0), axis: (x: 0, y: 1, z: 0))
      .animation(.default, value: presenter.isFlipped)
  }

}

struct NVFlipCardView_Previews: PreviewProvider {
  static var previews: some View {
    NVFlipCardView(presenter: NVFlipCardPresenter())
  }
}
