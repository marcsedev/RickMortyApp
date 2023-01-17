//
//  Character.swift
//  RickMortyApp
//
//  Created by Marc Sogas Esteve on 14/1/23.
//

import Foundation

struct Character : Hashable, Decodable {
    let results: [Results]
    //var favorite: Bool
    
}

struct Results: Hashable, Decodable {
    
    var id: Int? {return Int(url.split(separator: "/").last?.description ?? "0")}
    let name: String
    let status: String
    let species: String
    //let type: String
    //let gender: String
    //let origin, location: Location
    //let image: String
    var imageUrl:  URL? { return URL(string: "https://rickandmortyapi.com/api/character/avatar/\(id ?? 0).jpeg")}
    //let episode: [String]
    let url: String
    //let created: String
}

//import SwiftUI

/*
struct Character {
    
    var id: Int
    var name: String
    var type :String
    var avatar: Image
    var favorite: Bool
    
    }
*/

/* enum CharacterViewModelState {
 case initial
 case loading
 case loaded(characters:Characters)
 case error(errorMessage:String)
     
 }
*/
 /*struct Characters : Decodable{
     //let info: Info
     let results: [Results]
     
     //var favorite: Bool
 }
*/
 /*struct Info : Codable{
     let count:Int//": 826,
     let pages:Int//": 42,
     let next:String//": "https://rickandmortyapi.com/api/character?page=2",
     let prev:String?//": null
 }*/

/* struct Results: Decodable {
//     let id: Int
     var id: Int? {
         return Int(url.split(separator: "/").last?.description ?? "0")
     }
     
     let name: String
//     let status: String
//     let species: String
//     let type: String
//     let gender: String
//     let origin, location: Location
//  let image: String
     var imageUrl:  URL? {
         return URL(string: "https://rickandmortyapi.com/api/character/avatar/\(id ?? 0).jpeg")
         //return URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(id ?? 0).png")
         
     }
//     let episode: [String]
     let url: String
//     let created: String

     
 }

/*
 struct Location:Codable {
     let name:String//": "Citadel of Ricks",
     let url:String//": "https://rickandmortyapi.com/api/location/3"
 }
*/






/*struct CharacterList: Decodable {
    
    let results: [Character]
    }

struct Character: Decodable{
    
    let name: String
    let url: String
    
    var imageUrl: URL?{
        return URL(string:"")
        
    }*/
    */
