//
//  HeadingView.swift
//  Africa
//
//  Created by Ashwani Kumar on 06/01/23.
//

import SwiftUI

struct HeadingView: View {
  let image: String
  let title: String
    var body: some View {
      HStack {
        Image(systemName: image)
          .foregroundColor(.accentColor)
          .imageScale(.large)
        Text(title)
          .font(.title3)
          .fontWeight(.bold)
      }
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
      HeadingView(image: "photo.on.rectangle.angled", title: "Wilderness in picture")
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
