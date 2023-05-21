//
//  MainView.swift
//  LittleLemon
//
//  Created by Igor Ramon Fernandes Diniz on 20/05/23.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var model: Model
    
    var body: some View {
        VStack{
            TabView {
                LocationsView(model: _model).tag(0)
                    .tabItem{
                        Label("locations", systemImage: "fork.knife")
                    }
            }
        }
    
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()  .environmentObject(Model())
    }
}
