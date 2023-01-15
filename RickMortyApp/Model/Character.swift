//
//  Character.swift
//  RickMortyApp
//
//  Created by Marc Sogas Esteve on 14/1/23.
//

import Foundation
import SwiftUI


struct Character {
    
    var id: Int
    var name: String
    var type :String
    var avatar: Image
    var favorite: Bool
    
    }




/*struct CharacterList: Decodable {
    
    let results: [Character]
    }

struct Character: Decodable{
    
    let name: String
    let url: String
    
    var imageUrl: URL?{
        return URL(string:"")
        
    }*/
    
