//
//  CoverImageView.swift
//  Africa
//
//  Created by Ashwani Kumar on 25/12/22.
//

import SwiftUI

struct CoverImageView: View {
  let coverImage: [CoverImage] = Bundle.main.decode("covers.json")
    var body: some View {
      TabView {
        ForEach(coverImage) { item in
          Image(item.name)
          .resizable()
        .scaledToFit()
        }
      }//: TAB
      .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
        .previewLayout(.fixed(width: 400, height: 300))
    }
}
