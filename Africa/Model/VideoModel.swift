//
//  VideoModel.swift
//  Africa
//
//  Created by Ashwani Kumar on 10/01/23.
//

import Foundation

struct VideoModel: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  
  var thumbnail: String {
    "video-\(id)"
  }
}
