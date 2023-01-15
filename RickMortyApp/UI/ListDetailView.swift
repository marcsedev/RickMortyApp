//
//  ListDetailView.swift
//  RickMortyApp
//
//  Created by Marc Sogas Esteve on 14/1/23.
//

import SwiftUI

struct ListDetailView: View {
    
    var character: Character
    @Binding var favorite: Bool

    
    var body: some View {
        
        VStack {
            character.avatar
                .resizable().frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle()
                    .stroke(Color.black, lineWidth: 4 ))
                .shadow(color: Color.gray, radius: 5)
            HStack{
                Text(character.name).font(.largeTitle)
                Button{
                    favorite.toggle()
                } label: {
                    if favorite{
                        Image(systemName: "star.fill").foregroundColor(.yellow)

                    }else{
                        Image(systemName: "star.fill").foregroundColor(.black)
                    }
                   
                    
                }
            }
            Text(character.type).font(.title)
            Spacer()
        }
        
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(character: Character(id: 1, name: "Rick", type: "Human", avatar: Image(systemName: "person.fill"), favorite: true), favorite: .constant(false))
    }
}
