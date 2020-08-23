//
//  ContentView.swift
//  StateLesson
//
//  Created by Ingeniero Fernando on 23/08/20.
//  Copyright © 2020 Ingeniero Fernando. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var nombre = "Fernando"
    @State private var val1:Int = 10 // Esta podrá cambiar su valor
    @State private var esAmigo: Bool = true
    @State private var amigos = [Amigos]()
    
    private func agregarAmigos(){
        self.amigos.append(Amigos(name: "André", apellido: "Sánchez", imagen: "user1", amigo: true))
        self.amigos.append(Amigos(name: "David", apellido: "Pérez", imagen: "user2", amigo: true))
        self.amigos.append(Amigos(name: "Sebastián", apellido: "Vidal", imagen: "user3", amigo: true))
        self.amigos.append(Amigos(name: "Roberto", apellido: "Blanco", imagen: "user4", amigo: true))
        self.amigos.append(Amigos(name: "Alguien", apellido: "X", imagen: "user4", amigo: false))
    }
    
    var body: some View {
        VStack {
            Button(action:agregarAmigos){
                Text("Agregar Amigos")
            }
            List {
                Toggle(isOn: self.$esAmigo){
                    Text("Solo amigos")
                }
                ForEach(amigos.filter{$0.amigo == self.esAmigo}) { amigo in
                    HStack{
                        Image(amigo.imagen)
                            .resizable()
                            .frame(width: 50, height: 50)
                        VStack(alignment: .leading){
                            Text(amigo.name)
                                .font(.title)
                                .bold()
                            Text(amigo.apellido)
                                .font(.subheadline)
                        }
                        
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
