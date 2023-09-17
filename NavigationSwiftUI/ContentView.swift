

import SwiftUI

struct ContentView: View {
    @AppStorage("titleOn") var titleOn: Bool = false
    //@State private var titleOn: Bool = false
    var body: some View {
        TabView {
            InfoView(titleOn: $titleOn)
                .tabItem {
                    Label("Table", systemImage: "tablecells")
                }
            HelloView()
                .tabItem{
                    Label("Hello World", systemImage: "hand.raised.fill")
                }
            SettingsView(titleOn: $titleOn)
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
