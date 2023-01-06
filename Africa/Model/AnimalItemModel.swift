//
//  AnimalItemModel.swift
//  Africa
//
//  Created by Ashwani Kumar on 25/12/22.
//

import Foundation

class AnimalModel: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  let description: String
  let link: String
  let image: String
  let gallery: [String]
  let fact: [String]
}
