//
//  InsetFactView.swift
//  Africa
//
//  Created by Ashwani Kumar on 09/01/23.
//

import SwiftUI

struct InsetFactView: View {
  let animal: AnimalModel
    var body: some View {
      GroupBox {
        TabView {
          ForEach(animal.fact, id: \.self) { fact in
            Text(fact)
          }
        }//: TABS
        .tabViewStyle(.page)
        .frame(minHeight: 148,idealHeight: 168, maxHeight: 180)
      }//: Group
    }
}

struct InsetFactView_Previews: PreviewProvider {
  static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    static var previews: some View {
      InsetFactView(animal: animals[0])
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
