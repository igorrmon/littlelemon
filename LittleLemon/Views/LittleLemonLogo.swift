//
//  LittleLemonLogo.swift
//  LittleLemon
//
//  Created by Igor Ramon Fernandes Diniz on 20/05/23.
//

import SwiftUI

struct LittleLemonLogo: View {
    var body: some View {
        HStack{
            Image("logo")
            Text("LITTLE LEMON")
                .bold()
                .font(.title2)
                .fontDesign(.serif)
                .foregroundColor(Color("#b8e994"))
        }
      
    }
}

struct LittleLemonLogo_Previews: PreviewProvider {
    static var previews: some View {
        LittleLemonLogo()
    }
}
