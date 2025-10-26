//
//  KeyboardRootView.swift
//  CustomKeyboard
//
//  Created by Ilona on 10/26/25.
//

import SwiftUI


struct KeyboardRootView: View {
    weak var controller: KeyboardViewController?
    @State private var suggestions: [String] = []
    @State private var input: String = ""
    
    
    var body: some View {
        VStack(spacing: 8) {
            // suggestion bar
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(suggestions, id: \ .self) { s in
                        Button(action: { controller?.insertText(s) }) {
                            Text(s)
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 8).stroke())
                        }
                    }
                }
                .padding(.horizontal)
            }
            // main keys (very minimal)
            HStack {
                Button("A") { controller?.insertText("A") }
                Button("B") { controller?.insertText("B") }
                Button("🔙") { controller?.textDocumentProxy.deleteBackward() }
                Button("📋") {
                    controller?.readClipboardAndInsert()
                }
            }
            .padding()
        }
        .background(Color(white: 0.95))
        .onAppear {
            Task {
                // асинхронная загрузка предложений
                let loaded = await DictionaryLoader.loadSuggestions(for: "")
                suggestions = loaded
            }
        }
    }
}
