
import SwiftUI

struct SettingsView: View {

    @AppStorage("colorScheme") var colorScheme: String = "light"
    
    @State private var linkOn = false
//    @State private var toggler = true
    
    @State private var sliderValue = 0.0
    @State private var isChanging = false
 
    
    var body: some View {
        Form {
            Section{
                Toggle("Light vs Dark", isOn: $linkOn.animation())
                    .onChange(of: linkOn) { newValue in
                        colorScheme = newValue ? "dark" : "light"
                    }
                if linkOn {
                    Skala()
                }
            }

            
            Section(header: Text("Регулировка цвета")) {
                Slider(value: $sliderValue, in: 0...100, step: 1) { changed in
                    isChanging = changed
                }
                Text("Значение слайдера: \(Int(sliderValue))")
            }
            ZStack {
                AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .indigo]), center: .center, angle: Angle(radians: sliderValue/10))
                
                Text("\(isChanging ? "Код честно скопирован" : "Фантазии не хватило")")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
            }
            Section {
                if linkOn == false {Ioda()}
            }
        }
        .preferredColorScheme(colorScheme == "dark" ? .dark : .light)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
