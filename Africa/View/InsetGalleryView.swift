//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Ashwani Kumar on 06/01/23.
//

import SwiftUI

struct InsetGalleryView: View {
  
  let animal: AnimalModel
    var body: some View {
      ScrollView(.horizontal,showsIndicators: false) {
        HStack(alignment: .center, spacing: 15) {
          ForEach(animal.gallery,id: \.self) { item in
            Image(item)
              .resizable()
              .scaledToFit()
              .frame(height: 200)
            .cornerRadius(12)
          }//: LOOP
        }//HStack
      }//ScrollView
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
  static let animals: [AnimalModel] = Bundle.main.decode("animals.json")

    static var previews: some View {
      InsetGalleryView(animal: animals[0])
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
