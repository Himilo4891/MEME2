//
//  Villain.swift
//  BondVillains
//
//  Created by Jason on 11/19/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Villain

struct Meme {
    
    // MARK: Properties
    
    let name: String
    let evilScheme: String
    let imageName: String
    
    static let NameKey = "NameKey"
    static let EvilSchemeKey = "EvilScheme"
    static let ImageNameKey = "ImageNameKey"
    
    // MARK: Initializer
    
    // Generate a Villain from a three entry dictionary
    
    init(dictionary: [String : String]) {
        
        self.name = dictionary[Meme.NameKey]!
        self.evilScheme = dictionary[Meme.EvilSchemeKey]!
        self.imageName = dictionary[Meme.ImageNameKey]!
    }
}

// MARK: - Villain (All Villians)

/**
 * This extension adds static variable allVillains. An array of Villain objects
 */

extension Meme {
    
    // Generate an array full of all of the villains in
    static var allVillains: [Meme] {
        
        var villainArray = [Meme]()
        
        for d in Meme.localVillainData() {
            villainArray.append(Meme(dictionary: d))
        }
        
        return villainArray
    }
    
    static func localVillainData() -> [[String : String]] {
        return [
            [Meme.NameKey : "Mr. Big", Meme.EvilSchemeKey : "Smuggle herion.",  Meme.ImageNameKey : "Big"],
            [Meme.NameKey : "Ernest Blofeld", Meme.EvilSchemeKey : "Many, many, schemes.",  Meme.ImageNameKey : "Blofeld"],
            [Meme.NameKey : "Sir Hugo Drax", Meme.EvilSchemeKey : "Nerve gass Earth, from the Moon.",  Meme.ImageNameKey : "Drax"],
            [Meme.NameKey : "Jaws", Meme.EvilSchemeKey : "Kill Bond with huge metal teeth.",  Meme.ImageNameKey : "Jaws"],
            [Meme.NameKey : "Rosa Klebb", Meme.EvilSchemeKey : "Humiliate MI6",  Meme.ImageNameKey : "Klebb"],
            [Meme.NameKey : "Emilio Largo", Meme.EvilSchemeKey : "Steal nuclear weapons", Meme.ImageNameKey : "EmilioLargo"],
            [Meme.NameKey : "Le Chiffre", Meme.EvilSchemeKey : "Beat bond at poker.",  Meme.ImageNameKey : "Lechiffre"],
            [Meme.NameKey : "Odd Job", Meme.EvilSchemeKey : "Kill Bond with razor hat.",  Meme.ImageNameKey : "OddJob"],
            [Meme.NameKey : "Francisco Scaramanga", Meme.EvilSchemeKey : "Kill Bond after assembling a golden gun.",  Meme.ImageNameKey : "Scaramanga"],
            [Meme.NameKey : "Raoul Silva", Meme.EvilSchemeKey : "Kill M.",  Meme.ImageNameKey : "Silva"],
            [Meme.NameKey : "Alec Trevelyan", Meme.EvilSchemeKey : "Nuke London, after killing Bond.",  Meme.ImageNameKey : "Trevelyan"],
            [Meme.NameKey : "Auric Goldfinger", Meme.EvilSchemeKey : "Nuke Fort Knox.",  Meme.ImageNameKey : "Goldfinger"],
            [Meme.NameKey : "Max Zorin", Meme.EvilSchemeKey : "Destroy Silicon Valley with an earthquake and flood.",  Meme.ImageNameKey : "Zorin"]
        ]
    }
}
