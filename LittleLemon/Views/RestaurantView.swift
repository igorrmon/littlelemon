//
//  RestaurantView.swift
//  LittleLemon
//
//  Created by Igor Ramon Fernandes Diniz on 21/05/23.
//

import SwiftUI

struct RestaurantView: View {
    var restaurant: Restaurant
    
    var body: some View {
        VStack(alignment: .leading, spacing:3){
            Text(restaurant.city)
                .font(.title2)
            HStack {
                Text(restaurant.neighborhood)
                Text("–")
                Text(restaurant.phoneNumber)
            }
            .font(.caption)
            .foregroundColor(.gray)
        }
    }
}

struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        let initialRestaurant = Restaurant(city: "Las Vegas", neighborhood: "Downtown", phoneNumber: "(702) 555-9898")
        
        RestaurantView(restaurant: initialRestaurant)
        
    }
}
