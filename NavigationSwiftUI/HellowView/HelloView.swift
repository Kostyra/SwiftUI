

import SwiftUI

struct HelloView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(.system(size: 20, design: .serif))
                .foregroundColor(.cyan)
            Text("Description")
                .font(.system(size: 20, design: .monospaced))
                .bold()
                .padding(10)
                .foregroundColor(.green)
            VStack{
                Image("Casle")
                    .resizable()
                    .frame(width: 150,height: 150)
                    .cornerRadius(75)
                    .shadow(radius: 30)
            }
        }    }
}

struct HelloView_Previews: PreviewProvider {
    static var previews: some View {
        HelloView()
    }
}
