//
//  Restaurant.swift
//  LittleLemon
//
//  Created by Igor Ramon Fernandes Diniz on 21/05/23.
//

import Foundation

class Restaurant: Hashable{
    
    var city:String
    var neighborhood:String
    var phoneNumber:String

    
    static func == (lhs: Restaurant, rhs: Restaurant) -> Bool {
        return lhs.city == rhs.city && lhs.neighborhood == rhs.neighborhood && lhs.phoneNumber == lhs.phoneNumber
    }
    
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(city)
        hasher.combine(neighborhood)
        hasher.combine(phoneNumber)
    }
    
    init(city: String, neighborhood: String, phoneNumber: String) {
        self.city = city
        self.neighborhood = neighborhood
        self.phoneNumber = phoneNumber
    }

}
