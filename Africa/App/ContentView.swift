//
//  ContentView.swift
//  Africa
//
//  Created by Ashwani Kumar on 25/12/22.
//

import SwiftUI

struct ContentView: View {
  let animals: [AnimalModel] = Bundle.main.decode("animals.json")

    var body: some View {
      NavigationView {
        List {
          CoverImageView()
            .frame(height: 300)
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
          
          ForEach(animals) { item in
            AnimationListItemView(animal: item)
          }
        }.navigationBarTitle("Africa", displayMode: .large)
      }//: Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
