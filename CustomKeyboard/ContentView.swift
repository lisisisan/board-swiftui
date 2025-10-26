import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 16) {
                Text("MyKeyboard — Host app")
                .font(.largeTitle)
                Text("Здесь можно показать инструкции, настройки синхронизации через App Group и toggle для обучения модели.")
                Spacer()
            }
            .padding()
            .navigationTitle("MyKeyboard")
        }
    }
}

