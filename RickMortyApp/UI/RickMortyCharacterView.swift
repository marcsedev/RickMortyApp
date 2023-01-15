//
//  RickMortyCharacterView.swift
//  RickMortyApp
//
//  Created by Marc Sogas Esteve on 14/1/23.
//

import SwiftUI

struct RickMortyCharacterView: View {
    var character: Character
    
    var body: some View {
        HStack{
            character.avatar
                .resizable()
                .frame(width: 40,
                       height: 40).padding(10)
            VStack(alignment: .leading) {                Text(character.name).font(.title)
                Text(character.type).font(.subheadline)
                
            }
            Spacer()
            if character.favorite{
                Image(systemName: "star.fill").foregroundColor(.yellow)
            }
        }
    }
}

struct RickMortyCharacterView_Previews: PreviewProvider {
    static var previews: some View {
        RickMortyCharacterView(character: Character(id: 1, name: "Rick", type: "Human", avatar: Image(systemName: "person.fill"), favorite: true))
    }
}
