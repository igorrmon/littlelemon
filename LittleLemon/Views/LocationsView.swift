//
//  LocationsView.swift
//  LittleLemon
//
//  Created by Igor Ramon Fernandes Diniz on 20/05/23.
//

import SwiftUI



struct LocationsView: View {
    @EnvironmentObject var model:Model
    
    var body: some View {
        VStack {
            
            LittleLemonLogo()
                .padding(.top, 50)
            
            Text(!model.displayingReservationForm ? "Select a location": "Reservation Details")
                .padding([.leading, .trailing], 40)
                .padding([.top, .bottom], 8)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)
            
            NavigationView{
                List{
                    ForEach(model.restaurants,  id: \.self){
                        element in
                        NavigationLink(destination: ReservationForm(restaurant: element)
                            .onDisappear{
                                model.displayingReservationForm.toggle()
                            }
                            .onAppear{
                                model.displayingReservationForm.toggle()
                            }) {
                                RestaurantView(restaurant: element)
                            }
                    }
                }
                .background(.white)
                .scrollContentBackground(.hidden)
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
        }.padding()
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView().environmentObject(Model())
    }
}
