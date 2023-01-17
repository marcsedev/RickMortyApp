//
//  ListDetailView.swift
//  RickMortyApp
//
//  Created by Marc Sogas Esteve on 14/1/23.
//

import SwiftUI

struct ListDetailView: View {
    
    var character: Results
    //var favorite: Results
    
    var body: some View {
        
        VStack {
            AsyncImage(url: character.imageUrl) { image in
                image.resizable().frame(width: 300, height: 300)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(Color.black, lineWidth: 4 ))
                .shadow(color: Color.gray, radius: 5)
            } placeholder: {Image(systemName: "person.fill")
                    .resizable().frame(width: 300, height: 300)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(Color.black, lineWidth: 4 ))
                .shadow(color: Color.gray, radius: 5)
                
            }
            Text(character.name).font(.largeTitle)
                //Text("Name").font(.largeTitle)
            Text(character.species).font(.title)
            HStack{
                Text(character.status)
                if (character.status == "Alive") {
                Image(systemName: "circle.fill").foregroundColor(.green)
            }else if(character.status == "unknown") {
                Image(systemName: "circle.fill").foregroundColor(.orange)
            }else{
                 Image(systemName: "circle.fill").foregroundColor(.red)
            }            }
            //Text(character.type).font(.title)
            Spacer()
            }
        }
    }

            /*  character.avatar
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
*/
struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(
            character: Results.init(name: "Name", status: "Alive", species: "String", url: "url"))//, favorite: true))//Results.init(results: []))//character: Character(id: 1, name: "Rick", type: "Human", avatar: Image(systemName: "person.fill"), favorite: true), favorite: .constant(false))
    }
}
