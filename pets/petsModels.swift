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
        print("🐶 \(name) barks at the mailman")
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
    func protect() {
        print("🐱 \(name) extends its claws and scratches you.")
    }
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
    
    func attack() { print("🦓 \(species) Charges at you and bumps you with its head")}
    func wander() { print("🦓 \(species) Looks for some greens to eat")}
    func run()    {}
}

class Lion: WildAnimal{
    var id = UUID()
    var species: String
    var emoji: String = "🦁"

    init(species: String) {
        self.species = species
    }
    
    func attack() {print("🦁 \(species) Roars and charges at you!") }
    func wander() {print("🦁 \(species) Runs away to find easier prey")}
}
