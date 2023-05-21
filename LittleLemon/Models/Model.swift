//
//  Model.swift
//  LittleLemon
//
//  Created by Igor Ramon Fernandes Diniz on 21/05/23.
//

import Foundation

class Model: ObservableObject {
    @Published var displayingReservationForm = false
    @Published var tabViewSelectIndex = 0
    @Published var restaurants: [Restaurant] = [
        Restaurant(city: "Natal", neighborhood: "Centro", phoneNumber: "(84) 9999-9999"),
        Restaurant(city: "Pau dos Ferros", neighborhood: "Centro", phoneNumber: "(84) 9999-9999")
    ]
    
}
