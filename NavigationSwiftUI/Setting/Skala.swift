//
//  Skala.swift
//  NavigationSwiftUI
//
//  Created by Юлия Филиппова on 06.09.2023.
//

import SwiftUI

struct Skala: View {
    
//    var toggled: Bool
    
    var body: some View {
        HStack{
            Image("Skala")
                .resizable()
                .scaledToFit()
                .frame(width: 150,height: 150)
                .cornerRadius(75)
                .shadow(radius: 16)
            Text("Переходи на темную сторону")
                .font(.system(size: 25))
                .fontWeight(.bold)
        }
    }
}

struct Skala_Previews: PreviewProvider {
    static var previews: some View {
//        Skala(toggled: true)
        Skala()
    }
}
