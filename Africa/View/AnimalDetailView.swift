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
      ScrollView(.vertical,showsIndicators: false) {
        VStack(alignment: .center, spacing: 20) {
          //Hero Image
          Image(animal.image)
            .resizable()
            .scaledToFit()
          //TItle
          Text(animal.name)
            .font(.largeTitle)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .padding(.vertical, 8)
            .foregroundColor(.primary)
            .background {
              Color.accentColor
                .frame(height: 6)
                .offset(y: 24)
            }
          //HEadline
          Text(animal.headline)
            .font(.headline)
            .multilineTextAlignment(.leading)
            .foregroundColor(.accentColor)
            .padding(.horizontal)
          
          //gallery
          Group {
            HeadingView(image: "photo.on.rectangle.angled", title: "Wilderness in picture")
            
            InsetGalleryView(animal: animal)
          }.padding(.horizontal)
          
          //facts
          
          Group {
            HeadingView(image: "questionmark.circle", title: "Did you know?")
            InsetFactView(animal: animal)
          }.padding(.horizontal)
          
          //description
          Group{
            HeadingView(image: "info.circle", title: "All about \(animal.name)")
            
            Text(animal.description)
              .multilineTextAlignment(.leading)
              .layoutPriority(1)
          }.padding(.horizontal)
          
          //map
          Group {
            HeadingView(image: "map", title: "National Park")
            InsetMapView()
          }.padding(.horizontal)
          //link
          
          Group {
            HeadingView(image: "books.vertical", title: "Learn More")
            ExternalWebLinkView(animal: animal)
          }
          .padding(.horizontal)
        } //: VSTACK
        .navigationTitle(Text("Learn abount \(animal.name)"))
        .navigationBarTitleDisplayMode(.inline)
      } //: SCROLL
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
  static let animals: [AnimalModel] = Bundle.main.decode("animals.json")

    static var previews: some View {
      NavigationView {
        AnimalDetailView(animal: animals[0])
      }
    }
}
