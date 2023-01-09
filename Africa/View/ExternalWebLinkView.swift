//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Ashwani Kumar on 10/01/23.
//

import SwiftUI

struct ExternalWebLinkView: View {
  let animal: AnimalModel
    var body: some View {
      GroupBox {
        HStack {
          Image(systemName: "globe")
          Text("Wikipedia")
          
          Spacer()
          
          Group {
            Image(systemName: "arrow.up.square")
            Link(animal.name, destination: URL(string: animal.link)!)
          }
        } //: HStack
      }//: BOX
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
  static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWebLinkView(animal: animals[0])
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
