//
//  AnimationListItemView.swift
//  Africa
//
//  Created by Ashwani Kumar on 25/12/22.
//

import SwiftUI

struct AnimationListItemView: View {
  let animal: AnimalModel
    var body: some View {
      HStack(alignment: .center, spacing: 16) {
        Image(animal.image)
          .resizable()
          .scaledToFill()
          .frame(width: 90, height: 90)
          .clipShape(
          RoundedRectangle(cornerRadius: 12)
          )
          
        VStack(alignment: .leading, spacing: 8) {
          Text(animal.name)
            .font(.title2)
            .fontWeight(.heavy)
            .foregroundColor(.accentColor)
          
          Text(animal.description)
            .font(.footnote)
            .multilineTextAlignment(.leading)
            .lineLimit(2)
            .padding(.trailing, 8)
        }
      }
    }
}

struct AnimationListItemView_Previews: PreviewProvider {
  static let animals: [AnimalModel] = Bundle.main.decode("animals.json")

    static var previews: some View {
        AnimationListItemView(animal: animals[0])
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
