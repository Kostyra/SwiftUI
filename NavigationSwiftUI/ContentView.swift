

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            InfoView()
                .tabItem {
                    Label("Table", systemImage: "tablecells")
                }
            HelloView()
                .tabItem{
                    Label("Hello World", systemImage: "hand.raised.fill")
                }
            SettingsView()
                .tabItem {
                    Label("Setting", systemImage: "slider.horizontal.3")
                }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
