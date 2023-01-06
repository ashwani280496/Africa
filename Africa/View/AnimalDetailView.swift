//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Ashwani Kumar on 25/12/22.
//

import SwiftUI

struct AnimalDetailView: View {
  let animal: AnimalModel
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
  static let animals: [AnimalModel] = Bundle.main.decode("animals.json")

    static var previews: some View {
      AnimalDetailView(animal: animals[0])
    }
}
