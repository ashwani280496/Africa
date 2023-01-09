//
//  VideoListView.swift
//  Africa
//
//  Created by Ashwani Kumar on 25/12/22.
//

import SwiftUI

struct VideoListView: View {
  @State var videos: [VideoModel] = Bundle.main.decode("videos.json")
  let hapticImpact = UIImpactFeedbackGenerator(style: .medium)

    var body: some View {
      NavigationView {
        List {
          ForEach(videos) { video in
            VideoListItemView(video: video)
              .padding(.vertical,8)
          }//: Loop
        }//: List
        .listStyle(.insetGrouped)
        .navigationTitle(Text("Videos"))
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
          ToolbarItem(placement: .navigationBarTrailing) {
            Button {
              videos.shuffle()
              hapticImpact.impactOccurred()
            } label: {
              Image(systemName: "arrow.2.squarepath")
            }

          }
        }
      }//: Navigation
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
