//
//  PersonsList.swift
//  PersonsList
//
//  Created by Елизавета Шалдыбина on 24.10.2023.
//

import Foundation

struct Person {
    var name: String
    let surname: String
    let phone: String
    let email: String
}

extension Person {
    static func getPersonsList() -> [Person] {
        let dataStore = DataStore()
        
        let nameShuffled = dataStore.name.shuffled()
        let surnameShuffled = dataStore.surname.shuffled()
        let phoneShuffled = dataStore.phone.shuffled()
        let emailShuffled = dataStore.email.shuffled()
        
        var personsList = [Person]()
        
        for number in 1..<10 {
            let person = Person(name: nameShuffled[number],
                   surname: surnameShuffled[number],
                   phone: phoneShuffled[number],
                   email: emailShuffled[number])
            personsList.append(person)
        }
        
        return personsList
    }
}
