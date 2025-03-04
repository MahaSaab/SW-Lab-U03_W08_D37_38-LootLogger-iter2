//
//  Item.swift
//  LootLogger-MahaNasser
//
//  Created by Maha S on 14/11/2021.
//

import UIKit

class Item: Equatable {
  
  static func ==(lhs: Item, rhs: Item) -> Bool {
    return lhs.name == rhs.name
  }
  
  var name: String
  var valueInDollars: Int
  var serialNumber: String?
  var dateCreated: Date
  
  
  init(name: String, serialNumber: String?, valueInDollars: Int) {
    self.name = name
    self.valueInDollars = valueInDollars
    self.serialNumber = serialNumber
    self.dateCreated = Date()
  }
  
  
  convenience init(random: Bool = false) {
    if random {
      
      let adjectives = ["Big and Fluffy", "Old and Rusty", "Super Shiny"]
      let nouns = ["Cute Bear with brown heavy furr", "Spork with a big black knive", "MacBook air 13 inch Space Grey"]
      
      let randomAdjective = adjectives.randomElement()!
      let randomNoun = nouns.randomElement()!
      let randomName = "\(randomAdjective) \(randomNoun)"
      let randomValue = Int.random(in: 0..<100)
      let randomSerialNumber =
      UUID().uuidString.components(separatedBy: "-").first!
      self.init(name: randomName,
                serialNumber: randomSerialNumber, valueInDollars: randomValue)
    } else {
      self.init(name: "", serialNumber: nil, valueInDollars: 0)
    }
  }
}
