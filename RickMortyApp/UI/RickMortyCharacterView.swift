//
//  RickMortyCharacterView.swift
//  RickMortyApp
//
//  Created by Marc Sogas Esteve on 14/1/23.
//

import SwiftUI

struct RickMortyCharacterView: View {
    
    let character: Results
    
    var body: some View {
        HStack{
//            character.avatar
//                .resizable()
//                .frame(width: 40,
//                       height: 40).padding(10)
//            VStack(alignment: .leading) {
                //Text(character.name).font(.title)
                //Text(character.type).font(.subheadline)
            
            AsyncImage(url: character.imageUrl) { image in
                image.resizable()
            } placeholder: {
                Image(systemName: "number")
                    .resizable()
                    .padding()
            }
            .aspectRatio(contentMode: .fit)
            .frame(width: 60)
            .background(Color.gray.opacity(0.1))
            .clipShape(Circle())
                
         /*       Text("#\(character.id?.description ?? "")")
                    .font(.title2)
                    .fontWeight(.light)
         */
                Text(character.name.capitalized)
                    .font(.title)
                    .fontWeight(.medium)

            Spacer()
//            if character.favorite{
//                Image(systemName: "star.fill").foregroundColor(.yellow)
//            }
        }
    }
}

struct RickMortyCharacterView_Previews: PreviewProvider {
    static var previews: some View {
        RickMortyCharacterView(character: Results(name: "Rick", url: "url"))
                                                  //id: 1, name: "Rick", type: "Human", avatar: Image(systemName: "person.fill")))//, favorite: true))
    }
}
