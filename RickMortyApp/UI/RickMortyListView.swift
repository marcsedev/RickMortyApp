//
//  RickMortyListView.swift
//  RickMortyApp
//
//  Created by Marc Sogas Esteve on 14/1/23.
//

import SwiftUI

//final class CharactersModelData: ObservableObject{
//
//
//    @Published var characters: [Results] = []
////
//        Character(id: 0, name: "Rick", type: "Human", avatar: Image(systemName: "person.fill"), favorite: true),
//        Character(id: 1, name: "Rack", type: "Human", avatar: Image(systemName: "person.fill"), favorite: false),
//        Character(id: 2, name: "Reck", type: "Human", avatar: Image(systemName: "person.fill"), favorite: false),
//        Character(id: 3, name: "Ruck", type: "Human", avatar: Image(systemName: "person.fill"), favorite: true)]
//}

struct RickMortyListView: View {
    
    //@EnvironmentObject var charactersModelData: CharactersModelData
        
    @State var characters: [Results] = []
    //let character: Results
    //var character: Results
    //var character: [Results] = []
    
 /*  private var filteredCharacters: [Results]{
        return characters.filter { item in
            return !showAlive || isAlive()
        }
    }
    
    func isAlive()->Bool{
        if (characters.status == "Alive"){
            return true
        }else{
           return false
        }
    }
   
     
    
    @State private var showAlive = false
    */

    var body: some View {
        VStack{
            
            /*Toggle(isOn: $showAlive) {
                Text("Mostrar Vivos")
            }.padding()*/
            NavigationView {
                List (characters, id: \.name) { character in
                    NavigationLink (destination:ListDetailView(character: character)){ //Character.init(results: []))){
                        RickMortyCharacterView(character: character)//, //favorite: $charactersModelData.characters //[character.id].favorite)) {
                        }
                    }
                    .onAppear(){
                        RickMortyApi().loadCharacter { result in
                            
                            switch result {
                            case .success(let characters):
                                self.characters = characters
                            case .failure(let error):
                                print(error)
                            }
                        }
                        
                    }.navigationTitle("Characters List")
            }
        }
      //.searchable(text: $searchText, prompt: "Busca un personaje" )
        
    }
   /* var searchResults: [Results] {
            if searchText.isEmpty {
                return characters
            } else {
                return List (characters, id: \.name, rowContent: Character)
                 //characters.filter {character in characters.contains(searchText)}
            }
        }*/
}

struct RickMortyListView_Previews: PreviewProvider {
    static var previews: some View {
        RickMortyListView()//.environmentObject(CharactersModelData())
    }
}
