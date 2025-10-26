//
//  DictionaryLoader.swift
//  CustomKeyboard
//
//  Created by Ilona on 10/26/25.
//

import Foundation


enum DictionaryLoaderError: Error {
    case notFound
}


actor DictionaryLoader {
    static func loadSuggestions(for prefix: String) async -> [String] {
        // Имитация асинхронной работы (загрузка локального файла или remote)
        try? await Task.sleep(nanoseconds: 200_000_000) // 200ms
        // JSON или обращение к CoreData/ML model
        let sample = ["hello", "hi", "help", "house", "how"]
        if prefix.isEmpty { return Array(sample.prefix(3)) }
        return sample.filter { $0.hasPrefix(prefix.lowercased()) }
    }
}
