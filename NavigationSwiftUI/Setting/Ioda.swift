

import SwiftUI

struct Ioda: View {
//    var toggled: Bool
    
    var body: some View {
            Image("Ioda")
                .resizable()
                .scaledToFit()
//                .frame(width: 150,height: 150)
//                .cornerRadius(75)
                .shadow(radius: 16)
            
    }
}

struct Ioda_Previews: PreviewProvider {
    static var previews: some View {
        Ioda()
    }
}
