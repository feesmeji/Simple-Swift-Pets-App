//
//  pets.swift
//  pets
//
//  Created by Fernando Esteban Mejia on 4/11/26.
//

import SwiftUI

// Make the protocol class-bound so we can call methods on pets
protocol Tamable: Identifiable, AnyObject {
    var name: String { get set }
    var ownerName: String { get set }
    var emoji: String { get }
    
    func play()
    func protect()
}

protocol WildAnimal: Identifiable, AnyObject {
    var species: String { get set }
    var emoji: String { get }
    
    func attack()
    func wander()
}

// Dog class
class Dog: Tamable {
    var id = UUID()
    var name: String
    var ownerName: String
    var emoji: String = "🐶"
    
    init(name: String, ownerName: String) {
        self.name = name
        self.ownerName = ownerName
    }
    
    func play() {
        print("🐶 \(name) fetches the ball") //(name) means to insert the object's name string into the message.
    }
    
    func protect() { 
        print("🐶 \(name)")
    }
}

// Cat class
class Cat: Tamable {
    var id = UUID()
    var name: String
    var ownerName: String
    var emoji: String = "🐱"
    
    init(name: String, ownerName: String) {
        self.name = name
        self.ownerName = ownerName
    }
    
    func play() {
        print("🐱 \(name) knocks a cup off the table.")
    }
    func protect() { }
}

class Bear: WildAnimal{ //
    var id = UUID()
    var species: String
    var emoji: String = "🐻"

    init(species: String) {
        self.species = species
    }
    
    func attack() { print("🐻 \(species) Gives you a hug that's too tight.")}
    func wander() {print("🐻 \(species) Goes to look for some sockeye salmon") }
}

class Zebra: WildAnimal{ //
    var id = UUID()
    var species: String
    var emoji: String = "🦓"

    init(species: String) {
        self.species = species
    }
    
    func attack() { }
    func wander() { }
    func run()    {}
}

class Lion: WildAnimal{
    var id = UUID()
    var species: String
    var emoji: String = "🦁"

    init(species: String) {
        self.species = species
    }
    
    func attack() { }
    func wander() { }
}
