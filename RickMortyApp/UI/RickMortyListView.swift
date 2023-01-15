//
//  RickMortyListView.swift
//  RickMortyApp
//
//  Created by Marc Sogas Esteve on 14/1/23.
//

import SwiftUI

final class CharactersModelData: ObservableObject{
    
    
    @Published var characters = [
        
        Character(id: 0, name: "Rick", type: "Human", avatar: Image(systemName: "person.fill"), favorite: true),
        Character(id: 1, name: "Rack", type: "Human", avatar: Image(systemName: "person.fill"), favorite: false),
        Character(id: 2, name: "Reck", type: "Human", avatar: Image(systemName: "person.fill"), favorite: false),
        Character(id: 3, name: "Ruck", type: "Human", avatar: Image(systemName: "person.fill"), favorite: true)]
}

struct RickMortyListView: View {
    
    @EnvironmentObject var charactersModelData: CharactersModelData
        
    @State private var showFavorites = false
    
    private var filteredCharacters: [Character]{
        return charactersModelData.characters.filter { character in
            return !showFavorites || character.favorite
        }
    }
    
    var body: some View {
        NavigationView {
            VStack{
                Toggle(isOn: $showFavorites) {
                    Text("Mostrar Favoritos")
                }.padding()
           
                List (filteredCharacters, id: \.id) { character in
                    NavigationLink (destination: ListDetailView(character: character, favorite: $charactersModelData.characters [character.id].favorite)) {
                        RickMortyCharacterView(character: character)
                    }
                }
            }.navigationTitle("Characters List")
            
        }
        
     
    }
}

struct RickMortyListView_Previews: PreviewProvider {
    static var previews: some View {
        RickMortyListView().environmentObject(CharactersModelData())
    }
}
