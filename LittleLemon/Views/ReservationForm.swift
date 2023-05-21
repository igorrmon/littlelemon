//
//  ReservationForm.swift
//  LittleLemon
//
//  Created by Igor Ramon Fernandes Diniz on 21/05/23.
//

import SwiftUI

struct ReservationForm: View {
    
    var restaurant: Restaurant
    var body: some View {
        VStack {
            RestaurantView(restaurant: restaurant)
        }
    }
}

struct ReservationForm_Previews: PreviewProvider {
    static var previews: some View {
        let initialRestaurant = Restaurant(city: "Las Vegas", neighborhood: "Downtown", phoneNumber: "(702) 555-9898")
        ReservationForm(restaurant: initialRestaurant)
    }
}
