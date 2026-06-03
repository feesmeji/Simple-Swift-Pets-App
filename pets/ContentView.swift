//
//  ContentView.swift
//  PetsDemo
//
//  Created by Fernando Esteban Mejia on 4/5/26.
//

import SwiftUI

// SwiftUI ContentView
struct ContentView: View {
    
    // Use let because these are class references
    let pets: [any Tamable] = [
        Dog(name: "Archer", ownerName: "Sean"),
        Dog(name: "Max", ownerName: "Sean"),
        Cat(name: "Garfield", ownerName: "Jim"),
        Cat(name: "Hobbs", ownerName: "Calvin")
    ]
    
    let wildanimals: [any WildAnimal] = [
        Bear(species: "Grizzly"),
        Zebra(species: "Mountain Zebra"),
        Lion(species: "African Lion")
    ]
    
    var body: some View {
        NavigationStack{
            List {
                //Pets Section
                Section("Cute Pets"){
                    ForEach(pets, id: \.id) {pet in HStack{
                        Text(pet.emoji)
                        Text(pet.name)
                        Spacer()
                        Text(pet.ownerName)
                        Button("Play"){
                            pet.play()
                        }
                        .buttonStyle(.borderedProminent)
                        .controlSize(.mini)
                    }
                    .padding(.vertical, 4)
                    }
                }
                Section("Wild Animals") {
                    ForEach(wildanimals, id: \.id) { animal in
                        HStack {
                            Text(animal.emoji)
                            Text(animal.species)
                            Spacer()
                            
                            Button("Attack") {
                                animal.attack()
                            }
                            .buttonStyle(.bordered)
                            .controlSize(.mini)
                            .tint(.red)
                            
                            Button("Wander"){
                                animal.wander()
                            }
                            .buttonStyle(.bordered)
                            .controlSize(.mini)
                        }
                        .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Animals")
            .listStyle(.insetGrouped)
        }
    }
}

// Canvas preview
#Preview {
    ContentView()
}
