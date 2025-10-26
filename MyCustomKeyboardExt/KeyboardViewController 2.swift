//
//  KeyboardViewController.swift
//  CustomKeyboard
//
//  Created by Ilona on 10/26/25.
//

import UIKit
import SwiftUI


class KeyboardViewController: UIInputViewController {
    private var host: UIHostingController<KeyboardRootView>?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let rootView = KeyboardRootView(controller: self)
        let host = UIHostingController(rootView: rootView)
        addChild(host)
        view.addSubview(host.view)
        host.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            host.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            host.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            host.view.topAnchor.constraint(equalTo: view.topAnchor),
            host.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        host.didMove(toParent: self)
        self.host = host
    }
    
    
    // Утилита вставки текста
    func insertText(_ text: String) {
        textDocumentProxy.insertText(text)
    }
    
    
    // Пример: доступ к UIPasteboard (только при Full Access)
    func readClipboardAndInsert() {
        if UIPasteboard.general.hasStrings, let s = UIPasteboard.general.string {
            insertText(s)
        }
    }
}
